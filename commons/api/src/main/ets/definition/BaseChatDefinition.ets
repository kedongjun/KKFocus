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

export namespace BaseChatDefinition {
  export interface AutoIdInput {
    id?: number;
  }

  export interface IntentionInput {
    appID?: string;
    content?: string;
    sceneType?: string;
  }

  export interface MessageListInput {
    isVip?: boolean;
    lastMessageId?: string;
    pageSize?: number;
  }

  export interface MessageListOutput {
    lastMessageId?: string;
    messageList?: Array<MessageOutput>;
  }

  export enum MsgExtendType {
    CommandTips
  }

  interface MsgOutputExtend {
    type: MsgExtendType,
    content?: object
  }

  export interface MessageOutput { //带"_"表示自定义的，只是过度一下
    content?: string;
    created?: number;
    deleted?: boolean;
    extend?: string;
    id?: string;
    messageType?: string;
    role?: string;
    status?: string;
    subContent?: string;
    updated?: number;
    version?: number | String;
    finishReason?: string;
    reasoningContent?: string;
    searchResults?: string;
    _createdTime?: string;
    _tipText?: string;
    _isCurrentAICreated?: boolean; //是否为AI当前生成的数据
    _canDelete?: boolean, //是否能删除
    _canUpdate?: boolean,//是否能修改


  }

  export interface PaginableRequest {
    currentPage: number;
    keyword?: string;
    pageSize: number;
  }

  export interface PolishInput {
    content?: string;
  }

  export interface PolishOutput {
    content?: string;
    title?: string;
  }

  export interface QuestionInput {
    content?: string;
    sceneType?: string;
  }

  export interface SyncDataRequest {
    fromId: number;
    fromVersion: number;
    pageSize: number;
    toVersion: number;
  }

  export interface UpdateXiaoxuMessageInput {
    content?: string;
    extend?: string;
    id?: number | string;
    role?: string;
    sceneType?: string;
    subContent?: string;
    created?: number;
  }

  export interface UserCountTipOutput {
    memberFreeRemainCount?: number;
    rechargeRemainCount?: number;
    remainCount?: number;
    tip?: string;
    userFreeRemainCount?: number;
  }

  export interface UserImageOutput {
    b64_image?: string;
    created?: Date;
    id?: number;
  }


  export interface MessageQuestionInput {
    content?: string;
    enableSearch?: boolean;
    enableThinking?: boolean;
    sceneType?: string;
  }

  export interface MessageQuestionOutput {
    content?: string
  }

  export interface AppletParseOutput {
    code?: string,
    data: ParseFirstOutput,
    _originalContent?:string,
  }
  export interface ParseFirstOutput {
    first: ParseIntentionOutPut,
    others?:Array<ParseIntentionOutPut>
  }


  export interface ParseIntentionOutPut {
    action?: string,
    appletId?: string,
    appletName?: string,
    subAppletId?: string,
    subAppletName?: string,
    fieldsMap: FieldsMapInput
  }

  export interface FieldsMapInput {
    importance?: number,
    position?: string,
    recordType?: number,
    shorttitle?: string,
    timeText?: string,
    todoclassifyid?: number,
    todotime?: TodotimeInput,
    todotype?: string,
    repeatType?: string,
    repeatTime?: string,
    duration?: number,
    timeExpression?: string,
    repeatExpression?: string,
    durationExpression?: string,
    text?: string,
    title?: string,
    date?: string,
    bookType?: string,
    price?: string,
    remark?: string,
    dateValue?: string,
    topic?: string,
    dateTime?: string,
    drinkDateTime?: string,
    capacity?: string
    dailyType?: string,
    frequencyType?: string,
    startDate?: string,
    frequencyValue?: Array<number>
    areaList: Array<AreaModel>
    keyword?: string,
    content?: string,
    queryType?: string,
    aimType?: string,
    minutes?: number,
    quantity?: number,
    mealType?: string,
    circumferenceType?: string,
    isRepeat?: boolean,
    weeks?: Array<string>
    time?: string,

  }

  export interface TodotimeInput {
    year?: number,
    month?: number,
    day?: number,
    hour?: number,
    minute?: number,
    second?: number,
  }

  export interface AreaModel {
    adcode?: string;
    level?: string;
    province_code?: string;
    province_name?: string;
    city_code?: string;
    moji_city_name?: string;
    area_code?: string,
    name?: string;
  }

  export interface FocusUrlOutputParams {
    minutes?: number,
    quantity?: number,
    position?: number,
  }

  export enum CircumferenceType {
    waist = 0,
    bust = 1,
    hips = 2,
    thigh = 3,
    calf = 4,
    arm = 5,
  }
}
