import { LogUtil } from '@pura/harmony-utils'
import promptAction from '@ohos.promptAction'
import { TomatoClockViewModel } from '../viewmodel/TomatoClockViewModel'
import { RestViewModel } from '../viewmodel/RestViewModel'
import { TomatoClock } from '../view/TomatoClock'
import { RestClock } from '../view/RestClock'
import { ClockData, FocusDataUtil, FocusPreferenceName } from '../utils/FocusDataUtil'

// 定义参数类型
export interface RouterParams {
  tomatoNum: number,
  tomatoDuration: number,
  tomatoModel: number,
  isAutoRested: boolean,
  isStrict: boolean,
  title: string,
  restDuration: number,
}

/**
 * 番茄钟页面 - 完整示例(使用SVGA扩散圆环动画)
 * 
 * @author kedongjun
 * @since 2025-01-27
 */
@Entry
@Component
struct TomatoClockPage {
  // ============ ViewModel ============
  private tomatoViewModel: TomatoClockViewModel = new TomatoClockViewModel()
  private restViewModel: RestViewModel = new RestViewModel()

  // ============ 番茄钟状态 ============
  @State tomatoNum: number = this.tomatoViewModel.tomatoNum
  @State currentTomato: number = this.tomatoViewModel.currentTomato
  @State currentTomatoSeconds: number = this.tomatoViewModel.currentTomatoSeconds
  @State tomatoDuration: number = this.tomatoViewModel.tomatoDuration
  @State isPaused: boolean = this.tomatoViewModel.isPaused
  @State isTipRest: boolean = this.tomatoViewModel.isTipRest
  @State isDone: boolean = this.tomatoViewModel.isDone
  @State useTime: number = this.tomatoViewModel.useTime
  @State restDuration: number = this.tomatoViewModel.restDuration
  @State currentRest: number = this.tomatoViewModel.currentRest
  @State currentRestSeconds: number = this.tomatoViewModel.currentRestSeconds
  @State isResting: boolean = this.tomatoViewModel.isResting

  // 🆕 添加初始化标志
  private isFirstEnter: boolean = true

  // 🆕 添加 aboutToAppear 方法
  aboutToAppear(): void {
    LogUtil.debug('======= TomatoClockPage aboutToAppear =======')

    // 1️⃣ 获取路由参数
    const params = this.getUIContext().getRouter().getParams() as RouterParams
    LogUtil.debug('路由参数: ' + JSON.stringify(params))

    // 2️⃣ 检查是否需要恢复状态
    const clockData = FocusDataUtil.getClockData(FocusPreferenceName.Tomato)
    const isResuming = clockData.startTimestamp !== 0

    if (isResuming) {
      // ✅ 恢复场景：从缓存恢复
      LogUtil.debug('检测到缓存数据，恢复状态')
      this.tomatoViewModel.restoreClock()
      this.syncUIFromViewModel()
      this.tomatoViewModel.ensureRunningIfNeeded()
    } else {
      // ✅ 首次进入：使用路由参数初始化
      LogUtil.debug('首次进入，初始化配置')

      if (params) {
        this.tomatoViewModel.tomatoNum = params.tomatoNum || 4
        this.tomatoViewModel.tomatoDuration = params.tomatoDuration || 25
        this.tomatoViewModel.tomatoModel = params.tomatoModel || 3
        this.tomatoViewModel.isAutoRested = params.isAutoRested || false
        this.tomatoViewModel.isStrict = params.isStrict || false
        this.tomatoViewModel.title = params.title || '番茄钟'
        this.tomatoViewModel.restDuration = params.restDuration || 5
      }

      // 3️⃣ 初始化缓存数据
      this.tomatoViewModel.initClockData()

      // 4️⃣ 启动番茄钟
      this.tomatoViewModel.start()

      // 5️⃣ 同步UI
      this.syncUIFromViewModel()
    }

    // 6️⃣ 注册回调
    this.setupCallbacks()

    this.isFirstEnter = false
  }

