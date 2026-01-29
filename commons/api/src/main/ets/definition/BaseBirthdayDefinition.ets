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

export namespace BaseBirthdayDefinition {
  export interface AppletHistoryResponse {
    created?: Date;
    id?: string;
    params?: object;
    subTitle?: string;
    title?: string;
  }

  export interface BackgroundInput {
    backgroundExtend?: object;
    backgroundImage?: string;
    backgroundLoadingImage?: string;
    backgroundType?: string;
    backgroundVideo?: string;
    id?: number;
    isSystemDefaultBackground?: boolean;
  }

  export interface BatchUpdateRemindTimeInput {
    remindTime?: string;
  }

  export interface BirthdayAddV4Input {
    birthdayRelationshipId: number;
    day: string;
    id?: number;
    images?: Array<string>;
    img?: string;
    isImportant: boolean;
    isLunar: boolean;
    isRemind: boolean;
    isRemindDayAndDate: boolean;
    name: string;
    phone?: string;
    remark?: string;
    remindDays?: Array<BirthdayAheadTypeInput>;
    remindTime?: string;
    repeatType: string;
  }

  export interface BirthdayAddV6Input {
    birthdayRelationshipId?: number;
    day?: number;
    id?: number;
    images?: Array<string>;
    img?: string;
    isImportant: boolean;
    isLeapMonth?: boolean;
    isLunar: boolean;
    isRemind: boolean;
    isRemindDayAndDate: boolean;
    month?: number;
    name: string;
    phone?: string;
    remark?: string;
    remindDays?: Array<BirthdayAheadTypeInput>;
    remindTime?: string;
    repeatType: string;
    year?: number;
  }

  export interface BirthdayAheadTypeInput {
    checked?: boolean;
    offset: number;
  }

  export interface BirthdayCountDto {
    count?: number;
    importanceCount?: number;
    importanceList?: Array<string>;
    relationList?: Array<BirthDayRelation>;
  }

  export interface BirthdayCountOutput {
    count?: number;
  }

  export interface BirthdayData {
    birthdayFinishedDatas?: Array<BirthdayFinishedData>;
    birthdayLogDatas?: Array<BirthdayLogData>;
    birthdayRelationDatas?: Array<BirthdayRelationData>;
  }

  export interface BirthdayDeleteBadDataInput {
    flag?: string;
  }

  export interface BirthdayEarthElementOutputV3 {
    id?: number;
    list?: Array<BirthdayInfoOutputV3>;
    name?: string;
  }

  export interface BirthdayEarthElementOutputV4 {
    id?: number;
    list?: Array<BirthdayOutputV4>;
    name?: string;
  }

  export interface BirthdayEarthElementOutputV6 {
    id?: number;
    list?: Array<BirthdayOutputV6>;
    name?: string;
  }

  export interface BirthdayEarthOutput {
    attention?: Array<BirthdayInfoOutput>;
    career?: Array<BirthdayInfoOutput>;
    classmate?: Array<BirthdayInfoOutput>;
    family?: Array<BirthdayInfoOutput>;
    friendship?: Array<BirthdayInfoOutput>;
    love?: Array<BirthdayInfoOutput>;
  }

  export interface BirthdayEarthOutputV3 {
    attention?: BirthdayEarthElementOutputV3;
    five?: BirthdayEarthElementOutputV3;
    four?: BirthdayEarthElementOutputV3;
    one?: BirthdayEarthElementOutputV3;
    three?: BirthdayEarthElementOutputV3;
    two?: BirthdayEarthElementOutputV3;
  }

  export interface BirthdayEarthOutputV4 {
    attention?: BirthdayEarthElementOutputV4;
    five?: BirthdayEarthElementOutputV4;
    four?: BirthdayEarthElementOutputV4;
    one?: BirthdayEarthElementOutputV4;
    three?: BirthdayEarthElementOutputV4;
    two?: BirthdayEarthElementOutputV4;
  }

