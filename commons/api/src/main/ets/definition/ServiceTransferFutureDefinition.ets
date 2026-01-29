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

export namespace ServiceTransferFutureDefinition {
  export interface TransferInput {
    appletId?: number;
  }

  export interface UserOutput {
    appVersion?: string;
    areaCodeMobile?: MobileWithAreaCode;
    birthDay?: number;
    birthMonth?: number;
    birthYear?: number;
    channel?: string;
    channelName?: string;
    channelType?: string;
    created?: Date;
    deleted?: boolean;
    deviceTag?: string;
    deviceType?: string;
    email?: string;
    gender?: number;
    id?: number;
    idCard?: string;
    job?: string;
    lastLoginTime?: Date;
    leapMonth?: string;
    lunar?: string;
    mobile?: string;
    nickname?: string;
    oldMobile?: string;
    openid?: string;
    password?: string;
    pwdErrorCount?: number;
    qqName?: string;
    remark?: string;
    signature?: string;
    telecomOperators?: string;
    unionid?: string;
    uniqueKey?: string;
    updated?: Date;
    userCode?: number;
    userImage?: string;
    userName?: string;
  }

  export interface UserSimpleByMobileOutput {
    user?: UserOutput;
    userExist?: boolean;
  }

  export interface UserTransferLogOutput {
    firstLoginAccount?: string;
    firstLoginPlatform?: string;
    id?: number;
    sgxEmail?: string;
    sgxMobile?: string;
    sgxUserId?: number;
    transferAccountType?: string;
    transferStatus?: string;
    transferType?: string;
    userDataRetention?: string;
    userId?: number;
  }

  export interface GetTransferListV1UsingPOSTRsp {
    appletId?: number;
    appletName?: string;
    endTime?: Date;
    id?: number;
    importSwitch?: boolean;
    importType?: string;
    manualImportEndTime?: Date;
    manualImportLivelihoodUserId?: number;
    manualImportStartTime?: Date;
    manualImportUserPhone?: string;
    startTime?: Date;
    status?: string;
    transferMsg?: string;
    willCover?: boolean;
  }

  export interface MobileWithAreaCode {
    areaCode?: string;
    chinaMainlandAreaCode?: boolean;
    mobile?: string;
    nullMobile?: boolean;
  }
}
