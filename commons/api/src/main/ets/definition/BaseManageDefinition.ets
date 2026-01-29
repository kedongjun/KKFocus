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

export namespace BaseManageDefinition {
  export interface AddAppletHistoryInput {
    appletId: number;
    dataIds: Array<number>;
    dataVersion?: string;
  }

  export interface AddAppletHistoryInputV2 {
    appletId: number;
    created: Date;
    dataId: number;
    params?: object;
    subTitle?: string;
    title?: string;
  }

  export interface AddSystemSkinImgInput {
    systemSkinImgId?: number;
  }

  export interface AddSystemSkinThemeInput {
    systemSkinThemeId?: number;
  }

  export interface AppletCommandHelpOutput {
    appletCommandList?: Array<AppletCommandOutput>;
    id?: number;
    priority?: number;
    typeName?: string;
  }

  export interface AppletCommandItemOutput {
    commandType?: string;
    content?: string;
    createdDateTime?: Date;
    desc?: string;
    id?: number;
    priority?: number;
  }

  export interface AppletCommandOutput {
    appletCommandItems?: Array<AppletCommandItemOutput>;
    appletIconUrl?: string;
    appletName?: string;
    id?: number;
    priority?: number;
  }

  export interface AppletCommandTipListOutputV2 {
    addList?: Array<AppletCommandTipOutputV2>;
    aiList?: Array<AppletCommandTipOutputV2>;
    openList?: Array<AppletCommandTipOutputV2>;
  }

  export interface AppletCommandTipOutput {
    content?: string;
    id?: number;
  }

  export interface AppletCommandTipOutputV2 {
    commandType?: string;
    content?: string;
    type?: string;
    id?: number | string;
  }

  export interface AppletCountDto {
    applist_page1?: AppListPageOne;
  }

  export interface AppletCountOutput {
    count?: number;
  }

  export interface AppletDesc {
    appletIcon?: string;
    appletId?: number;
    appletName?: string;
  }

  export interface AppletFirstEnterInput {
    appletId: number;
  }

  export interface AppletGuideOutput {
    appletIdSet?: Array<number>;
  }

  export interface AppletHistoryDateInput {
    endDate: Date;
    startDate: Date;
  }

  export interface AppletIdAndDataVersionRequest {
    appletId: number;
    dataVersion: string;
  }

  export interface AppletIdInput {
    appletId: number;
  }

  export interface AppletIdRequest {
    appletId: number;
  }

  export interface AppletIdsAndPositionRequest {
    dataVersion: string;
    defaultViewed?: boolean;
    ids: Array<number>;
    position: string;
  }

  export interface AppletIdsRequest {
    dataVersion: string;
    ids: Array<number>;
  }

  export interface AppletImportLogInput {
    appletId?: number;
    endTime?: Date;
    importTypeEnum?: string;
    livelihoodUserId?: number;
    startTime?: Date;
    status?: string;
    transferCode?: number;
    transferId?: number;
    transferMsg?: string;
    userPhone?: string;
  }

  export interface AppletKeywordInput {
    dataVersion: string;
    keyword?: string;
  }

  export interface AppletReadedInput {
    appletId: number;
    operate?: string;
  }

  export interface AppletRemindDayInput {
    checked: boolean;
    offset: number;
  }

  export interface AppletRemindInput {
    appletId?: number;
    remindType?: string;
    reminded?: boolean;
  }


  export interface AppletRemindQueryInput {
    appletId?: number;
    dataVersion: string;
    remindType?: string;
  }

  export interface AppletRemindTemplateInput {
    appletId: number;
    dataVersion: string;
  }

  export interface AppletTopedInput {
    appletId: number;
    toped: boolean;
  }

  export interface BatchAppletRemindTemplateInput {
    appletId: number;
    dataVersion: string;
    userIds: Array<number>;
  }

  export interface BatchAppletRemindTemplateOutput {
    appletId?: number;
    remindDays?: Array<AppletRemindDayInput>;
    remindTime?: LocalTime;
    userId?: number;
  }

  export interface ConfigDto {
    filterParams?: FilterParamDto;
  }

  export interface DataVersionInput {
    dataVersion: string;
  }

  export interface DeleteSkinInput {
    id?: string;
  }

  export interface FastAppletSwitchItem {
    appletId: number;
    state: boolean;
  }

  export interface FilterParamDto {
    appletId?: number;
  }

  export interface FinishAppletGuideInput {
    appletId: string;
  }

  export interface FocusFullScreenColorOutput {
    appletId?: number;
    appletName?: string;
    bgColorStart?: string;
    id?: string;
    isDefault?: number;
    skinName?: string;
    skinSort?: number;
    version?: string;
    localColor?: boolean //是否为本地颜色  自定义字段
  }

