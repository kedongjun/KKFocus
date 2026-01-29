import { LogUtil } from '@pura/harmony-utils'

/**
 * 番茄钟状态数据类
 */
export class TomatoClockState {
  tomatoNum: number = 4
  segmentTime: number = 30
  currentSegment: number = 0
  elapsedTime: number = 0
  useTime: number = 0
  isPaused: boolean = false
  isDone: boolean = false
}

/**
 * 番茄钟ViewModel - 负责所有业务逻辑
 * 
 * 职责：
 * - 管理倒计时状态（当前段、已用时间等）
 * - 控制定时器的启动、暂停、恢复
 * - 处理段完成、全部完成等事件
 * - 提供状态给UI组件
 * 
 * @author kedongjun
 * @since 2025-01-27
 */
export class TomatoClockViewModel {
  // ============ 配置参数 ============
  public tomatoNum: number = 4          // 番茄总数
  public segmentTime: number = 30       // 每个番茄时长（秒）
  
  // ============ 状态数据 ============
  public currentSegment: number = 0     // 当前进行到第几个番茄（0-based）
  public elapsedTime: number = 0        // 当前番茄已用时间（秒）
  public useTime: number = 0            // 总共使用的时间（秒）
  public isPaused: boolean = false      // 是否暂停
  public isDone: boolean = false        // 是否全部完成
  
  // ============ 定时器管理 ============
  private timerId: number = -1
  private lastTimestamp: number = 0
  private segmentStartTime: number = 0  // 当前段的开始时间戳（用于精确计算）
  private readonly TICK_INTERVAL = 200  // 定时器间隔（毫秒）
  
  // ============ 回调函数 ============
  private onSegmentCompleteCallback?: (currentSegment: number, total: number) => void
  private onAllCompleteCallback?: () => void
  private onStateChangeCallback?: () => void  // 状态变化时通知UI更新
  
  /**
   * 设置段完成回调
   */
  public onSegmentComplete(callback: (currentSegment: number, total: number) => void) {
    this.onSegmentCompleteCallback = callback
  }
  
  /**
   * 设置全部完成回调
   */
  public onAllComplete(callback: () => void) {
    this.onAllCompleteCallback = callback
  }
  
  /**
   * 设置状态变化回调（用于通知UI更新）
   */
  public onStateChange(callback: () => void) {
    this.onStateChangeCallback = callback
  }
  
  /**
   * 通知状态变化
   */
  private notifyStateChange() {
    this.onStateChangeCallback?.()
  }
  
  /**
   * 开始倒计时
   */
  public start(): void {
    if (this.timerId !== -1 || this.isDone) {
      LogUtil.debug('TomatoClock: 已在运行或已完成，无法启动')
      return
    }
    
    LogUtil.debug('TomatoClock: 开始倒计时')
    this.isPaused = false
    this.lastTimestamp = Date.now()
    
    // 记录当前段的开始时间（绝对时间戳）
    if (this.segmentStartTime === 0) {
      this.segmentStartTime = Date.now()
    }
    
    this.timerId = setInterval(() => {
      this.tick()
    }, this.TICK_INTERVAL)
  }
  
  /**
   * 定时器tick - 核心倒计时逻辑（基于绝对时间戳）
   */
  private tick(): void {
    const now = Date.now()
    
    // 如果暂停或完成，只更新时间戳
    if (this.isPaused || this.isDone) {
      this.lastTimestamp = now
      return
    }
    
    // 关键：基于绝对时间戳计算当前段的已用时间
    const realElapsedTime = (now - this.segmentStartTime) / 1000
    
    // 计算总用时增量（用于显示）
    const deltaSeconds = (now - this.lastTimestamp) / 1000
    if (deltaSeconds > 0) {
      this.useTime += deltaSeconds
    }
    this.lastTimestamp = now
    
    // 更新当前段已用时间
    this.elapsedTime = realElapsedTime
    
    // 检查是否完成当前段
    if (this.elapsedTime >= this.segmentTime) {
      this.handleSegmentComplete()
      
      // 关键：如果熄屏时间过长，可能连续完成多个段
      // 但由于段完成后会自动暂停，所以不会连续触发
      // 这是设计预期：每完成一个番茄就暂停，进入休息
    }
    
    // 通知UI更新
    this.notifyStateChange()
  }
  
  /**
   * 处理段完成
   */
  private handleSegmentComplete(): void {
    this.currentSegment++
    this.elapsedTime = 0
    this.segmentStartTime = 0  // 重置段开始时间，等待下次start时重新设置
    
    LogUtil.debug(`TomatoClock: 完成第 ${this.currentSegment} 个番茄`)
    
    // 触发段完成回调（让Page层决定是否进入休息）
    this.onSegmentCompleteCallback?.(this.currentSegment, this.tomatoNum)
    
    // 关键修改：段完成后暂停，等待Page层控制
    // 如果进入休息，Page会调用resume()来继续下一个番茄
    this.isPaused = true
    this.lastTimestamp = Date.now()
    
    // 检查是否全部完成
    if (this.currentSegment >= this.tomatoNum) {
      this.handleAllComplete()
    }
  }
  
