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

export namespace BaseWeixinDefinition {
  export interface UnSubscribeInput {
    accountId?: string;
    fromUserName?: string;
  }

  export interface UnSubscribeOutput {
    result?: boolean;
    unionid?: string;
  }

  export interface WxAccessTokenInput {
    wxId?: number;
  }

  export interface WxAccessTokenOutput {
    accessToken?: string;
    created?: Date;
    expiresIn?: number;
    id?: number;
    remark?: string;
    type?: number;
    updated?: Date;
    wxId?: number;
  }

  export interface WxAccountInfoInput {
    id?: string;
  }

  export interface WxAccountInfoOutput {
    appId?: string;
    appSecret?: string;
    created?: Date;
    id?: number;
    name?: string;
    remark?: string;
    tag?: string;
    token?: string;
    type?: number;
    umengChannel?: string;
    updated?: Date;
    wxId?: string;
  }

  export interface WxDeleteInput {
    id?: number;
    openid?: string;
  }

  export interface WxMessageInput {
    appId?: string;
    event?: string;
    eventKey?: string;
    idsList?: Array<number>;
    type?: number;
  }

  export interface WxMessageKeyInput {
    appId?: string;
    created?: Date;
    fuzzyMatch?: boolean;
    id?: number;
    messageId?: string;
    remark?: string;
    sort?: number;
    state?: boolean;
    textKey?: string;
    updated?: Date;
  }

  export interface WxMessageKeyOutput {
    appId?: string;
    created?: Date;
    fuzzyMatch?: boolean;
    id?: number;
    messageId?: string;
    remark?: string;
    sort?: number;
    state?: boolean;
    textKey?: string;
    updated?: Date;
  }

  export interface WxMessageLogInput {
    content?: string;
    date?: Date;
    event?: string;
    eventKey?: string;
    fromUserName?: string;
    messageType?: number;
    msgType?: string;
    remark?: string;
    sort?: number;
    toUserName?: string;
  }

  export interface WxMessageLogOutput {
    appId?: string;
    articleCount?: string;
    articles?: string;
    content?: string;
    count?: number;
    created?: Date;
    event?: string;
    eventKey?: string;
    format?: string;
    fromUserName?: string;
    id?: number;
    mediaId?: string;
    messageType?: number;
    msgId?: number;
    msgType?: string;
    picUrl?: string;
    remark?: string;
    result?: boolean;
    sort?: number;
    thirdId?: number;
    thumbMediaId?: string;
    toUserName?: string;
    updated?: Date;
  }

  export interface WxMessageOutput {
    appId?: string;
    articleCount?: number;
    articles?: string;
    content?: string;
    created?: Date;
    event?: string;
    eventKey?: string;
    format?: string;
    fromUserName?: string;
    id?: number;
    mediaId?: string;
    msgId?: number;
    msgType?: string;
    picUrl?: string;
    remark?: string;
    sort?: number;
    state?: boolean;
    thumbMediaId?: string;
    toUserName?: string;
    type?: number;
    updated?: Date;
  }

  export interface WxMessageRelationInput {
    created?: Date;
    id?: number;
    messageId?: number;
    messageKeyId?: number;
    remark?: string;
    updated?: Date;
  }

  export interface WxMessageRelationOutput {
    created?: Date;
    id?: number;
    messageId?: number;
    messageKeyId?: number;
    remark?: string;
    updated?: Date;
  }

  export interface WxParameterInput {
    appId?: string;
    type?: string;
  }

  export interface WxParameterOutput {
    created?: Date;
    id?: number;
    name?: string;
    remark?: string;
    sort?: number;
    type?: string;
    updated?: Date;
    value?: string;
    wxId?: string;
  }

  export interface WxTodoDeleteOutput {
    result?: boolean;
  }

  export interface WxTodoIdInput {
    id?: number;
    openid?: string;
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

  export interface WxUserBehaviorInput {
    created?: Date;
    firstSubscribeTime?: Date;
    id?: number;
    lastSubscribeTime?: Date;
    mobile?: string;
    openid?: string;
    remark?: string;
    subscribe?: boolean;
    updated?: Date;
    userToWxMessageTime?: Date;
    wxId?: number;
    wxToUserMessageTime?: Date;
  }

  export interface WxUserBehaviorOutput {
    created?: Date;
    firstSubscribeTime?: Date;
    id?: number;
    lastSubscribeTime?: Date;
    mobile?: string;
    openid?: string;
    remark?: string;
    result?: boolean;
    subscribe?: boolean;
    updated?: Date;
    userToWxMessageTime?: Date;
    wxId?: number;
    wxToUserMessageTime?: Date;
  }

  export interface WxUserInfoInput {
    appName?: string;
    avatarUrl?: string;
    canSubscribeTime?: Date;
    channel?: string;
    city?: string;
    country?: string;
    created?: Date;
    groupId?: string;
    id?: number;
    language?: string;
    lastSubscribeTime?: Date;
    mobile?: string;
    nickName?: string;
    openid?: string;
    province?: string;
    remark?: string;
    sessionKey?: string;
    sex?: string;
    subscribe?: string;
    tag?: string;
    type?: string;
    unionid?: string;
    updated?: Date;
  }

  export interface WxUserInfoOutput {
    appName?: string;
    avatarUrl?: string;
    canSubscribeTime?: Date;
    channel?: string;
    city?: string;
    country?: string;
    created?: Date;
    groupId?: string;
    id?: number;
    language?: string;
    lastSubscribeTime?: Date;
    mobile?: string;
    nickName?: string;
    openid?: string;
    province?: string;
    remark?: string;
    result?: boolean;
    sessionKey?: string;
    sex?: string;
    subscribe?: string;
    tag?: string;
    type?: string;
    unionid?: string;
    updated?: Date;
  }
}