  export interface FocusFullScreenImgOutput {
    appletId?: number;
    appletName?: string;
    id?: string;
    isDefault?: number;
    preView?: string;
    skinImg?: string;
    skinName?: string;
    skinSort?: number;
    version?: string;
  }

  export interface FocusFullScreenSkinOutput {
    color?: Array<FocusFullScreenColorOutput>;
    img?: Array<FocusFullScreenImgOutput>;
  }

  export interface GetAppletHistoryInput {
    dataVersion: string;
    id?: number;
    limitCount?: number;
  }

  export interface GetAppletHistoryOutput {
    appletId?: number;
    created?: Date;
    dataId?: number;
    id?: number;
  }

  export interface GetAppletHistoryOutputV2 {
    appletId?: number;
    createdDateTime?: Date;
    dataId?: number;
    iconImageUrl?: string;
    id?: number;
    month?: number;
    params?: object;
    subTitle?: string;
    title?: string;
    year?: number;
  }

  export interface GetCommandHelpInput {
    dataVersion?: string;
  }

  export interface GuideAddInput {
    dataVersion?: string;
    guideCode?: string;
    guideType?: string;
    step?: number;
  }

  export interface GuideBacthQueryInput {
    guides?: Array<GuideQueryInput>;
  }

  export interface GuideOutPut {
    dataVersion?: string;
    guideCode?: string;
    guideType?: string;
    step?: number;
  }

  export interface GuideQueryInput {
    dataVersion?: string;
    guideCode?: string;
    guideType?: string;
  }

  export interface HideFinishedInput {
    hide?: string;
  }

  export interface HideFinishedOutput {
    hide?: string;
  }

  export interface IdsData {
    ids?: Array<number>;
  }

  export interface IdsRequest {
    ids: Array<number>;
  }

  export interface IdsResponse {
    code?: number;
    data?: IdsData;
    msg?: string;
  }

  export interface LocalTime {
    hour?: number;
    minute?: number;
    nano?: number;
    second?: number;
  }

  export interface MasterRemindInput {
    masterReminded?: boolean;
    remindType?: string;
  }

  export interface MyAppletTipsOutput {
    appletId?: number;
    appletSubTitle?: string;
    content?: string;
    lastTime?: Date;
    pushTime?: Date;
    subTitle?: string;
    toped?: boolean;
    unreadCount?: number;
  }

  export interface MySkinOutput {
    skinImgList?: Array<MySkinOutputItem>;
  }

  export interface MyTabInput {
    dataVersion: string;
    ids: Array<string>;
  }

  export interface MyTabOutput {
    rows: Array<string>;
  }

  export interface MyThemeListOutput {
    mySkinThemeList?: Array<MySkinThemeItem>;
  }

  export interface NeedSyncOutput {
    needPopup?: boolean;
    needSync?: boolean;
  }

  export interface NewUserSubscribeRequest {
    dataVersion: string;
    gender?: string;
    job?: string;
  }

  export interface OverAllRecordAddInput {
    appletId?: number;
    content?: string;
  }

  export interface OverAllRecordOutput {
    appletId?: number;
    content?: string;
    dateTime?: Date;
  }

  export interface OverAllRecordQueryInput {
    beginTime?: Date;
    endTime?: Date;
  }

  export interface PaginableRequest {
    currentPage: number;
    keyword?: string;
    pageSize: number;
  }

  export interface QueryAppletWithStateInput {
    dataVersion: string;
    showRecordApplet?: boolean;
  }

  export interface RemindQueryInput {
    dataVersion: string;
    remindType?: string;
  }

  export interface RingOutput {
    ringId?: string;
    ringLong?: number;
    ringName?: string;
    ringUrl?: string;
  }

  export interface RingQueryByUserInput {
    appletId?: number;
    dataVersion?: string;
  }

  export interface RingRecordAddInput {
    appletId?: number;
    code?: string;
    dataVersion?: string;
    fileName?: string;
    ringType?: string;
    title?: string;
  }

  export interface RingRecordOutput {
    appletId?: number;
    code?: string;
    fileName?: string;
    ringType?: string;
    ringUrl?: string;
    title?: string;
  }

  export interface SetAppletRemindDayInput {
    appletId: number;
    dataVersion?: string;
    remindDays: Array<AppletRemindDayInput>;
  }

  export interface SetAppletRemindTimeInput {
    appletId: number;
    dataVersion?: string;
    remindTime: string;
  }

  export interface SkinOutput {
    skinImgList?: Array<MySkinOutputItem>;
    systemSkinImgList?: Array<SystemSkinImgItem>;
  }

  export interface SpecialSkinImgInput {
    configs?: Array<ConfigDto>;
  }

