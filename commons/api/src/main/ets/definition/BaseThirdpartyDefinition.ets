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

export namespace BaseThirdpartyDefinition {
  export interface AccessTokenOutput {
    accessToken?: string;
    expireSecond?: number;
    url?: string;
  }

  export interface BaiduAccessTokenOutput {
    accessToken?: string;
  }

  export interface DeviceInfoInput {
    device?: UserDeviceInfo;
  }

  export interface DeviceModelInfo {
    activeTime?: Date;
    channelType?: string;
    deviceModel?: string;
    deviceTag?: string;
    deviceType?: string;
    directPushChannelByDeviceModel?: string;
    directPushSupplier?: string;
    oriDeviceTag?: string;
    osVersion?: string;
    pushKey?: string;
    sessionTag?: string;
    supportPush?: boolean;
    version?: string;
  }

  export interface JpushRegisterInfoInput {
    devicetagapp?: string;
    devicetype?: string;
    errormessage?: string;
    pushtoken?: string;
    registid?: string;
  }

  export interface OcrInput {
    imgUrl: string;
  }

  export interface OcrOutput {
    content: string;
  }

  export interface OcrTimesOutput {
    availableTimes: number;
    totalTimes: number;
  }

  export interface PushRemindInput {
    content?: string;
    deviceModelInfo?: DeviceModelInfo;
    devicemodel?: string;
    extendData?: string;
    offset?: number;
    pushChannel?: string;
    pushCode?: string;
    pushMode?: string;
    pushTime?: string;
    pushToken?: string;
    pushType?: string;
    recordId?: number;
    ruleId?: number;
    section?: number;
    shorttitle?: string;
    soundFile?: string;
    taskId?: number;
    todoTime?: string;
    userId?: number;
  }

  export interface PushRemindOutput {
    result?: boolean;
  }

  export interface SendEmailCodeInput {
    device?: UserDeviceInfo;
    email?: string;
    productName?: string;
    type?: string;
  }

  export interface SendEmailExportDataInput {
    address?: string;
    body?: string;
    filePath?: string;
    topic?: string;
  }

  export interface SendSmsMessageInput {
    areaCode?: string;
    device?: UserDeviceInfo;
    mobile?: string;
    productName?: string;
    type?: string;
    userType?: string;
  }

  export interface SendSmsMessageOutput {
    type?: string;
  }

  export interface SendVoiceMessageInput {
    device?: UserDeviceInfo;
    mobile?: string;
    productName?: string;
    type?: string;
    userType?: string;
  }

  export interface SendVoiceMessageOutput {
    type?: string;
  }

  export interface ShortUrlInput {
    type: string;
    url: string;
  }

  export interface ShortUrlOutput {
    shortUrl: string;
  }

  export interface SmsRemindInput {
    content?: string;
    mobile?: string;
    pushChannel?: string;
  }

  export interface SmsRemindOutput {
    result?: boolean;
  }

  export interface SpeechRecAuthInput {
    sign: string;
    timestamp: number;
  }

  export interface VoiceRemindInput {
    content?: string;
    mobile?: string;
    pushChannel?: string;
  }

  export interface VoiceRemindOutput {
    result?: boolean;
  }

  export interface WxRemindInput {
    aheadTime?: string;
    content?: string;
    openid?: string;
    pushChannel?: string;
    title?: string;
    todoId?: number;
    type?: string;
    userId?: number;
  }

  export interface WxRemindOutput {
    result?: boolean;
  }
}