  /**
   * 处理全部完成
   */
  private handleAllComplete(): void {
    this.isDone = true
    this.stop()
    
    LogUtil.debug('TomatoClock: 全部番茄完成！')
    this.onAllCompleteCallback?.()
  }
  
  /**
   * 暂停倒计时
   */
  public pause(): void {
    if (this.isPaused || this.isDone) return
    
    LogUtil.debug('TomatoClock: 暂停')
    this.isPaused = true
    this.lastTimestamp = Date.now()
    this.notifyStateChange()
  }
  
  /**
   * 恢复倒计时
   */
  public resume(): void {
    if (!this.isPaused || this.isDone) return
    
    LogUtil.debug('TomatoClock: 恢复')
    this.isPaused = false
    this.lastTimestamp = Date.now()
    
    // 重新设置当前段的开始时间（减去已用时间）
    this.segmentStartTime = Date.now() - this.elapsedTime * 1000
    
    // 如果定时器被停止过，需要重新启动
    if (this.timerId === -1) {
      this.start()
    }
    
    this.notifyStateChange()
  }
  
  /**
   * 切换暂停/恢复
   */
  public togglePause(): void {
    if (this.isPaused) {
      this.resume()
    } else {
      this.pause()
    }
  }
  
  /**
   * 停止定时器
   */
  public stop(): void {
    if (this.timerId !== -1) {
      clearInterval(this.timerId)
      this.timerId = -1
      LogUtil.debug('TomatoClock: 停止定时器')
    }
  }
  
  /**
   * 重置倒计时
   */
  public reset(): void {
    LogUtil.debug('TomatoClock: 重置')
    this.stop()
    
    this.currentSegment = 0
    this.elapsedTime = 0
    this.useTime = 0
    this.isDone = false
    this.isPaused = false
    this.segmentStartTime = 0  // 重置段开始时间
    
    this.notifyStateChange()
  }
  
  /**
   * 延长番茄数量
   */
  public extend(count: number = 1): void {
    if (count <= 0) return
    
    LogUtil.debug(`TomatoClock: 延长 ${count} 个番茄`)
    this.tomatoNum += count
    this.isDone = false
    
    // 如果当前是暂停状态，可以选择自动恢复
    if (this.isPaused) {
      this.resume()
    }
    
    this.notifyStateChange()
  }
  
  /**
   * 获取当前状态快照（用于UI显示或持久化）
   */
  public getState(): TomatoClockState {
    const state = new TomatoClockState()
    state.tomatoNum = this.tomatoNum
    state.segmentTime = this.segmentTime
    state.currentSegment = this.currentSegment
    state.elapsedTime = this.elapsedTime
    state.useTime = this.useTime
    state.isPaused = this.isPaused
    state.isDone = this.isDone
    return state
  }
  
  /**
   * 从状态恢复（用于从持久化数据恢复）
   */
  public restoreState(state: TomatoClockState): void {
    this.tomatoNum = state.tomatoNum
    this.segmentTime = state.segmentTime
    this.currentSegment = state.currentSegment
    this.elapsedTime = state.elapsedTime
    this.useTime = state.useTime
    this.isPaused = state.isPaused
    this.isDone = state.isDone
    
    this.notifyStateChange()
  }
  
  /**
   * 检查并同步状态（用于亮屏后校准）
   * 
   * @returns 是否触发了完成事件（需要继续检查下一个阶段）
   */
  public checkAndSync(): boolean {
    if (this.timerId === -1 || this.isDone || this.isPaused) {
      return false
    }
    
    LogUtil.debug('TomatoClock: 亮屏校准检查')
    
    const now = Date.now()
    const realElapsedTime = (now - this.segmentStartTime) / 1000
    
    // 检查是否应该完成当前番茄
    if (realElapsedTime >= this.segmentTime) {
      LogUtil.debug(`TomatoClock: 校准发现应完成番茄，elapsed=${realElapsedTime}秒`)
      
      this.elapsedTime = realElapsedTime
      this.handleSegmentComplete()
      this.notifyStateChange()
      
      return true  // 触发了完成，需要继续检查
    }
    
    // 更新当前时间
    this.elapsedTime = realElapsedTime
    this.notifyStateChange()
    
    return false  // 没有完成，不需要继续检查
  }
  
  /**
   * 销毁（清理资源）
   */
  public destroy(): void {
    this.stop()
    this.onSegmentCompleteCallback = undefined
    this.onAllCompleteCallback = undefined
    this.onStateChangeCallback = undefined
  }
}
