import { FocusDataUtil, FocusPreferenceName } from "../utils/FocusDataUtil"


// 定义参数类型
export interface RouterParams {
  tomatoNum: number, // 番茄总数：第一次是从外部页面传进来
  tomatoDuration: number, // 每个番茄时长（秒）：第一次是从外部页面传进来
  tomatoModel: number, // 番茄类型：第一次是从外部页面传进来
  isAutoRested: boolean, // 用户是否勾选了自动休息：第一次是从外部页面传进来
  isStrict: boolean, // 用户是否勾选了严格专注：第一次是从外部页面传进来
  title: string, // 用户是否勾选了严格专注：第一次是从外部页面传进来
  restDuration: number, // 单次休息时长：第一次是初始化里面赋值
}


@Entry
@Component
struct Index {


  // ============ 配置参数 ============
  public tomatoNum: number = 4               // 番茄总数：第一次是从外部页面传进来
  public tomatoDuration: number = 20         // 每个番茄时长（秒）：第一次是从外部页面传进来
  public tomatoModel: number = 3             // 番茄类型：1\2\3
  public isAutoRested: boolean = false       // 用户是否勾选了自动休息
  public isStrict: boolean = false           // 用户是否勾选了严格专注
  public title: string = '番茄钟测试'          // 标题
  public restDuration: number = 10           // 单次休息时长：第一次是初始化里面赋值


  aboutToAppear(): void {
    // ========== 检查是否需要恢复状态 ==========
    const clockData = FocusDataUtil.getClockData(FocusPreferenceName.Tomato)
    const isResuming = clockData.startTimestamp !== 0
    //杀进程重启检测，如果有数据，直接跳转
    if (isResuming) {
      this.toTomatoClockPage()
    }
  }

  build() {
    Column() {

      Column() {
        Text('配置')
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .margin({ bottom: 10 })

        Row() {
          Text('番茄时长（秒）：')
          TextInput({ text: this.tomatoDuration.toString() })
            .width(100)
            .type(InputType.Number)
            .onChange((value) => {
              const num = parseInt(value)
              if (num > 0) {
                this.tomatoDuration = num
              }
            })
        }
        .margin({ bottom: 10 })

        Row() {
          Text('休息时长（秒）：')
          TextInput({ text: this.restDuration.toString() })
            .width(100)
            .type(InputType.Number)
            .onChange((value) => {
              const num = parseInt(value)
              if (num > 0) {
                this.restDuration = num
              }
            })
        }
        .margin({ bottom: 10 })

        Row() {
          Text('番茄总数：')
          TextInput({ text: this.tomatoNum.toString() })
            .width(100)
            .type(InputType.Number)
            .onChange((value) => {
              const num = parseInt(value)
              if (num > 0) {
                this.tomatoNum = num
              }
            })
        }
        .margin({ bottom: 10 })
        //
        // Button('应用配置')
        //   .onClick(() => {
        //     this.tomatoViewModel.reset()
        //     this.tomatoViewModel.tomatoNum = this.tomatoNum
        //     this.tomatoViewModel.tomatoDuration = this.tomatoDuration
        //     this.tomatoViewModel.start()
        //   })
      }
      .padding(20)
      .width('90%')
      .backgroundColor('#F5F5F5')
      .borderRadius(10)
      .margin({top:100})



      Text('开始番茄钟')
        .fontSize(30)
        .fontColor(Color.White)
        .fontWeight(FontWeight.Bold)
        .margin({top:100})
        .onClick(() => {
         this.toTomatoClockPage()
        })
    }
    .linearGradient({
      angle: 180,
      colors: [[0x1a4d6d, 0.0], [0x0d2639, 1.0]]
    })
    .height('100%')
    .width('100%')
  }


  toTomatoClockPage(){
    this.getUIContext().getRouter().pushUrl({
      url: 'pages/TomatoClockPage',
      params: {
        tomatoNum: this.tomatoNum,
        tomatoDuration: this.tomatoDuration,
        tomatoModel: this.tomatoModel,
        isAutoRested: this.isAutoRested,
        isStrict: this.isStrict,
        title: this.title,
        restDuration: this.restDuration,
      }
    }).catch(() => {
    })
  }

}