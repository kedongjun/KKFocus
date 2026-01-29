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

export namespace WebThirdpartyDefinition {
  export interface SendCodeInput {
    codeType: string;
    device?: UserDeviceInfo;
    productName?: string;
    type?: string;
  }

  export interface SendSmsMessageInput {
    areaCode?: string;
    device?: UserDeviceInfo;
    mobile?: string;
    productName?: string;
    type?: string;
    userType?: string;
  }

  export interface SendVoiceMessageInput {
    device?: UserDeviceInfo;
    mobile?: string;
    productName?: string;
    type?: string;
    userType?: string;
  }

  export interface WebSendEmailCodeInput {
    device?: UserDeviceInfo;
    email?: string;
    productName?: string;
    type?: string;
  }
}
