import { LogUtil } from '@pura/harmony-utils'
import { BaseFocusDefinition } from 'api'
import { ClockData, EventData, FocusDataUtil, FocusPreferenceName } from '../utils/FocusDataUtil'
import { TimeUtil } from '../utils/TimeUtil'

/**
 * 番茄钟ViewModel - 负责所有业务逻辑
 * 
 * 职责:
 * - 管理倒计时状态(当前段、已用时间等)
 * - 控制定时器的启动、暂停、恢复
 * - 处理段完成、全部完成等事件
 * - 提供状态给UI组件
 * 
 * @author kedongjun
 * @since 2025-01-27
 */
export class TomatoClockViewModel {
  // ============ 配置参数 ============
  public tomatoNum: number = 4
  public tomatoDuration: number = 30
  public tomatoModel: number = 30
  public isAutoRested: boolean = false
  public isStrict: boolean = false
  public title: string = ''
  public restDuration: number = 0
  public startTimestamp: number = 0

  // ============ 状态数据 ============
  public currentTomato: number = 0
  public currentTomatoSeconds: number = 0
  public useTime: number = 0
  public isPaused: boolean = false
  public isTipRest: boolean = false
  public isResting: boolean = false  // 🆕 是否正在休息（用于恢复状态判断）
  public currentRestSeconds: number = 0
  public currentRest: number = 0
  public isDone: boolean = false
  public isExtension: boolean = false

  // ============ 定时器管理 ============
  private timerId: number = -1
  private lastTimestamp: number = 0
  private segmentStartTime: number = 0
  private readonly TICK_INTERVAL = 200
  
  // ============ 回调函数 ============
  private onSegmentCompleteCallback?: (currentTomato: number, total: number) => void
  private onAllCompleteCallback?: () => void
  private onStateChangeCallback?: () => void

  // ============ 提交给服务端的数据 ============
  private focusInput: BaseFocusDefinition.FocusRecordInputV2 = {
    endTime: TimeUtil.getCurrentTimeFormatted(),
    focusType: 3,
    fullTime: 0,
    startTime: TimeUtil.formatDateToStr(new Date(this.startTimestamp)),
    title: '番茄钟测试',
    useTime: Math.floor(this.currentTomatoSeconds / 60),
    focusNum: this.tomatoNum,
    eventList: [],
    musicName: '默认',
  }
  
  public onSegmentComplete(callback: (currentTomato: number, total: number) => void) {
    this.onSegmentCompleteCallback = callback
  }
  
  public onAllComplete(callback: () => void) {
    this.onAllCompleteCallback = callback
  }
  
  public onStateChange(callback: () => void) {
    this.onStateChangeCallback = callback
  }
  
  private notifyStateChange() {
    this.onStateChangeCallback?.()
  }
  
  /**
   * 开始倒计时
   */
  public start(): void {
    if (this.timerId !== -1 || this.isDone) {
      LogUtil.debug('番茄钟: 已在运行或已完成,无法启动')
      return
    }
    
    LogUtil.debug('番茄钟: 开始倒计时')
    this.isPaused = false
    this.lastTimestamp = Date.now()
    
    if (this.segmentStartTime === 0) {
      this.segmentStartTime = Date.now()
    }
    
    // 🆕 如果是第一个番茄,记录"开始第1个番茄"事件
    if (this.currentTomato === 0 && this.currentTomatoSeconds === 0) {
      this.addFocusEvent(4, `开始第${this.currentTomato + 1}个番茄`, 0)
    }
    
    this.timerId = setInterval(() => {
      this.tick()
    }, this.TICK_INTERVAL)
  }
  
  private tick(): void {
    const now = Date.now()
    
    if (this.isPaused || this.isDone) {
      this.lastTimestamp = now
      return
    }
    
    const realElapsedTime = (now - this.segmentStartTime) / 1000
    const deltaSeconds = (now - this.lastTimestamp) / 1000
    if (deltaSeconds > 0) {
      this.useTime += deltaSeconds
    }
    this.lastTimestamp = now
    this.currentTomatoSeconds = realElapsedTime
    
    if (this.currentTomatoSeconds >= this.tomatoDuration) {
      this.handleSegmentComplete()
    }
    
    this.notifyStateChange()
  }
  
  /**
   * 处理段完成
   */
  private handleSegmentComplete(): void {
    this.currentTomato++
    this.currentTomatoSeconds = 0
    this.segmentStartTime = 0
    
    LogUtil.debug(`番茄钟: 完成第 ${this.currentTomato} 个番茄`)
    
    // 🆕 记录"完成第N个番茄"事件
    this.addFocusEvent(3, `完成第${this.currentTomato}个番茄`, this.tomatoDuration)
    
    this.onSegmentCompleteCallback?.(this.currentTomato, this.tomatoNum)
    this.isPaused = true
    this.lastTimestamp = Date.now()
    
    if (this.currentTomato >= this.tomatoNum) {
      this.handleAllComplete()
    }
  }
  
