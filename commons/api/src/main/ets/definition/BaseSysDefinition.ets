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

export namespace BaseSysDefinition {
  export interface AppConfigInput {
    channelKey?: string;
    versionKey: string;
  }

  export interface DictInput {
    channelKey?: string;
    dictKey: string;
    versionKey?: string;
    lang?: string
  }

  export interface DictOutput {
    colorImg?: string;
    dictCode: string;
    dictKey: string;
    dictValue: string;
    remark?: string;
    url?: string;
  }

  export interface EveryDayMottoTemplateBatchDataDto {
    bgImg?: string;
    content?: string;
    creator?: string;
    enContent?: string;
    imageUrl?: string;
    mottoDate?: Date;
  }

  export interface EveryDayMottoTemplateBatchInput {
    list?: Array<EveryDayMottoTemplateBatchDataDto>;
  }

  export interface EveryDayMottoTemplateInput {
    bgImg?: string;
    content?: string;
    creator?: string;
    deleted?: boolean;
    enContent?: string;
    id?: number;
    imageUrl?: string;
    mottoDate?: Date;
    remark?: string;
  }

  export interface EveryDayMottoTemplateNewestDataOutput {
    countFromNowToMaxDate?: number;
    everyDayMottoTemplateOutput?: EveryDayMottoTemplateOutput;
  }

  export interface EveryDayMottoTemplateOutput {
    bgImg?: string;
    content?: string;
    creator?: string;
    deleted?: boolean;
    enContent?: string;
    id?: number;
    imageUrl?: string;
    isCollect?: boolean;
    mottoDate?: Date;
    pushTime?: Date;
    remark?: string;
    userMottoId?: number;
  }

  export interface EveryDayMottoTemplateSearchInput {
    endDate?: Date;
    pageNum?: number;
    pageSize?: number;
    searchKey?: string;
    startDate?: Date;
  }

  export interface LatestEveryDayMottoTemplateInput {
    currentDateTime?: Date;
    type?: string;
  }

  export interface LatestEveryDayMottoTemplatePageInput {
    contain?: boolean;
    currentDateTime?: Date;
    currentPage: number;
    direction?: string;
    keyword?: string;
    pageSize: number;
    type?: string;
  }

  export interface MsgListDailyCareInput {
    langKey?: string;
    userName?: string;
  }

  export interface MsgListInput {
    channelType?: string;
    langKey: string;
    shareCode?: string;
    type?: string;
    userName?: string;
  }

  export interface MsgListSpecialDayInput {
    langKey?: string;
    pushType?: string;
  }

  export interface MsgListTemplateInput {
    langKey?: string;
    templateType?: string;
  }

  export interface MsgListTemplateOutput {
    id?: number;
    langKey?: string;
    title?: string;
    type?: string;
    url?: string;
  }

  export interface RandomDictInput {
    dictKey: string;
  }

  export interface RandomDictOutput {
    text?: string;
  }

  export interface SysClassifyInfoInput {
    classifyVersion: string;
  }

  export interface SysClassifyInput {
    classifyCodes: Array<string>;
    classifyType: string;
    classifyVersion: string;
  }

  export interface SysClassifyMultiInput {
    classifyTypes: Array<string>;
    classifyVersion: string;
  }

  export interface SysClassifyOutput {
    classifyAppletCircleDone?: string;
    classifyAppletCircleTodo?: string;
    classifyAppletCirculationDark?: string;
    classifyAppletCirculationTint?: string;
    classifyBgImg?: string;
    classifyBgcolor?: string;
    classifyCode?: string;
    classifyColor?: string;
    classifyIcon?: string;
    classifyMonthViewCalendarBgDone?: string;
    classifyMonthViewCalendarBgTodo?: string;
    classifyMonthViewCircleDone?: string;
    classifyMonthViewCircleTodo?: string;
    classifyMonthViewCirculationDark?: string;
    classifyMonthViewCirculationTint?: string;
    classifyName: string;
    classifyTodayCheckDone?: string;
    classifyTodayCircleDoneBgcolor?: string;
    classifyTodayCircleTodoBgcolor?: string;
    classifyTodayCirculationDark?: string;
    classifyTodayCirculationDiamondBgcolor?: string;
    classifyTodayCirculationTint?: string;
    classifyTodayDiamondDoneBgcolor?: string;
    classifyTodayDiamondTodoBgcolor?: string;
    classifyTodoCircleDone?: string;
    classifyTodoCircleTodo?: string;
    classifyTodoEditDoneGradation?: string;
    classifyTodoEditDoneProjection?: string;
    classifyTodoSubTaskCircleDone?: string;
    classifyTodoSubTaskCircleTodo?: string;
    classifyType: string;
    classifyWeekViewBgDone?: string;
    classifyWeekViewBgTodo?: string;
    id?: number;
  }

  export interface SysConfigCache {
    cfgKey?: string;
    cfgValue?: string;
    id?: number;
    langKey?: string;
    version?: string;
  }

  export interface SysConfigInput {
    channelKey?: string;
    versionKey?: string;
  }

  export interface SysExcelConfigDto {
    configKey: string;
    filterParams?: Map<string, string>;
    typeKey?: string;
  }

  export interface SysExcelConfigInput {
    configs: Array<SysExcelConfigDto>;
  }

  export interface SysSkinInfoInput {
    skinVersion: string;
  }

  export interface SysSkinNewInput {
    appletId: number;
    skinVersion: string;
  }

  export interface SysTemplateThemeInput {
    themeType: string;
    themeVersion: number;
  }

  export interface SysTemplateThemeOutput {
    deviceType?: string;
    resUrl?: string;
    themeVersion?: number;
  }

  export interface SysThemeInput {
    langKey?: string;
    type?: string;
  }

  export interface SysUserAdviceInputV2 {
    advicePic?: Array<string>;
    adviceType: number;
    content: string;
    device: UserDeviceInfo;
  }

  export interface SysUserAdviceReplyBatchIdOutput {
    ids?: Array<SysUserAdviceReplyIdOutput>;
  }

  export interface SysUserAdviceReplyBatchInput {
    creator?: string;
    reply?: string;
    state?: string;
    sysUserAdviceId?: Array<number>;
    updator?: string;
    userId?: number;
    userMsgListSysMsgId?: Array<number>;
  }

  export interface SysUserAdviceReplyIdOutput {
    id?: number;
    sysUserAdviceId?: number;
  }

  export interface SysUserAdviceReplyInput {
    creator?: string;
    id?: number;
    reply?: string;
    state?: string;
    sysUserAdviceId?: number;
    updator?: string;
    userId?: number;
    userMsgListSysMsgId?: number;
  }

  export interface TodoTextTipsInput {
    keyword: string;
    lang: string;
  }

  export interface GetThemesUsingPOSTRsp {
    bgColor?: string;
    contrastColor?: string;
    created?: Date;
    defaultSetting?: boolean;
    deviceType?: number;
    iconJson?: string;
    id?: number;
    langKey?: string;
    name?: string;
    remark?: string;
    status?: boolean;
    textColor?: string;
    type?: string;
    updated?: Date;
  }

  export interface GetOsTeamPushUsingPOSTRsp {
    appVersion?: string;
    bgImg?: string;
    businessVersion?: string;
    code?: string;
    content?: string;
    deviceType?: string;
    endDate?: Date;
    icon?: string;
    id?: number;
    img?: string;
    isTop?: string;
    json?: string;
    linkId?: number;
    pushTime?: Date;
    title?: string;
    type?: string;
    url?: string;
  }
}
