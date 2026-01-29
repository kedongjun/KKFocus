import { LogUtil } from '@pura/harmony-utils'
import { BaseFocusDefinition } from 'api'
import { ClockData, EventData, FocusDataUtil, FocusPreferenceName } from '../utils/FocusDataUtil'
import { TimeUtil } from '../utils/TimeUtil'



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
  public tomatoNum: number = 4               // 番茄总数：第一次是从外部页面传进来
  public tomatoDuration: number = 30         // 每个番茄时长（秒）：第一次是从外部页面传进来
  public tomatoModel: number = 30            // 番茄类型：第一次是从外部页面传进来
  public isAutoRested: boolean = false       // 用户是否勾选了自动休息：第一次是从外部页面传进来
  public isStrict: boolean = false           // 用户是否勾选了严格专注：第一次是从外部页面传进来
  public title: string = ''                  // 用户是否勾选了严格专注：第一次是从外部页面传进来
  public restDuration: number = 0            // 单次休息时长：第一次是初始化里面赋值
  public startTimestamp: number = 0          // 番茄钟任务执行的开始时间：第一次是初始化里面赋值

  // ============ 状态数据 ============
  public currentTomato: number = 0          // 当前进行到第几个番茄（0-based）
  public currentTomatoSeconds: number = 0             // 当前番茄已用时间（秒）
  public useTime: number = 0                 // 总共使用的时间（秒）
  public isPaused: boolean = false           // 是否暂停
  public isTipRest: boolean = false          // 是否提示休息（没开启自动休息时候，展示提示休息组件）
  public isResting: boolean = false          // 是否休息中
  public currentRestSeconds: number = 0      // 当前休息的时长
  public currentRest: number = 0             // 当前是第几次休息
  public isDone: boolean = false             // 是否全部完成（展示延迟组件）

  // ============ 定时器管理 ============
  private timerId: number = -1
  private lastTimestamp: number = 0
  private segmentStartTime: number = 0  // 当前段的开始时间戳（用于精确计算）
  private readonly TICK_INTERVAL = 200  // 定时器间隔（毫秒）
  
  // ============ 回调函数 ============
  private onSegmentCompleteCallback?: (currentTomato: number, total: number) => void
  private onAllCompleteCallback?: () => void
  private onStateChangeCallback?: () => void  // 状态变化时通知UI更新


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
    // remark?: string;
  }
  
  /**
   * 设置段完成回调
   */
  public onSegmentComplete(callback: (currentTomato: number, total: number) => void) {
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
    this.currentTomatoSeconds = realElapsedTime
    
    // 检查是否完成当前段
    if (this.currentTomatoSeconds >= this.tomatoDuration) {
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
    this.currentTomato++
    this.currentTomatoSeconds = 0
    this.segmentStartTime = 0  // 重置段开始时间，等待下次start时重新设置
    
    LogUtil.debug(`TomatoClock: 完成第 ${this.currentTomato} 个番茄`)
    
    // 触发段完成回调（让Page层决定是否进入休息）
    this.onSegmentCompleteCallback?.(this.currentTomato, this.tomatoNum)
    
    // 关键修改：段完成后暂停，等待Page层控制
    // 如果进入休息，Page会调用resume()来继续下一个番茄
    this.isPaused = true
    this.lastTimestamp = Date.now()
    
    // 检查是否全部完成
    if (this.currentTomato >= this.tomatoNum) {
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
    this.segmentStartTime = Date.now() - this.currentTomatoSeconds * 1000
    
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
    
    this.currentTomato = 0
    this.currentTomatoSeconds = 0
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
   * 从状态恢复（用于从持久化数据恢复）
   */
  public restoreState(state: ClockData): void {
    this.tomatoNum = state.tomatoNum
    this.tomatoDuration = state.tomatoDuration
    this.currentTomato = state.currentTomato
    this.currentTomatoSeconds = state.currentTomatoSeconds
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
    if (realElapsedTime >= this.tomatoDuration) {
      LogUtil.debug(`TomatoClock: 校准发现应完成番茄，elapsed=${realElapsedTime}秒`)
      
      this.currentTomatoSeconds = realElapsedTime
      this.handleSegmentComplete()
      this.notifyStateChange()
      
      return true  // 触发了完成，需要继续检查
    }
    
    // 更新当前时间
    this.currentTomatoSeconds = realElapsedTime
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




  /**
   * 保存番茄钟事件数据快照（用于UI显示或持久化）
   * @type 事件类型
   * @content 事件内容
   * @focusMinute 本次事件的番茄时长
   * @clockTimestamp 事件时间（时间戳）
   */
  addFocusEvent(type: number, content: string, focusMinute: number, clockTimestamp?: number,) {
    LogUtil.debug('事件数据：addFocusEvent() type===' + type + '，content===' + content + '，focusMinute===' + focusMinute + '，clockTimestamp===' + clockTimestamp )
    let eventTime = clockTimestamp? clockTimestamp : Date.now()

    let event: BaseFocusDefinition.FocusRecordEventInputV2 = {
      eventTime:  TimeUtil.formatDateToStr(new Date(eventTime)),//转换成日期字符串格式
      eventType: type, //事件类型：1-暂停 2-继续 3-完成番茄钟 4-开始番茄钟 5-休息 6-延长 7-打开第三方应用
      focusMinute: Math.floor( focusMinute / 60),//转换成分钟
      content: content,
    }
    LogUtil.debug('事件数据：this.focusInput.eventList ====' + JSON.stringify(this.focusInput.eventList))


    // 如果最后一条内容只有“暂停：”，则删掉
    if (type === 1 && this.focusInput.eventList && this.focusInput.eventList.length > 0) {
      if (this.focusInput.eventList[this.focusInput.eventList.length -1].content === '暂停：') {
        this.focusInput.eventList.pop();
        LogUtil.debug('事件数据：pop 如果最后一条内容只有“暂停：”，则删掉')
      }
    }

    this.focusInput.eventList?.push(event)

    LogUtil.debug('事件数据：push ====' + JSON.stringify(event))
    LogUtil.debug('事件数据：this.focusInput.eventList ====' + JSON.stringify(this.focusInput.eventList))

    // 保存事件数据
    let eventData: EventData = {
      eventList:this.focusInput.eventList
    }

    LogUtil.debug('事件数据：data ====' + JSON.stringify(eventData))
    FocusDataUtil.saveEventData(FocusPreferenceName.Tomato, eventData)


    //更新 番茄钟数据快照
    this.saveClockData(eventTime)
  }


  /**
   * 初始化番茄钟数据快照（用于UI显示或持久化）
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

      LogUtil.debug('番茄钟：initClockData() 初始化时钟数据 clockData===' + JSON.stringify(clockData))
      FocusDataUtil.saveClockData(FocusPreferenceName.Tomato, clockData)
    } else {
      LogUtil.debug('番茄钟：saveClockData() 时钟数据已存在，不需要重复初始化' )
    }
  }

  /**
   * 保存番茄钟数据快照（用于UI显示或持久化）
   */
  saveClockData(eventTime:number) {
    let clockData: ClockData = FocusDataUtil.getClockData(FocusPreferenceName.Tomato)
    clockData.eventTimestamp = eventTime
    clockData.currentTomato = this.currentTomato
    clockData.isPaused = this.isPaused
    clockData.useTime = this.useTime
    clockData.currentTomatoSeconds = this.currentTomatoSeconds
    clockData.isTipRest = this.isTipRest
    clockData.isResting = this.isResting
    clockData.currentRestSeconds = this.currentRestSeconds
    clockData.currentRestSeconds = this.currentRest
    clockData.isDone = this.isDone

    LogUtil.debug('番茄钟：saveClockData() 保存时钟数据 clockData===' + JSON.stringify(clockData))
    FocusDataUtil.saveClockData(FocusPreferenceName.Tomato, clockData)
  }


  /**
   * 获取番茄钟数据快照（用于UI显示或持久化）
   */
  public getClockData(): ClockData {
    const clockData: ClockData = FocusDataUtil.getClockData(FocusPreferenceName.Tomato)
    return clockData
  }


}