  export interface BirthdayEarthOutputV6 {
    attention?: BirthdayEarthElementOutputV6;
    five?: BirthdayEarthElementOutputV6;
    four?: BirthdayEarthElementOutputV6;
    one?: BirthdayEarthElementOutputV6;
    three?: BirthdayEarthElementOutputV6;
    two?: BirthdayEarthElementOutputV6;
  }

  export interface BirthdayFinishedData {
    birthdayId?: number;
    created?: Date;
    finishDay?: Date;
    finishState?: boolean;
    ip?: string;
  }

  export interface BirthdayFinishedInput {
    birthdayId?: string;
    finishDay?: number;
    finishState?: boolean;
  }

  export interface BirthdayGetTemplateInput {
    device?: UserDeviceInfo;
  }

  export interface BirthdayIdInput {
    id?: number;
  }

  export interface BirthdayInfoOutput {
    age?: number;
    aheadDay?: number;
    aheadTypeList?: Array<BirthdayAheadTypeInput>;
    animal?: string;
    betweenDay?: number;
    color?: string;
    created?: Date;
    day?: number;
    deleted?: boolean;
    id?: number;
    img?: string;
    imgUrl?: string;
    ip?: string;
    isImportant?: boolean;
    isLeapMonth?: boolean;
    isLunar?: number;
    isRemind?: boolean;
    isRemindDayAndDate?: boolean;
    longWord?: string;
    lunarWord?: string;
    month?: number;
    newLongWord?: string;
    nextBirthday?: Date;
    nickName?: string;
    phone?: string;
    pushDate?: Date;
    relation?: string;
    relationStr?: string;
    remark?: string;
    remindTime?: string;
    sortWord?: string;
    starPlace?: string;
    textColor?: string;
    titleWord?: string;
    updated?: Date;
    userCode?: number;
    userId?: number;
    version?: number;
    year?: number;
  }

  export interface BirthdayInfoOutputV3 {
    age?: number;
    aheadDay?: number;
    aheadTypeList?: Array<BirthdayAheadTypeInput>;
    animal?: string;
    betweenDay?: number;
    birthdayRelationshipColor?: string;
    birthdayRelationshipColorUrl?: string;
    birthdayRelationshipId?: number;
    birthdayRelationshipName?: string;
    color?: string;
    created?: Date;
    day?: number;
    deleted?: boolean;
    id?: number;
    img?: string;
    imgUrl?: string;
    ip?: string;
    isImportant?: boolean;
    isLeapMonth?: boolean;
    isLunar?: number;
    isRemind?: boolean;
    isRemindDayAndDate?: boolean;
    longWord?: string;
    lunarWord?: string;
    month?: number;
    newLongWord?: string;
    nextBirthday?: Date;
    nickName?: string;
    phone?: string;
    pushDate?: Date;
    relation?: string;
    relationStr?: string;
    remark?: string;
    remindTime?: string;
    sortWord?: string;
    starPlace?: string;
    textColor?: string;
    titleWord?: string;
    updated?: Date;
    userCode?: number;
    userId?: number;
    version?: number;
    year?: number;
  }

  export interface BirthdayListInput {
    relation?: string;
  }

  export interface BirthdayListInputV3 {
    birthdayRelationshipId?: number;
    relation?: string;
  }

  export interface BirthdayListOutput {
    birthdayList?: Array<BirthdayOutput>;
    totoroTips?: Array<string>;
  }

  export interface BirthdayLogAddInput {
    audioUrl?: string;
    content?: string;
    isPush?: boolean;
    relationId?: number;
    remindTime?: string;
    sender?: string;
    templateId?: number;
    type?: number;
    userName?: string;
  }

  export interface BirthdayLogData {
    audioUrl?: string;
    content?: string;
    created?: Date;
    ip?: string;
    isPush?: boolean;
    nextTime?: Date;
    receiver?: string;
    relationId?: number;
    remindTime?: string;
    sender?: string;
    templateId?: number;
    type?: number;
  }

