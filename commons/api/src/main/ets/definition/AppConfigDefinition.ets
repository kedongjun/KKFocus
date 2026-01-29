import {
  Acquisition,
  ApiResponse,
  ChecklistViewResponse,
  Page,
  PaginableResponse,
  RowData,
  RowResponse,
  SummaryPage,
  SyncRowResponse,
  UserDeviceInfo,
  PushDevice
} from './BaseDefinition'

export namespace AppConfigDefinition {

  export interface Invite {
    download: string;
    record: string;
    register: string;
    inviteV2Url: string;
  }

  export interface Help {
    helpCenter: string;
  }

  export interface MyEquipment_isShow_2 {
    iOS: string;
    android: string;
  }

  export interface AppletSummary {
    maxTagCount: string;
    maxFolderCount: string;
    maxClassifyCount: string;
    vipMaxTagCount: string;
    vipMaxFolderCount: string;
    vipMaxClassifyCount: string;
  }

  export interface Ai_special_isHidden {
    channel: string[];
    registrationDate: string;
    version: string;
  }

  export interface MemberFunctionStart {
    system_widget_my_day: string;
    system_widget_my_week: string;
    system_widget_my_month: string;
    system_widget_four_quadrants: string;
  }

  export interface AdviceQQ {
    key: string;
    showed: boolean;
    qq: string;
    qqJumpKey: string;
  }

  export interface AppletMenstrual {
    statistics: string;
  }

  export interface AppletFocus {
    foucusTime: string;
    tomato: string;
  }

  export interface Post {
    detail: string;
  }

  export interface WeChatApp {
    domain: string;
  }

  export interface AppletDailyProphet {
    constellation: string;
    poetry: string;
    dailyDraw: string;
  }

  export interface AppletHabit {
    maxHabitCount: number;
  }

  export interface Guide {
    guideEndDesc: string;
    guideEndButton: string;
  }

  export interface AppletImportantDate {
    addDesktopWidget: string;
  }

  export interface AppletDiet {
    appletDietRecord: string;
  }

  export interface AccountBook {
    dataImportHelp: string;
    billImportVideo: string;
    billImportVideoAndroid: string;
  }

  /**
   {
   "howAdd": "https://thtml5-2.weilaizhushou.com/member/version2/desktop/index.html",
   "guideAdd": "https://thtml5-2.weilaizhushou.com/member/version2/desktop/guide.html",
   "widget": "https://thtml5-2.weilaizhushou.com/member/version2/desktop/widget.html",
   "widgetAndroid": "https://thtml5-2.weilaizhushou.com/member/version2/desktop/widget-android.html"
   }
   */
  export interface Desktop {
    howAdd: string;
    guideAdd: string;
    widget: string;
    widgetAndroid: string;
  }

  export interface AppletLetter {
    vipVersion?: string;
    vipBenefit?: string;
    vipAgreement?: string;
    vipAgreementAndroid?: string;
  }

  export interface RegisterServiceAgreement {
    title?: string,
    context?: string,
    version?: string,
  }

  export interface AppletCalendar {
    perpetualCalendar?: string,
    historyToday?: string,
  }

  export interface MatterInfo {
    timeSort?: string,
    weixinRemind?: string,
    iphoneRemind?: string,
    channel?: string,
    matterIntroduce?: string
  }

  export  interface AppTestEndDateOutput{
    date?:string,
    tipsContent?:string,
  }


  export interface AppConfig {
    invite?: Invite;
    help?: Help;
    myEquipment_isShow_2?: MyEquipment_isShow_2;
    AIQAInstructions?: string;
    appletSummary?: AppletSummary;
    Ai_special_isHidden?: Ai_special_isHidden;
    forumShow?: string;
    memberFunctionStart?: MemberFunctionStart;
    qahelp?: string;
    adviceQQ?: AdviceQQ;
    appletMenstrual?: AppletMenstrual;
    wechatShow?: string;
    sysVnNumber?: string[];
    shareSwitch?: string;
    appletFocus?: AppletFocus;
    webAppUrl?: string;
    wxPreviewHelp?: string;
    post?: Post;
    ossFilePath?: string;
    userPrivacyPolicy?: string;
    weChatApp?: WeChatApp;
    fourQuadrantGuide?: string;
    inviteSelfStudyRoom?: string;
    sleepRecordTooLong?: string;
    appletDailyProphet?: AppletDailyProphet;
    appletHabit?: AppletHabit;
    guide?: Guide;
    appletImportantDate?: AppletImportantDate;
    myEquipment_isShow?: string;
    mensesHelp2?: string;
    appletDiet?: AppletDiet;
    accountBook?: AccountBook;
    imgMaxFileSize?: string;
    mensesKeywords2?: string;
    desktop?: Desktop;
    appletLetter?: AppletLetter,
    registerAgreement?: string,
    registerServiceAgreement?: RegisterServiceAgreement,
    appletCalendar?:AppletCalendar,
    matter?: MatterInfo,
    SDKPrivacy?: string
    androidDeviceInfo_H5?: string
    hmAppCanUseDateTips?:AppTestEndDateOutput
  }
}