  private setupCallbacks(): void {
    // 番茄完成回调
    this.tomatoViewModel.onSegmentComplete((current, total) => {
      LogUtil.debug(`完成第 ${current}/${total} 个番茄`)

      // 判断是否需要休息
      if (this.tomatoViewModel.isAutoRested && current < total) {
        // 自动进入休息
        this.isResting = true
        this.restViewModel.restTime = this.restDuration * 60
        this.restViewModel.setRestIndex(current)
        this.restViewModel.start()

        // 记录休息事件
        this.tomatoViewModel.addFocusEvent(5, `开始第${current}次休息`, 0)
      } else if (!this.tomatoViewModel.isAutoRested && current < total) {
        // 提示休息
        this.isTipRest = true
      }

      this.syncUIFromViewModel()
    })

    // 全部完成回调
    this.tomatoViewModel.onAllComplete(() => {
      LogUtil.debug('所有番茄完成')
      this.syncUIFromViewModel()

      // 记录完成事件
      this.tomatoViewModel.addFocusEvent(9, '全部完成', 0)
    })

    // 状态变化回调
    this.tomatoViewModel.onStateChange(() => {
      this.syncUIFromViewModel()
    })

    // 休息完成回调
    this.restViewModel.onRestComplete(() => {
      LogUtil.debug('休息完成')
      this.isResting = false
      this.currentRest++  // 🔧 增加休息计数

      // 记录休息完成事件
      this.tomatoViewModel.addFocusEvent(8, `完成第${this.currentRest}次休息`, this.restDuration * 60)

      // ✅ 开始下一个番茄
      if (this.currentTomato < this.tomatoNum) {
        this.tomatoViewModel.addFocusEvent(4, `开始第${this.currentTomato + 1}个番茄`, 0)
        this.tomatoViewModel.resume()  // 🔧 调用 resume 而不是 start
      }

      this.syncUIFromViewModel()
    })

    // 休息状态变化回调
    this.restViewModel.onStateChange(() => {
      this.currentRestSeconds = this.restViewModel.elapsedTime
    })
  }

  /**
   * 页面显示 - 处理亮屏后的时间校准
   */
  onPageShow() {
    LogUtil.debug('======= TomatoClockPage onPageShow =======')

    // 首次进入时已经在 aboutToAppear 处理了，这里跳过
    if (this.isFirstEnter) {
      LogUtil.debug('首次进入，跳过 onPageShow 处理')
      return
    }

    // 后续进入（从后台返回）才需要恢复
    LogUtil.debug('从后台返回，校准时间')
    this.tomatoViewModel.restoreClock()
    this.syncUIFromViewModel()
    this.tomatoViewModel.ensureRunningIfNeeded()
  }

  aboutToDisappear() {
    this.tomatoViewModel.destroy()
    this.restViewModel.destroy()
  }


  private syncUIFromViewModel(): void {
    const vm = this.tomatoViewModel

    // ====== 配置 & 累计数据（你现在漏了）======
    this.tomatoNum = vm.tomatoNum
    this.tomatoDuration = vm.tomatoDuration
    this.restDuration = vm.restDuration
    this.useTime = vm.useTime

    // ====== 番茄状态 ======
    this.currentTomato = vm.currentTomato
    this.currentTomatoSeconds = vm.currentTomatoSeconds

    // ====== 休息状态 ======
    this.isResting = vm.isResting
    this.currentRest = vm.currentRest
    this.currentRestSeconds = vm.currentRestSeconds

    // ====== 控制状态 ======
    this.isPaused = vm.isPaused
    this.isTipRest = vm.isTipRest
    this.isDone = vm.isDone
  }




  private formatTotalTime(seconds: number): string {
    const hours = Math.floor(seconds / 3600)
    const mins = Math.floor((seconds % 3600) / 60)
    const secs = Math.floor(seconds % 60)
    
    if (hours > 0) {
      return `${hours}时${mins}分${secs}秒`
    } else if (mins > 0) {
      return `${mins}分${secs}秒`
    } else {
      return `${secs}秒`
    }
  }

