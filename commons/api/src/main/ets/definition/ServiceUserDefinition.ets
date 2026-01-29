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

export namespace ServiceUserDefinition {
  export interface AddIapOrderInputV2 {
    amount: number;
    outOrderId?: number;
    payType: string;
    product: string;
    productName?: string;
    productType: string;
  }

  export interface AddOrderAndPayInput {
    addressId?: number;
    amount: number;
    img?: string;
    outOrderId?: number;
    payType: string;
    product: string;
    productName?: string;
    productType: string;
    productValue?: number;
    returnUrl?: string;
    tradeType: string;
  }

  export interface AppletVersionInput {
    appletVersion: number;
  }

  export interface EveryDayMottoTemplateCouldBeCollectedOutput {
    beCollected?: string;
    everyDayMottoTemplate?: EveryDayMottoTemplateOutput;
    userMottoId?: string;
  }

  export interface EveryDayMottoTemplateOutput {
    bgImg?: string;
    content?: string;
    creator?: string;
    deleted?: boolean;
    enContent?: string;
    id?: string;
    imageUrl?: string;
    isCollect?: boolean;
    mottoDate?: string;
    pushTime?: string;
    remark?: string;
    userMottoId?: string;
  }

  export interface IdData {
    id?: number;
  }

  export interface IdRequest {
    id: number;
  }

  export interface IdResponse {
    code?: number;
    data?: IdData;
    msg?: string;
  }

  export interface LatestEveryDayMottoTemplateInput {
    currentDateTime?: Date;
    type?: string;
  }

  export interface LatestEveryDayMottoTemplatePageInput {
    contain?: boolean;
    currentDateTime?: string;
    currentPage: number;
    direction?: string;
    keyword?: string;
    pageSize: number;
    type?: string;
  }

  export interface MsgPushInfo {
    byte?: Array<number>;
    id?: number;
    pushTime?: Date;
    pushType?: string;
    ruleId?: number;
    taskId?: number;
    todoTime?: Date;
  }

  export interface PaymentOrderOutput {
    clientParam?: object;
    orderId?: number;
  }

  export interface UserAppManageClickInput {
    appCode?: string;
  }

  export interface UserAppManageInput {
    appCode?: string;
    grade: number;
    status?: number;
  }

  export interface UserAppManageOutput {
    appCode?: string;
    appName?: string;
    bottomLogo?: string;
    grade?: number;
    lockTag?: boolean;
    logo?: string;
    logoVer02?: string;
    remark?: string;
    status?: number;
    updated?: Date;
    userId?: number;
    visitCount?: number;
  }

  export interface UserAppletInput {
    rows?: Array<UserAppManageInput>;
  }

  export interface UserAppletOutput {
    closeRows?: Array<UserAppManageOutput>;
    rows?: Array<UserAppManageOutput>;
  }

  export interface UserInfoInput {
    birthDay?: number;
    birthMonth?: number;
    birthYear?: number;
    customJob?: string;
    dataVersion: string;
    gender: number;
    job?: string;
    leapMonth?: string;
    lunar?: string;
  }
}
