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




  /**
   * 页面显示 - 处理亮屏后的时间校准
   */
  onPageShow() {
    LogUtil.debug('======= 页面显示 - 开始时间校准 =======')
    this.tomatoViewModel.restoreClock()
    // 只做 UI 绑定
    this.syncUIFromViewModel()

    this.tomatoViewModel.ensureRunningIfNeeded()

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
