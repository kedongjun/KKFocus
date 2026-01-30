import { LogUtil } from '@pura/harmony-utils'

/**
 * 休息ViewModel - 负责休息倒计时逻辑
 * 
 * 职责:
 * - 管理休息倒计时状态
 * - 控制休息定时器
 * - 通知休息完成
 * 
 * @author kedongjun
 * @since 2025-01-27
 */
export class RestViewModel {
  // ============ 配置参数 ============
  public restTime: number = 300
  
  // ============ 状态数据 ============
  public elapsedTime: number = 0
  public isResting: boolean = false
  
  // ============ 定时器管理 ============
  private timerId: number = -1
  private lastTimestamp: number = 0
  private restStartTime: number = 0
  private readonly TICK_INTERVAL = 200
  
  // ============ 回调函数 ============
  private onRestCompleteCallback?: () => void
  private onStateChangeCallback?: () => void
  
  // 🆕 添加休息序号
  private currentRestIndex: number = 0
  
  public onRestComplete(callback: () => void) {
    this.onRestCompleteCallback = callback
  }
  
  public onStateChange(callback: () => void) {
    this.onStateChangeCallback = callback
  }
  
  private notifyStateChange() {
    this.onStateChangeCallback?.()
  }
  
  /**
   * 🆕 设置当前休息序号
   */
  public setRestIndex(index: number) {
    this.currentRestIndex = index
  }
  
  /**
   * 开始休息倒计时
   */
  public start(): void {
    if (this.timerId !== -1) {
      LogUtil.debug('RestClock: 已在运行,无法启动')
      return
    }
    
    LogUtil.debug('RestClock: 开始休息倒计时')
    this.isResting = true
    this.elapsedTime = 0
    this.lastTimestamp = Date.now()
    this.restStartTime = Date.now()
    
    this.timerId = setInterval(() => {
      this.tick()
    }, this.TICK_INTERVAL)
  }
  
  private tick(): void {
    if (!this.isResting) {
      this.lastTimestamp = Date.now()
      return
    }
    
    const now = Date.now()
    this.elapsedTime = (now - this.restStartTime) / 1000
    this.lastTimestamp = now
    
    if (this.elapsedTime >= this.restTime) {
      this.handleRestComplete()
    }
    
    this.notifyStateChange()
  }
  
  private handleRestComplete(): void {
    LogUtil.debug('RestClock: 休息完成')
    this.stop()
    this.isResting = false
    this.onRestCompleteCallback?.()
  }
  
  public skip(): void {
    LogUtil.debug('RestClock: 跳过休息')
    this.stop()
    this.isResting = false
    this.elapsedTime = 0
    this.restStartTime = 0
    this.onRestCompleteCallback?.()
  }
  
  public stop(): void {
    if (this.timerId !== -1) {
      clearInterval(this.timerId)
      this.timerId = -1
      LogUtil.debug('RestClock: 停止定时器')
    }
  }
  
  public reset(): void {
    this.stop()
    this.elapsedTime = 0
    this.isResting = false
    this.restStartTime = 0
    this.notifyStateChange()
  }
  
  /**
   * 🆕 从缓存恢复并继续运行（设置正确的开始时间）
   * @param elapsedSeconds 已经过的秒数
   */
  public restoreAndContinue(elapsedSeconds: number): void {
    LogUtil.debug(`RestClock: 恢复并继续，已用时${elapsedSeconds}秒`)
    
    // 设置当前已用时间
    this.elapsedTime = elapsedSeconds
    
    // 关键：设置休息开始时间 = 现在 - 已用时间
    this.restStartTime = Date.now() - elapsedSeconds * 1000
    
    // 标记为休息中
    this.isResting = true
    
    // 启动定时器
    this.start()
  }

  public checkAndSync(): boolean {
    if (this.timerId === -1 || !this.isResting) {
      return false
    }
    
    LogUtil.debug('RestClock: 亮屏校准检查')
    
    const now = Date.now()
    this.elapsedTime = (now - this.restStartTime) / 1000
    
    if (this.elapsedTime >= this.restTime) {
      LogUtil.debug(`RestClock: 校准发现应完成休息,elapsed=${this.elapsedTime}秒`)
      this.handleRestComplete()
      return true
    }
    
    this.notifyStateChange()
    return false
  }
  
  public destroy(): void {
    this.stop()
    this.onRestCompleteCallback = undefined
    this.onStateChangeCallback = undefined
  }
}