  export interface BirthdayLogUpdateInput {
    content?: string;
    id?: number;
    isPush?: boolean;
    remindTime?: string;
  }

  export interface BirthdayNickNameInput {
    nickName: string;
  }

  export interface BirthdayOutput {
    age?: number;
    aheadDay?: number;
    animal?: string;
    betweenDay?: number;
    color?: string;
    created?: Date;
    day?: number;
    id?: number;
    img?: string;
    isLeapMonth?: boolean;
    isLunar?: number;
    month?: number;
    nextBirthday?: Date;
    nickName?: string;
    phone?: string;
    pushDate?: Date;
    relation?: string;
    relationStr?: string;
    remark?: string;
    sortWord?: string;
    starPlace?: string;
    textColor?: string;
    titleWord?: string;
    updated?: Date;
    userCode?: number;
    year?: number;
  }

  export interface BirthdayOutputV4 {
    backgroundExtend?: object;
    backgroundImage?: string;
    backgroundLoadingImage?: string;
    backgroundType?: string;
    backgroundVideo?: string;
    birthdayRelationshipColor?: string;
    birthdayRelationshipColorUrl?: string;
    birthdayRelationshipId?: number;
    birthdayRelationshipName?: string;
    chineseZodiacIcon?: string;
    chineseZodiacName?: string;
    chineseZodiacType?: string;
    comeDesc?: string;
    comeType?: string;
    comeValue?: number;
    countdownDay?: number;
    created?: Date;
    createdTime?: Date;
    day?: string;
    futureDay?: string;
    id?: number;
    images?: Array<string>;
    img?: string;
    isIgnoreYear?: boolean;
    isImportant?: boolean;
    isLunar?: boolean;
    isRemind?: boolean;
    isRemindDayAndDate?: boolean;
    isSystemDefaultBackground?: boolean;
    name?: string;
    phone?: string;
    remark?: string;
    remindDays?: Array<BirthdayAheadTypeInput>;
    remindTime?: string;
    repeatType?: string;
    zodiacIcon?: string;
    zodiacName?: string;
    zodiacType?: string;
  }

  export interface BirthdayOutputV6 {
    appletId?: number;
    backgroundExtend?: object;
    backgroundImage?: string;
    backgroundLoadingImage?: string;
    backgroundType?: string;
    backgroundVideo?: string;
    birthdayRelationshipColor?: string;
    birthdayRelationshipColorUrl?: string;
    birthdayRelationshipId?: number;
    birthdayRelationshipName?: string;
    chineseZodiacIcon?: string;
    chineseZodiacName?: string;
    chineseZodiacType?: string;
    comeDesc?: string;
    comeType?: string;
    comeValue?: number;
    countdownDay?: number;
    created?: Date;
    createdTime?: Date;
    day?: number;
    futureDay?: string;
    id?: number;
    images?: Array<string>;
    img?: string;
    isIgnoreYear?: boolean;
    isImportant?: boolean;
    isLeapMonth?: boolean;
    isLunar?: boolean;
    isRemind?: boolean;
    isRemindDayAndDate?: boolean;
    isSystemDefaultBackground?: boolean;
    month?: number;
    name?: string;
    phone?: string;
    remark?: string;
    remindDays?: Array<BirthdayAheadTypeInput>;
    remindTime?: string;
    repeatType?: string;
    timeStyle?: string;
    year?: number;
    zodiacIcon?: string;
    zodiacName?: string;
    zodiacType?: string;
  }

  export interface BirthdayReciprocalViewListOutput {
    list?: Array<BirthdayReciprocalViewOutput>;
  }

  export interface BirthdayReciprocalViewOutput {
    age?: number;
    created?: Date;
    dayCount?: number;
    id?: number;
    img?: string;
    imgUrl?: string;
    importance?: number;
    intervalType?: number;
    shortTitle?: string;
    title?: string;
    todoClassifyId?: number;
    todoDate?: Date;
    todoType?: number;
    updated?: Date;
    version?: number;
  }