  export interface SpecialSkinImgListOutput {
    SysSkinImg?: Array<SpecialSkinImgOutput>;
  }

  export interface SpecialSkinImgOutput {
    animate?: string;
    appletId?: number;
    channelType?: string;
    classifyId?: number;
    explanation?: string;
    holder?: string;
    id?: number;
    isDefault?: boolean;
    memberExclusive?: boolean;
    preView?: string;
    skinImg?: string;
    skinName?: string;
    version?: string;

    /**
     *用于适配保存本地自定义背景透明度
     */
    opacity?: number
  }

  export interface StickerListOutput {
    stickerList?: Array<StickerOutput>;
  }

  export interface StickerOutput {
    engType?: string;
    fileSize?: number;
    height?: number;
    name?: string;
    type?: string;
    url?: string;
    width?: number;
  }

  export interface SyncDataRequest {
    fromId: number;
    fromVersion: number;
    pageSize: number;
    toVersion: number;
  }

  export interface SystemSkinAiOutput {
    aiHouseImgUrl?: string;
    aiHouseSvgaUrl?: string;
    aiSvgaUrl?: string;
    preView?: string;
    preViewIos?: string;
    skinImg?: string;
    skinName?: string;
    systemSkinAiId?: number;
  }

  export interface SystemSkinNameplateOutput {
    bgPreView?: string;
    channelType?: string;
    preView?: string;
    skinImg?: string;
    skinImgIOS?: string;
    skinName?: string;
    systemSkinNameplateId?: number;
  }

  export interface ThemeCenterOutput {
    materialLibraryList?: Array<MaterialLibrary>;
    mySkinThemeList?: Array<MySkinThemeItem>;
  }

  export interface TryAddAppletImportLogOutput {
    manualImportEndTime?: Date;
  }

  export interface UpdateAppletImportConfigInput {
    appletId?: number;
    importSwitch?: boolean;
  }

  export interface ViewDisplayModifySwitchInput {
    appletList?: Array<ViewDisplaySwitchItem>;
    viewType: string;
  }

  export interface ViewDisplayOutput {
    appletIcon?: string;
    appletId?: number;
    appletName?: string;
    state?: boolean;
  }

  export interface ViewDisplayOutputV2 {
    appletId?: number;
    appletName?: string;
    previewImg?: string;
    sort?: number;
    state?: boolean;
    subViewList?: Array<ViewDisplayOutput>;
  }

  export interface ViewDisplayOutputV2List {
    rows?: ViewDisplayOutputV2[]
  }

  export interface ViewDisplaySwitchItem {
    appletId: number;
    state: boolean;
  }

  export interface ViewTypeInput {
    dataVersion: string;
    viewType: string;
  }

  export interface OtherItem {
    appletId?: string;
    appletName?: string;
    selected?: boolean;
    tabPreviewImgs?: string;
  }

  export interface QueryTabListUsingPOSTRsp {
    appletList?: Array<OtherItem>;
    otherList?: Array<OtherItem>;
  }

  export interface AppListPageOne {
    top5List?: Array<AppletDesc>;
  }

  export interface ExperienceData {
    color?: string;
    desc?: string;
    icon?: string;
    id?: number;
    name?: string;
  }

  export interface GetAppletByIdsUsingPOSTRsp {
    appletFastIcon?: string;
    appletIcon?: string;
    appletId?: number;
    appletName?: string;
    appletSubTitle?: string;
    appletType?: string;
    appletTypeColor?: string;
    appletTypeName?: string;
    cannotUnsubscribe?: boolean;
    defaulted?: boolean;
    exampleData?: string;
    operate?: string;
    path?: string;
    reminded?: boolean;
    sort?: number;
    userGuideSubTitle?: string;
    viped?: boolean;
  }

  export interface GetAppletImportLogUsingPOSTRsp {
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

  export interface QueryAppletWithStateUsingPOSTRsp {
    appletFastIcon?: string;
    appletIcon?: string;
    appletId?: number;
    appletName?: string;
    appletSubTitle?: string;
    appletType?: string;
    appletTypeColor?: string;
    appletTypeName?: string;
    cannotUnsubscribe?: boolean;
    defaulted?: boolean;
    exampleData?: string;
    operate?: string;
    path?: string;
    reminded?: boolean;
    sort?: number;
    subscribed?: boolean;
    subscribedSort?: number;
    userGuideSubTitle?: string;
    viped?: boolean;
  }

  export interface QueryMyAppReMindListWithMasterUsingPOSTRsp {
    masterReminded?: boolean;
    remindList?: Array<QueryAppletRemindUsingPOSTRsp>;
  }

