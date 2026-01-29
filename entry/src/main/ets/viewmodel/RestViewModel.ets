import { LogUtil } from '@pura/harmony-utils'

/**
 * 休息ViewModel - 负责休息倒计时逻辑
 * 
 * 职责：
 * - 管理休息倒计时状态
 * - 控制休息定时器
 * - 通知休息完成
 * 
 * @author kedongjun
 * @since 2025-01-27
 */
export class RestViewModel {
  // ============ 配置参数 ============
  public restTime: number = 300     // 休息时长（秒），默认5分钟
  
  // ============ 状态数据 ============
  public elapsedTime: number = 0    // 已休息时间（秒）
  public isResting: boolean = false // 是否正在休息
  
  // ============ 定时器管理 ============
  private timerId: number = -1
  private lastTimestamp: number = 0
  private restStartTime: number = 0  // 休息开始的绝对时间戳
  private readonly TICK_INTERVAL = 200  // 定时器间隔（毫秒）
  
  // ============ 回调函数 ============
  private onRestCompleteCallback?: () => void
  private onStateChangeCallback?: () => void
  
  /**
   * 设置休息完成回调
   */
  public onRestComplete(callback: () => void) {
    this.onRestCompleteCallback = callback
  }
  
  /**
   * 设置状态变化回调
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
   * 开始休息倒计时
   */
  public start(): void {
    if (this.timerId !== -1) {
      LogUtil.debug('RestClock: 已在运行，无法启动')
      return
    }
    
    LogUtil.debug('RestClock: 开始休息倒计时')
    this.isResting = true
    this.elapsedTime = 0
    this.lastTimestamp = Date.now()
    this.restStartTime = Date.now()  // 记录休息开始的绝对时间
    
    this.timerId = setInterval(() => {
      this.tick()
    }, this.TICK_INTERVAL)
  }
  
  /**
   * 定时器tick（基于绝对时间戳）
   */
  private tick(): void {
    if (!this.isResting) {
      this.lastTimestamp = Date.now()
      return
    }
    
    const now = Date.now()
    
    // 关键：基于绝对时间戳计算已休息时间
    this.elapsedTime = (now - this.restStartTime) / 1000
    this.lastTimestamp = now
    
    // 检查是否休息完成
    if (this.elapsedTime >= this.restTime) {
      this.handleRestComplete()
    }
    
    this.notifyStateChange()
  }
  
  /**
   * 处理休息完成
   */
  private handleRestComplete(): void {
    LogUtil.debug('RestClock: 休息完成')
    this.stop()
    this.isResting = false
    this.onRestCompleteCallback?.()
  }
  
  /**
   * 跳过休息
   */
  public skip(): void {
    LogUtil.debug('RestClock: 跳过休息')
    this.stop()
    this.isResting = false
    this.elapsedTime = 0
    this.restStartTime = 0  // 重置开始时间
    this.onRestCompleteCallback?.()
  }
  
  /**
   * 停止定时器
   */
  public stop(): void {
    if (this.timerId !== -1) {
      clearInterval(this.timerId)
      this.timerId = -1
      LogUtil.debug('RestClock: 停止定时器')
    }
  }
  
  /**
   * 重置状态
   */
  public reset(): void {
    this.stop()
    this.elapsedTime = 0
    this.isResting = false
    this.restStartTime = 0  // 重置开始时间
    this.notifyStateChange()
  }
  
  /**
   * 检查并同步状态（用于亮屏后校准）
   * 
   * @returns 是否触发了完成事件（需要继续检查下一个阶段）
   */
  public checkAndSync(): boolean {
    if (this.timerId === -1 || !this.isResting) {
      return false
    }
    
    LogUtil.debug('RestClock: 亮屏校准检查')
    
    const now = Date.now()
    this.elapsedTime = (now - this.restStartTime) / 1000
    
    // 检查是否应该完成
    if (this.elapsedTime >= this.restTime) {
      LogUtil.debug(`RestClock: 校准发现应完成休息，elapsed=${this.elapsedTime}秒`)
      this.handleRestComplete()
      return true  // 触发了完成，需要继续检查
    }
    
    this.notifyStateChange()
    return false  // 没有完成，不需要继续检查
  }
  
  /**
   * 销毁（清理资源）
   */
  public destroy(): void {
    this.stop()
    this.onRestCompleteCallback = undefined
    this.onStateChangeCallback = undefined
  }
}