  build() {
    Stack() {
      if (this.isResting) {
        // ========== 休息界面(SVGA扩散动画)==========
        RestClock({
          restTime: this.restDuration,
          elapsedTime: this.currentRestSeconds,
          onSkip: () => {
            this.restViewModel.skip()
          },
          onFinish: () => {
            this.restViewModel.skip()
          }
        })
      }  else if (this.isTipRest) {
        // 🆕 ========== 提示休息界面 ==========
        Column() {
          Text('🎉 完成一个番茄!')
            .fontSize(28)
            .fontColor(Color.White)
            .fontWeight(FontWeight.Bold)
            .margin({ top: 80, bottom: 40 })

          Text(`已完成 ${this.currentTomato}/${this.tomatoNum} 个番茄`)
            .fontSize(18)
            .fontColor('#CCFFFFFF')
            .margin({ bottom: 60 })

          Text('需要休息一下吗？')
            .fontSize(16)
            .fontColor(Color.White)
            .margin({ bottom: 30 })

          Row() {
            Button('开始休息')
              .fontSize(16)
              .fontColor('#1a4d6d')
              .backgroundColor(Color.White)
              .width(120)
              .height(50)
              .borderRadius(25)
              .onClick(() => {
                // 进入休息
                this.isTipRest = false
                this.isResting = true
                this.currentRest++
                this.restViewModel.restTime = this.restDuration * 60
                this.restViewModel.setRestIndex(this.currentRest)
                this.restViewModel.start()

                // 记录休息事件
                this.tomatoViewModel.addFocusEvent(5, `开始第${this.currentRest}次休息`, 0)
              })
              .margin({ right: 15 })

            Button('跳过休息')
              .fontSize(16)
              .fontColor(Color.White)
              .backgroundColor('rgba(255, 255, 255, 0.1)')
              .border({ width: 1, color: Color.White, radius: 25 })
              .width(120)
              .height(50)
              .onClick(() => {
                // 跳过休息，继续下一个番茄
                this.isTipRest = false

                if (this.currentTomato < this.tomatoNum) {
                  this.tomatoViewModel.addFocusEvent(4, `开始第${this.currentTomato + 1}个番茄`, 0)
                  this.tomatoViewModel.resume()
                }
              })
          }
          .justifyContent(FlexAlign.Center)
        }
        .width('100%')
        .height('100%')
        .justifyContent(FlexAlign.Center)
        .linearGradient({
          angle: 180,
          colors: [[0x1a4d6d, 0.0], [0x0d2639, 1.0]]
        })
      } else if (this.isDone) {
        // 🆕 ========== 延长组件 ==========
        Column() {
          Text('🎉 恭喜完成!')
            .fontSize(32)
            .fontColor(Color.White)
            .fontWeight(FontWeight.Bold)
            .margin({ top: 60, bottom: 40 })

          Column() {
            Text(`已完成 ${this.tomatoNum} 个番茄`)
              .fontSize(20)
              .fontColor(Color.White)
              .margin({ bottom: 16 })

            Text(`总用时: ${this.formatTotalTime(this.useTime)}`)
              .fontSize(18)
              .fontColor('#CCFFFFFF')
              .margin({ bottom: 40 })

            Text('继续保持专注?')
              .fontSize(16)
              .fontColor('#CCFFFFFF')
              .margin({ bottom: 24 })

            Row() {
              Button('延长 +1')
                .fontSize(16)
                .fontColor('#1a4d6d')
                .backgroundColor(Color.White)
                .width(120)
                .height(50)
                .borderRadius(25)
                .onClick(() => {
                  this.tomatoViewModel.extend(1)
                })
                .margin({ right: 15 })

              Button('完成任务')
                .fontSize(16)
                .fontColor(Color.White)
                .backgroundColor('rgba(255, 255, 255, 0.1)')
                .border({ width: 1, color: Color.White, radius: 25 })
                .width(120)
                .height(50)
                .onClick(() => {
                  // 🆕 完成任务,清空缓存,返回首页
                  this.tomatoViewModel.finishTask()

                  promptAction.showToast({
                    message: '任务已完成!',
                    duration: 2000
                  })

                  this.getUIContext().getRouter().back()
                })
            }
            .justifyContent(FlexAlign.Center)
          }
          .width('90%')
          .padding(30)
          .backgroundColor('rgba(255, 255, 255, 0.05)')
          .borderRadius(20)
        }
        .width('100%')
        .height('100%')
        .justifyContent(FlexAlign.Center)
        .linearGradient({
          angle: 180,
          colors: [[0x1a4d6d, 0.0], [0x0d2639, 1.0]]
        })
      } else {
        // ========== 番茄钟界面 ==========
        Column() {
          Text('番茄钟专注')
            .fontSize(24)
            .fontColor(Color.White)
            .fontWeight(FontWeight.Bold)
            .margin({ top: 40, bottom: 20 })

          TomatoClock({
            tomatoNum: this.tomatoNum,
            currentSegment: this.currentTomato,
            elapsedTime: this.currentTomatoSeconds,
            segmentTime: this.tomatoDuration
          })
            .margin({ top: 40, bottom: 40 })

          Column() {
            Text(`当前: 第 ${this.currentTomato}/${this.tomatoNum} 个番茄`)
              .fontSize(16)
              .fontColor(Color.White)
              .margin({ bottom: 8 })

            Text(`总用时: ${this.formatTotalTime(this.useTime)}`)
              .fontSize(14)
              .fontColor('#CCFFFFFF')
              .margin({ bottom: 8 })

            Text(this.isDone ? '✅ 已完成' : (this.isPaused ? '⏸️ 已暂停' : '▶️ 进行中'))
              .fontSize(14)
              .fontColor(this.isDone ? '#4CAF50' : (this.isPaused ? '#FF9800' : '#2196F3'))
          }
          .margin({ bottom: 40 })

          Row() {
            Button(this.isPaused ? '继续' : '暂停')
              .onClick(() => {
                this.tomatoViewModel.togglePause()
              })
              .enabled(!this.isDone)
              .margin({ right: 10 })

            Button('重置')
              .onClick(() => {
                this.tomatoViewModel.reset()
                this.tomatoViewModel.start()
              })
              .margin({ right: 10 })

            Button('延长+1')
              .onClick(() => {
                this.tomatoViewModel.extend(1)
              })
          }
          .margin({ bottom: 20 })

        }
        .width('100%')
        .height('100%')
        .linearGradient({
          angle: 180,
          colors: [[0x1a4d6d, 0.0], [0x0d2639, 1.0]]
        })
      }
    }
    .width('100%')
    .height('100%')
  }
}
