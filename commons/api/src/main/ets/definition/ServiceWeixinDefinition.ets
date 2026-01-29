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

export namespace ServiceWeixinDefinition {
  export interface PlanTextInput {
    content?: string;
  }

  export interface WxTodoDeleteInput {
    dbType?: string;
    id?: string;
    openid?: string;
    type?: string;
    unionid?: string;
    wxId?: string;
  }

  export interface WxTodoDeleteOutput {
    result?: boolean;
  }

  export interface WxTodoInput {
    aheadType?: string;
    duration?: number;
    intervalType?: number;
    isPush?: boolean;
    isTransfer?: boolean;
    nextTime?: Date;
    openid?: string;
    remark?: string;
    shortTitle?: string;
    title?: string;
    todoTime?: Date;
    todoType?: string;
    unionid?: string;
  }

  export interface WxTodoOutput {
    aheadType?: string;
    created?: Date;
    deleted?: boolean;
    duration?: number;
    id?: number;
    intervalType?: number;
    isPush?: boolean;
    isTransfer?: boolean;
    nextTime?: Date;
    openid?: string;
    remark?: string;
    result?: boolean;
    shortTitle?: string;
    title?: string;
    todoTime?: Date;
    todoType?: string;
    unionid?: string;
    updated?: Date;
  }

  export interface WxToken {
    accessToken?: string;
  }
}