  export interface ViewDisplayByAppletIdUsingPOSTRequestBody {
    appletId: number;
    dataVersion: string;
    viewType: string;
  }

  export interface GetMyAppletSwitchUsingPOSTRsp {
    appletId?: number;
    dayViewed?: boolean;
    monthViewed?: boolean;
    reminded?: boolean;
    viewed?: string;
    weekViewed?: boolean;
    yearViewed?: boolean;
  }

  export interface GetAppletFirstEnterStatusUsingPOSTRsp {
    exampleData?: boolean;
  }

  export interface PreviewUsingPOSTRsp {
    appletIcon?: string;
    appletId?: number;
    appletIntroduce?: string;
    appletName?: string;
    appletPreviewImgs?: Array<string>;
    experienceDataList?: Array<ExperienceData>;
    path?: string;
    subscribed?: boolean;
    userGuideSubTitle?: string;
  }

  export interface PppletSortAndSubscribeUsingPOSTResuestBody {
    dataVersion: string;
    otherSortList?: Array<number>;
    sortList?: Array<number>;
  }

  export interface GetFastAppletStateUsingPOSTRsp {
    appletId?: number;
    state?: boolean;
  }

  export interface QueryUsingPOSTRsp {
    appletFastPreviewImgs?: string;
    appletIcon?: string;
    appletId?: string;
    appletName?: string;
    appletSubTitle?: string;
    appletType?: string;
    appletTypeColor?: string;
    appletTypeName?: string;
    cannotUnsubscribe?: boolean;
    defaulted?: boolean;
    path?: string;
    showNum?: number;
    state?: boolean;
    subWidgetList?: Array<QueryUsingPOSTRsp>;
    subscribed?: boolean;
    textColor?: string;
    viped?: boolean;

    //自定义属性
    appletImg?: ResourceStr
    sortIndex?: number
  }

  export interface QueryAllUsingPOST_1Rsp {
    otherSortList?: Array<QueryUsingPOSTRsp>;
    sortList?: Array<QueryUsingPOSTRsp>;
  }

  export interface AppletManageV2UsingPOSTRequestBody {
    appletList?: Array<FastAppletSwitchItem>;
  }

  export interface GetFastAppletStateUsingPOSTRequestBody {
    appletId: number;
  }

  export interface SyncSortUsingPOSTRsp {
    sortList?: Array<number>;
  }

  export interface MySkinThemeItem {
    canDelete?: boolean;
    extraData?: ThemeExtraData;
    id?: number;
    preView?: string;
    skinName?: string;
    sortType?: string;
    sortTypeEng?: string;
    statusBarIsWhite?: boolean;
    systemSkinThemeId?: string;
    tabTitleColorDef?: string;
    tabTitleColorSel?: string;
    themeColor?: string;
    themeZipUrl?: string;
    themeZipUrlIos?: string;
  }

  export interface QueryAppletRemindUsingPOSTRsp {
    appletId?: number;
    appletName?: string;
    reminded?: boolean;
  }

  export interface GetAppletRemindConfigUsingPOSTRsp {
    appletId?: number;
    isRemind?: boolean;
    remindDays?: Array<AppletRemindDayInput>;
    remindTime?: string;
    ringName?: string;
    ringType?: string;
  }

  export interface MySkinOutputItem {
    baseDisplay?: boolean;
    channelType?: string;
    id?: number;
    preView?: string;
    skinImg?: string;
    skinName?: string;
    skinType?: string;
    sortType?: string;
    sortTypeEng?: string;
    systemSkinImgId?: number;
    userId?: number;
    version?: string;

    //本地自定义字段
    isLocal?: boolean //是否为本地资源背景
    isAppletDefaultBg?: boolean //是否为应用默认背景
  }

  export interface MaterialLibrary {
    extraData?: ThemeExtraData;
    preView?: string;
    selected?: boolean;
    skinName?: string;
    sortType?: string;
    sortTypeEng?: string;
    statusBarIsWhite?: boolean;
    systemSkinThemeId?: string;
    tabTitleColorDef?: string;
    tabTitleColorSel?: string;
    themeColor?: string;
    themeZipUrl?: string;
    themeZipUrlIos?: string;

    //自定义字段
    canDelete?: boolean
  }

  export interface ThemeExtraData {
    cardAlpha?: number
    bgBrightness?: number
  }

  export interface SystemSkinImgItem {
    baseDisplay?: boolean;
    channelType?: string;
    preView?: string;
    selected?: boolean;
    skinImg?: string;
    skinName?: string;
    sortType?: string;
    sortTypeEng?: string;
    systemSkinImgId?: number;
    version?: string;

    //自定义字段
    isLocal?: boolean;
    isAppletDefaultBg?: boolean //是否为应用默认背景
  }
}