  export interface BirthdayRelationData {
    aheadDay?: number;
    aheadType?: string;
    created?: Date;
    day?: number;
    id?: number;
    img?: string;
    ip?: string;
    isImportant?: boolean;
    isLeapMonth?: boolean;
    isLunar?: number;
    isRemind?: boolean;
    isRemindDayAndDate?: boolean;
    month?: number;
    nextBirthday?: Date;
    nickName?: string;
    phone?: string;
    pushDate?: Date;
    relation?: string;
    remark?: string;
    remindTime?: string;
    year?: number;
  }

  export interface BirthdayRelationInput {
    endDay?: Date;
  }

  export interface BirthdayRelationOutput {
    age?: number;
    aheadDay?: number;
    animal?: string;
    betweenDay?: number;
    color?: string;
    created?: Date;
    day?: number;
    deleted?: boolean;
    id?: number;
    img?: string;
    imgUrl?: string;
    ip?: string;
    isLeapMonth?: boolean;
    isLunar?: number;
    longWord?: string;
    lunarWord?: string;
    month?: number;
    nextBirthday?: Date;
    nickName?: string;
    phone?: string;
    pushDate?: Date;
    relation?: string;
    relationStr?: string;
    remark?: string;
    sortWord?: string;
    starPlace?: string;
    textColor?: string;
    titleWord?: string;
    updated?: Date;
    userCode?: number;
    userId?: number;
    version?: number;
    year?: number;
  }

  export interface BirthdayRelationshipAddInput {
    name?: string;
    remark?: string;
  }

  export interface BirthdayRelationshipDeleteAllInput {
    id?: number;
  }

  export interface BirthdayRelationshipDeleteInput {
    id?: number;
    newId?: number;
  }

  export interface BirthdayRelationshipDetailOutput {
    empty?: boolean;
    id?: number;
    name?: string;
  }

  export interface BirthdayRelationshipIdInput {
    id?: number;
  }

  export interface BirthdayRelationshipSortInput {
    ids?: Array<number>;
  }

  export interface BirthdayRelationshipUpdateInput {
    id?: number;
    name?: string;
  }

  export interface BirthdayShortcutAppletOutput {
    age?: number;
    birthdayRelationshipColor?: string;
    birthdayRelationshipColorUrl?: string;
    created?: Date;
    dayCount?: number;
    id?: number;
    img?: string;
    imgUrl?: string;
    importance?: number;
    intervalType?: number;
    isImportant?: boolean;
    relation?: string;
    shortTitle?: string;
    title?: string;
    todoClassifyId?: number;
    todoDate?: Date;
    todoType?: number;
    updated?: Date;
    version?: number;
  }

  export interface BirthdayTemplateBlessOutput {
    birthdayTemplateOutputList?: Array<BirthdayTemplateOutput>;
    isPush?: boolean;
    remindTime?: string;
    sender?: string;
  }

  export interface BirthdayTemplateOutput {
    content?: string;
    contentCenterHorizontal?: boolean;
    contentHeight?: string;
    contentTextColor?: string;
    contentTextSize?: string;
    contentWidth?: string;
    contentX?: string;
    contentY?: string;
    fromNickName?: string;
    gifUrl?: string;
    id?: number;
    imgUrl?: string;
    isPush?: boolean;
    memberExclusive?: boolean;
    remindTime?: string;
    shareUrl?: string;
    toCenterHorizontal?: boolean;
    toNickName?: string;
    toTextColor?: string;
    toTextSize?: string;
    toX?: string;
    toY?: string;
    ttf?: string;
    type?: number;
  }

  export interface BirthdayTemplateVo {
    content?: string;
    gifUrl?: string;
    id?: number;
    imgUrl?: string;
    memberExclusive?: boolean;
    size?: string;
    sort?: number;
    status?: string;
    templateType?: string;
  }

  export interface BirthdayTodoViewInput {
    endDate?: Date;
    startDate?: Date;
  }

  export interface BirthdayTodoViewListOutput {
    list?: Array<BirthdayTodoViewOutput>;
  }

