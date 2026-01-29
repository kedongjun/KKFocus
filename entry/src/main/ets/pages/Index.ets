@Entry
@Component
struct Index {
  @State message: string = '开始番茄钟';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('HelloWorld')
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(() => {
          this.getUIContext().getRouter().pushUrl({url: 'pages/TomatoClockPage' }).catch(() => {
            // TODO: Implement error handling.
          })

        })
    }
    .height('100%')
    .width('100%')
  }
}