  /**
   * 处理全部完成
   */
  private handleAllComplete(): void {
    this.isDone = true
    this.isExtension = true  // 🆕 进入延长阶段
    this.stop()
    
    LogUtil.debug('番茄钟: 全部番茄完成!')
    
    // 🆕 保存isDone和isExtension状态到缓存
    this.saveClockData(Date.now())
    
    this.onAllCompleteCallback?.()
  }
  
  public pause(): void {
    if (this.isPaused || this.isDone) return
    
    LogUtil.debug('番茄钟: 暂停')
    this.isPaused = true
    this.lastTimestamp = Date.now()
    
    // 🆕 记录"暂停"事件
    this.addFocusEvent(1, '暂停:', this.currentTomatoSeconds)
    
    this.notifyStateChange()
  }
  
  public resume(): void {
    if (!this.isPaused || this.isDone) return
    
    LogUtil.debug('番茄钟: 恢复')
    this.isPaused = false
    this.lastTimestamp = Date.now()
    this.segmentStartTime = Date.now() - this.currentTomatoSeconds * 1000
    
    // 🆕 记录"继续"事件
    this.addFocusEvent(2, '继续', 0)
    
    if (this.timerId === -1) {
      this.start()
    }
    
    this.notifyStateChange()
  }
  
  public togglePause(): void {
    if (this.isPaused) {
      this.resume()
    } else {
      this.pause()
    }
  }
  
  public stop(): void {
    if (this.timerId !== -1) {
      clearInterval(this.timerId)
      this.timerId = -1
      LogUtil.debug('番茄钟: 停止定时器')
    }
  }
  
  public reset(): void {
    LogUtil.debug('番茄钟: 重置')
    this.stop()
    
    this.currentTomato = 0
    this.currentTomatoSeconds = 0
    this.useTime = 0
    this.isDone = false
    this.isPaused = false
    this.isExtension = false
    this.segmentStartTime = 0
    
    this.notifyStateChange()
  }
  
  /**
   * 延长番茄数量
   */
  public extend(count: number = 1): void {
    if (count <= 0) return
    
    LogUtil.debug(`番茄钟: 延长 ${count} 个番茄`)
    this.tomatoNum += count
    this.isDone = false
    this.isExtension = false  // 🆕 退出延长阶段
    
    // 🆕 记录"延长"事件
    this.addFocusEvent(6, `延长${count}个番茄`, 0)
    
    // 🔧 修复：保存 tomatoNum 到缓存
    let clockData = FocusDataUtil.getClockData(FocusPreferenceName.Tomato)
    clockData.tomatoNum = this.tomatoNum
    clockData.isDone = false
    clockData.isExtension = false
    FocusDataUtil.saveClockData(FocusPreferenceName.Tomato, clockData)
    
    if (this.isPaused) {
      // 🆕 记录"开始新番茄"事件
      this.addFocusEvent(4, `开始第${this.currentTomato + 1}个番茄`, 0)
      this.resume()
    }
    
    this.notifyStateChange()
  }

  /**
   * 🆕 完成任务(返回首页前调用)
   */
  public finishTask(): void {
    LogUtil.debug('番茄钟: 完成任务')
    this.stop()
    
    // 清空缓存数据
    FocusDataUtil.clearData(FocusPreferenceName.Tomato)
  }

  /**
   * 🆕 从缓存恢复并继续运行（设置正确的开始时间）
   * @param elapsedSeconds 已经过的秒数
   */
  public restoreAndContinue(elapsedSeconds: number): void {
    LogUtil.debug(`番茄钟: 恢复并继续，已用时${elapsedSeconds}秒`)
    
    // 设置当前已用时间
    this.currentTomatoSeconds = elapsedSeconds
    
    // 关键：设置段开始时间 = 现在 - 已用时间
    this.segmentStartTime = Date.now() - elapsedSeconds * 1000
    
    // 启动定时器
    this.start()
  }

  public restoreState(state: ClockData): void {
    this.tomatoNum = state.tomatoNum
    this.tomatoDuration = state.tomatoDuration
    this.currentTomato = state.currentTomato
    this.currentTomatoSeconds = state.currentTomatoSeconds
    this.useTime = state.useTime
    this.isPaused = state.isPaused
    this.isDone = state.isDone
    this.isExtension = state.isExtension
    
    this.notifyStateChange()
  }
  