  export interface BirthdayTodoViewOutput {
    created?: Date;
    finishState?: number;
    id?: number;
    importance?: number;
    intervalType?: number;
    offset?: number;
    shortTitle?: string;
    title?: string;
    todoClassifyId?: number;
    todoTime?: Date;
    todoType?: number;
    updated?: Date;
    version?: number;
    widgetSubTitle?: string;
  }

  export interface BlessingWordsTemplatesInput {
    device?: UserDeviceInfo;
    relationId?: number;
  }

  export interface CountResponse {
    count?: number;
  }

  export interface DateRangeRequest {
    endDate?: Date;
    startDate?: Date;
  }

  export interface IdData {
    id?: number;
  }

  export interface IdRequest {
    id?: string;
  }

  export interface IdResponse {
    code?: number;
    data?: IdData;
    msg?: string;
  }

  export interface IdsRequest {
    ids: Array<number>;
  }

  export interface KeywordRequest {
    keyword?: string;
  }

  export interface PaginableRequest {
    currentPage: number;
    keyword?: string;
    pageSize: number;
  }

  export interface ReciprocalViewRequest {
    currentPage: number;
    isHiddenFinish?: boolean;
    keyword?: string;
    pageSize: number;
    refYear?: number;
  }

  export interface Rule {
    expression?: string;
    repeatValue?: number;
    type?: string;
  }

  export interface SyncDataAppletFinishResponse {
    finishDate?: Date;
    finishState?: boolean;
    id?: number;
  }

  export interface SyncDataAppletResponse {
    aheadTime?: string;
    created?: Date;
    deleted?: boolean;
    extend?: object;
    id?: number;
    ruleList?: Array<Rule>;
    shortTitle?: string;
  }

  export interface SyncDataRequest {
    fromId: number;
    fromVersion: number;
    pageSize: number;
    toVersion: number;
  }

  export interface UpdateTimeStyleInput {
    appletId: number;
    id: number;
    timeStyle: string;
  }

  export interface BirthDayRelation {
    name?: string;
    num?: number;
  }

  export interface BatchAddUsingPOSTV2RequestBody {
    birthDayLimitCount?: number;
    birthdayInfos?: Array<UpdateUsingPOST_2RequestBody>;
  }

  export interface BatchAddUsingPOSTRequestBody {
    birthDayLimitCount?: number;
    birthdayInfos?: Array<BirthDayInfomation>;
  }

  export interface UpdateUsingPOST_2RequestBody {
    aheadDay?: number;
    aheadTypeList?: Array<BirthdayAheadTypeInput>;
    birthDayLimitCount?: number;
    birthdayCountLimit?: number;
    birthdayRelationshipId?: number;
    day?: number;
    id?: number;
    img?: string;
    isImportant?: boolean;
    isLeapMonth?: boolean;
    isLunar?: number;
    isRemind?: boolean;
    isRemindDayAndDate?: boolean;
    month?: number;
    nickName?: string;
    phone?: string;
    relation?: string;
    remark?: string;
    remindTime?: string;
    userCode?: number;
    year?: number;
  }

  export interface BirthDayInfomation {
    aheadDay?: number;
    aheadTypeList?: Array<BirthdayAheadTypeInput>;
    birthDayLimitCount?: number;
    birthdayCountLimit?: number;
    day?: number;
    id?: number;
    img?: string;
    isImportant?: boolean;
    isLeapMonth?: boolean;
    isLunar?: number;
    isRemind?: boolean;
    isRemindDayAndDate?: boolean;
    month?: number;
    nickName?: string;
    phone?: string;
    relation?: string;
    remark?: string;
    remindTime?: string;
    userCode?: number;
    year?: number;
  }

  export interface GetWebBirthDayCardUsingPOSTRequestBody {
    audioUrl?: string;
    content?: string;
    fromUserName?: string;
    id?: number;
    template?: BirthdayTemplateVo;
    templateId?: number;
    toUserName?: string;
  }
}