  /**
   * 检查并同步状态(用于亮屏后校准)
   */
  public checkAndSync(): boolean {
    if (this.timerId === -1 || this.isDone || this.isPaused) {
      return false
    }
    
    LogUtil.debug('番茄钟: 亮屏校准检查')
    
    const now = Date.now()
    const realElapsedTime = (now - this.segmentStartTime) / 1000
    
    if (realElapsedTime >= this.tomatoDuration) {
      LogUtil.debug(`番茄钟: 校准发现应完成番茄,elapsed=${realElapsedTime}秒`)
      
      this.currentTomatoSeconds = realElapsedTime
      this.handleSegmentComplete()
      this.notifyStateChange()
      
      return true
    }
    
    this.currentTomatoSeconds = realElapsedTime
    this.notifyStateChange()
    
    return false
  }
  
  public destroy(): void {
    this.stop()
    this.onSegmentCompleteCallback = undefined
    this.onAllCompleteCallback = undefined
    this.onStateChangeCallback = undefined
  }

  /**
   * 保存番茄钟事件数据快照
   */
  addFocusEvent(type: number, content: string, focusMinute: number, clockTimestamp?: number) {
    LogUtil.debug('番茄钟 事件数据:addFocusEvent() type===' + type + ',content===' + content + ',focusMinute===' + focusMinute + ',clockTimestamp===' + clockTimestamp )
    let eventTime = clockTimestamp ? clockTimestamp : Date.now()

    let event: BaseFocusDefinition.FocusRecordEventInputV2 = {
      eventTime: TimeUtil.formatDateToStr(new Date(eventTime)),
      eventType: type,//事件类型：1-暂停 2-继续 3-完成番茄钟 4-开始番茄钟 5-休息 6-延长 7-打开第三方应用 8-休息完成
      focusMinute: Math.floor(focusMinute / 60),
      content: content,
    }
    
    LogUtil.debug('番茄钟 事件数据:this.focusInput.eventList ====' + JSON.stringify(this.focusInput.eventList))

    if (type === 1 && this.focusInput.eventList && this.focusInput.eventList.length > 0) {
      if (this.focusInput.eventList[this.focusInput.eventList.length -1].content === '暂停:') {
        this.focusInput.eventList.pop();
        LogUtil.debug('番茄钟 事件数据:pop 如果最后一条内容只有"暂停:",则删掉')
      }
    }

    this.focusInput.eventList?.push(event)

    LogUtil.debug('番茄钟 事件数据:push ====' + JSON.stringify(event))
    LogUtil.debug('番茄钟 事件数据:this.focusInput.eventList ====' + JSON.stringify(this.focusInput.eventList))

    let eventData: EventData = {
      eventList: this.focusInput.eventList
    }

    LogUtil.debug('番茄钟 事件数据:data ====' + JSON.stringify(eventData))
    FocusDataUtil.saveEventData(FocusPreferenceName.Tomato, eventData)

    this.saveClockData(eventTime)
  }

  /**
   * 初始化番茄钟数据快照
   */
  initClockData() {
    let clockData: ClockData = FocusDataUtil.getClockData(FocusPreferenceName.Tomato)
    if (clockData.startTimestamp === 0) {
      clockData.startTimestamp = Date.now()
      clockData.tomatoNum = this.tomatoNum
      clockData.tomatoDuration = this.tomatoDuration
      clockData.tomatoModel = this.tomatoModel
      clockData.isAutoRested = this.isAutoRested
      clockData.isStrict = this.isStrict
      clockData.title = this.title
      clockData.restDuration = this.restDuration

      LogUtil.debug('番茄钟:initClockData() 初始化时钟数据 clockData===' + JSON.stringify(clockData))
      FocusDataUtil.saveClockData(FocusPreferenceName.Tomato, clockData)
    } else {
      LogUtil.debug('番茄钟:saveClockData() 时钟数据已存在,不需要重复初始化' )
    }
  }

  /**
   * 保存番茄钟数据快照
   */
  saveClockData(eventTime: number) {
    let clockData: ClockData = FocusDataUtil.getClockData(FocusPreferenceName.Tomato)
    clockData.eventTimestamp = eventTime
    clockData.currentTomato = this.currentTomato
    clockData.isPaused = this.isPaused
    clockData.useTime = this.useTime
    clockData.currentTomatoSeconds = this.currentTomatoSeconds
    clockData.isTipRest = this.isTipRest
    clockData.isResting = this.isResting  // 保存休息状态
    clockData.currentRestSeconds = this.currentRestSeconds
    clockData.currentRest = this.currentRest
    clockData.isDone = this.isDone
    clockData.isExtension = this.isExtension

    LogUtil.debug('番茄钟:saveClockData() 保存时钟数据 clockData===' + JSON.stringify(clockData))
    FocusDataUtil.saveClockData(FocusPreferenceName.Tomato, clockData)
  }

  public getClockData(): ClockData {
    const clockData: ClockData = FocusDataUtil.getClockData(FocusPreferenceName.Tomato)
    return clockData
  }
}
