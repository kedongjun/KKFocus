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

export namespace BaseUserDefinition {
  export interface AdOutput {
    adPosition?: string;
    adThirdpartyId?: string;
    adThirdpartySource?: string;
    adThirdpartyType?: string;
    id?: number;
  }

  export interface AddIntentInput {
    jsResult?: string;
    originWords?: string;
    sceneType?: string;
    userIntent?: string;
  }

  export interface AddUserActionInput {
    config: string;
    device: UserDeviceInfo;
    type: string;
  }

  export interface AddUserActionOutput {
    result?: boolean;
  }

  export interface AfterSalesInput {
    afterSalesDesc?: string;
    afterSalesImg?: string;
    afterSalesReason?: string;
    afterSalesStatusForUser?: number;
    id?: number;
  }

  export interface AppDailySettingInput {
    sortValues: Array<string>;
    unsubscribes?: Array<string>;
    version: string;
  }

  export interface AppletIdInput {
    appletId: number;
  }

  export interface BindWeChatInput {
    city?: string;
    country?: string;
    device?: UserDeviceInfo;
    headimgurl?: string;
    iconurl?: string;
    language?: string;
    name?: string;
    nickname?: string;
    openid?: string;
    province?: string;
    sex?: string;
    unionid?: string;
  }

  export interface BindWeChatOutput {
    wxconcerns?: number;
  }

  export interface CategoryVo {
    id?: number;
    itemNumPrefix?: string;
    level?: number;
    name?: string;
    parentCategory?: CategoryVo;
    parentId?: number;
    sellPropList?: Array<SellPropertyItem>;
  }

  export interface ChangeCacheOpenidInput {
    secret?: string;
  }

  export interface ChangeEmailInput {
    code: string;
    email: string;
  }

  export interface ChangeMobileInput {
    areaCode?: string;
    code: string;
    device: UserDeviceInfo;
    mobile: string;
  }

  export interface ChangePasswordInput {
    newPassword: string;
    oldPassword: string;
  }

  export interface CheckFreeVipOutput {
    freeFlag?: boolean;
    freeVipInfo?: UserVipChargeOutput;
  }

  export interface CheckUserVipOutput {
    vip?: boolean;
  }

  export interface CodeInput {
    code: string;
    codeType: string;
  }

  export interface CouldBeCollectedInput {
    currentDateTime?: Date;
    templateId?: number;
  }

  export interface CouldBeCollectedOutput {
    beCollected?: string;
    userMottoId?: number;
  }

  export interface CountResponse {
    count?: number;
  }

  export interface Coupon {
    discount: number;
    originalPrice: number;
    price: number;
    productId: string;
  }

  export interface CustomInput {
    customType?: string;
    customValue?: string;
  }

  export interface CustomInputs {
    customInputs?: Array<CustomInput>;
  }

  export interface CustomListInput {
    customs?: Array<string>;
  }

  export interface CustomOutput {
    customType?: string;
    customValue?: string;
  }

  export interface CustomWXInfoOutput {
    nickName?: string;
    publicNo?: string;
  }

  export interface DailyDataTypeOutput {
    customValues?: Array<string>;
  }

  export interface DailyDataTypeSettingInput {
    customValues?: Array<string>;
    version?: string;
  }

  export interface DataBackupOutput {
    backupTime?: Date;
    halfYearBackupList?: Array<UserDataBackupOutput>;
    lastExportTime?: Date;
  }

  export interface DataExportApplyOutput {
    begintime?: string;
    created?: number;
    datatype?: string;
    email?: string;
    endtime?: string;
    id?: number;
    status?: string;
    title?: string;
  }

  export interface DateRangeRequest {
    endDate?: Date;
    startDate?: Date;
  }

  export interface DeleteAllTodoAheadTimeInput {
    advanceMinute?: number;
  }

  export interface DeviceActivityInput {
    device?: UserDeviceInfo;
  }

  export interface DiscountInfo {
    couponDiscount?: number;
    couponId?: number | string;
    otherDiscount?: number;
  }

  export interface DuringTrialPeriodOutput {
    duringTrialPeriod?: boolean;
    remainCount?: number;
  }

  export interface EmptyTipOutput {
    emptyConfirmTip?: string;
    emptyTip?: string;
    resetConfirmTip?: string;
    resetTip?: string;
  }

  export interface EverydayMottoListByDateInput {
    mottoDate?: Date;
  }

  export interface EverydayMottoListByPageInput {
    contain?: boolean;
    currentPage: number;
    direction?: string;
    keyword?: string;
    mottoDate?: Date;
    pageSize: number;
  }

  export interface EverydayMottoListInput {
    currentPage: number;
    keyword?: string;
    pageSize: number;
  }

  export interface GeneralProfile {
    birthday?: Optional<Date>;
    birthdayShowLunar?: Optional<boolean>;
    gender?: Optional<number>;
    job?: Optional<string>;
  }

  export interface GetUserMyAppletInfoInput {
    customs?: Array<string>;
  }

  export interface IdRequest {
    id: string;
  }

  export interface ItemListInput {
    catId?: number;
    currentPage: number;
    keyword?: string;
    pageSize: number;
    rootCatId?: number;
    status?: string;
  }

  export interface ItemOrderOutput {
    address?: string;
    afterSalesStatusForUser?: number;
    backExpressNum?: string;
    expressNum?: string;
    id?: number;
    img?: string;
    itemStatusForUser?: number;
    maxRefundDate?: Date;
    maxServiceDate?: Date;
    mobile?: string;
    name?: string;
    payTime?: Date;
    payType?: string;
    price?: number;
    productValue?: number;
    recipient?: string;
    skuName?: string;
    status?: number;
  }

  export interface ItemSpecVo {
    id?: number;
    img?: string;
    name?: string;
  }

  export interface ItemVo {
    adImg?: string;
    catId?: number;
    category?: CategoryVo;
    content?: string;
    coverImg?: string;
    id?: number;
    img?: string;
    isExistOrder?: boolean;
    isReserve?: boolean;
    itemNum?: string;
    name?: string;
    publishEnd?: Date;
    publishStart?: Date;
    richText?: string;
    rootCatId?: number;
    sellPropSpecList?: Array<SellPropSpecItem>;
    skuList?: Array<sku>;
    status?: string;
  }

  export interface JoinOrLeaveRankInput {
    join?: boolean;
  }

  export interface LocalTime {
    hour?: number;
    minute?: number;
    nano?: number;
    second?: number;
  }

  export interface LoginInput {
    appType?: string;
    areaCode?: string;
    device?: UserDeviceInfo;
    mobile?: string;
    password?: string;
    type?: string;
  }

  export interface LoginOutput {
    appVersion?: string;
    areaCodeMobile?: MobileWithAreaCode;
    birthDay?: number;
    birthMonth?: number;
    birthYear?: number;
    channel?: string;
    channelName?: string;
    channelType?: string;
    created?: Date;
    deviceTag?: string;
    deviceType?: string;
    email?: string;
    gender?: number;
    id?: string;
    idCard?: string;
    job?: string;
    lastLoginTime?: Date;
    leapMonth?: string;
    lunar?: string;
    mobile?: string;
    nickname?: string;
    oldMobile?: string;
    openid?: string;
    pushToken?: string;
    pwdErrorCount?: number;
    qqBind?: string;
    qqName?: string;
    remark?: string;
    signature?: string;
    telecomOperators?: string;
    token?: string;
    type?: string;
    unionid?: string;
    uniqueKey?: string;
    uniqueid?: string;
    updated?: Date;
    userImage?: string;
    userName?: string;
    userToken?: string;
    wxBind?: string;
    wxConcerns?: string;
    userId?:string,
  }

  export interface LogoutInput {
    device: UserDeviceInfo;
  }

  export interface LotteryCouponOutput {
    discountRateStr?: string;
    limitDays?: number;
  }

  export interface LotteryOutput {
    currentPriceInfo?: UserVipChargeOutput;
    lotteryCouponInfo?: LotteryCouponOutput;
    lotteryPriceInfo?: UserVipChargeOutput;
    title?: string;
  }

  export interface LotteryPopOutput {
    currentPrice?: UserVipChargeOutput;
    popWindows?: boolean;
    title?: string;
  }

  export interface MemberAppTipOutput {
    desc1?: string;
    desc2?: string;
    exist?: boolean;
    id?: number;
    img?: string;
    subList?: Array<MemberAppTipSubOutput>;
  }

  export interface MemberAppTipSubOutput {
    desc1?: string;
    desc2?: string;
    id?: number;
    img?: string;
    link?: string;
  }

  export interface MemberCenterInput {
    couponId?: number | string;
  }

  export interface MemberCenterOutput {
    acquisitionList?: Array<Acquisition<object>>;
    prerogativeList?: Array<PrivilegeDto>;
  }

  export interface MemberPrerogativeOutput {
    prerogativeList?: Array<PrivilegeDto>;
  }

  export interface MemberSignOutput {
    todayReceivedReward?: boolean;
    todaySigned?: boolean;
    userSignContinuousDayCount?: number;
  }

  export interface MottoImportExportData {
    recordList?: Array<UserEverydayMottoOutput>;
  }

  export interface MottoTransferCondition {
    begin?: Date;
    end?: Date;
    futureUserId?: number;
    livelihoodUserId?: number;
    transferId?: number;
    userPhone?: string;
  }

  export interface MsgH5Vo {
    bannerImg?: string;
    bgColor?: string;
    id?: number;
    pageStyle?: number;
    pageType?: string;
    releaseTime?: string;
    richTextContent?: string;
    title?: string;
  }

  export interface MsgIdInput {
    msgId?: number;
  }

  export interface MsgListCheckInput {
    checkDay?: string;
    linkId?: number;
    type?: string;
  }

  export interface MsgListInput {
    configType?: string;
  }

  export interface MsgListSysMsgIdInput {
    id?: number;
  }

  export interface MsgListSysMsgInput {
    linkId?: number;
    type?: string;
  }

  export interface MsgOutput {
    bgImg?: string;
    content?: string;
    isTop?: boolean;
    msgId?: string;
    msgType?: string;
    pushTime?: string;
    title?: string;
    typeIcon?: string;
    typeName?: string;
    url?: string;
  }

  export interface MsgWrapOutput {
    list?: Array<MsgOutput>;
  }

  export interface PackageInput {
    packageName?: string;
  }

  export interface PaginableRequest {
    currentPage: number;
    keyword?: string;
    pageSize: number;
  }

  export interface QQBindOutput {
    qqBind?: string;
  }

  export interface QQLoginBindInput {
    appType?: string;
    areaCode?: string;
    code?: string;
    device?: UserDeviceInfo;
    mobile?: string;
    password?: string;
    shareCode?: string;
    type?: string;
    uniqueid?: string;
  }

  export interface QQLoginBindOneClickInput {
    accessToken?: string;
    appType?: string;
    areaCode?: string;
    device?: UserDeviceInfo;
    mobile?: string;
    mosaicMobile?: string;
    onceLoginChannel?: string;
    token?: string;
    type?: string;
    uniqueid?: string;
  }

  export interface QQLoginInput {
    city?: string;
    constellation?: string;
    device?: UserDeviceInfo;
    figureurl?: string;
    figureurl_1?: string;
    figureurl_2?: string;
    figureurl_qq?: string;
    figureurl_qq_1?: string;
    figureurl_qq_2?: string;
    figureurl_type?: string;
    gender?: string;
    iconurl?: string;
    is_lost?: string;
    is_yellow_vip?: string;
    is_yellow_year_vip?: string;
    level?: string;
    msg?: string;
    name?: string;
    nickname?: string;
    province?: string;
    ret?: string;
    uid?: string;
    unionid?: string;
    vip?: string;
    year?: string;
    yellow_vip_level?: string;
    access_token?:string,
    accessToken?:string,
    openid?:string,
    profile_image_url?:string,
    screen_name?:string,
  }

  export interface QQUnbindOutput {
    qqBind?: string;
  }

  export interface QQUserInfoOutput {
    uid?: string;
  }

  export interface QQWebLoginInput {
    code?: string;
    device?: UserDeviceInfo;
    host?: string;
  }

  export interface QQbindInput {
    city?: string;
    constellation?: string;
    figureurl?: string;
    figureurl_1?: string;
    figureurl_2?: string;
    figureurl_qq?: string;
    figureurl_qq_1?: string;
    figureurl_qq_2?: string;
    figureurl_type?: string;
    gender?: string;
    iconurl?: string;
    is_lost?: string;
    is_yellow_vip?: string;
    is_yellow_year_vip?: string;
    level?: string;
    msg?: string;
    name?: string;
    nickname?: string;
    province?: string;
    ret?: string;
    uid?: string;
    unionid?: string;
    vip?: string;
    year?: string;
    yellow_vip_level?: string;
  }

  export interface QuadrantInput {
    quadrant?: Array<CustomInput>;
    type?: string;
  }

  export interface RankUserInfo {
    gender?: string;
    job?: string;
    userId?: number;
    userImg?: string;
    userName?: string;
    vipId?: string;
  }

  export interface RedPackageLotteryDetailOutput {
    h5Text?: string;
    id?: number;
    joinNum?: number;
    lotteryStatus?: number;
    title?: string;
    total?: number;
  }

  export interface RedPackageLotteryIdInput {
    id: number;
    lotteryType: string;
  }

  export interface RedPackageLotteryInput {
    lotteryType: string;
  }

  export interface RedPackageLotteryLogOutput {
    id?: number;
    joinNum?: number;
    lotteryCode?: string;
    lotteryStatus?: number;
    money?: number;
    num?: number;
    status?: number;
    title?: string;
  }

  export interface RedPackageLotteryOutput {
    id?: number;
    itemMap?: Map<string, string>;
    lotteryCode?: string;
    lotteryStatus?: number;
    matched?: boolean;
    percent?: number;
    ruleDesc?: string;
    title?: string;
  }

  export interface RedPackageLotteryPageInput {
    currentPage: number;
    lotteryType: string;
    pageSize: number;
  }

  export interface RegisterInput {
    appType?: string;
    areaCode?: string;
    code?: string;
    device?: UserDeviceInfo;
    mobile?: string;
    password?: string;
    shareCode?: string;
    type?: string;
  }

  export interface RegisterOrLoginOneclickInput {
    accessToken?: string;
    appType?: string;
    areaCode?: string;
    device?: UserDeviceInfo;
    mobile?: string;
    mosaicMobile?: string;
    onceLoginChannel?: string;
    token?: string;
    type?: string;
  }

  export interface ReserveItemInput {
    itemId?: number;
  }

  export interface ResetPasswordByEmailInput {
    code: string;
    device?: UserDeviceInfo;
    email?: string;
    password: string;
  }

  export interface ResetPasswordInput {
    areaCode?: string;
    code: string;
    device?: UserDeviceInfo;
    mobile: string;
    password: string;
    shareCode?: string;
  }

  export interface SaveOrUpdateUserConfigPushInput {
    config?: string;
    type?: string;
  }

  export interface SetPasswordInput {
    device?: UserDeviceInfo;
    password: string;
    shareCode?: string;
  }

  export interface ShareCodeBindInput {
    areaCode?: string;
    mobile?: string;
    shareCode?: string;
  }

  export interface ShareCodeInfoInput {
    shareCode?: string;
  }

  export interface ShareCodeInfoOutput {
    allowSupplement?: boolean;
    msgCount?: number;
    ruleDesc2Android?: string;
    ruleDesc2Ios?: string;
    shareCode?: string;
    shareCount?: number;
  }

  export interface ShareCodeInviteListOutput {
    list?: Array<ShareCodeInviteOutput>;
  }

  export interface ShareCodeInviteOutput {
    mobile?: string;
    payed?: boolean;
    shareDay?: string;
  }

  export interface ShareCodeLogInput {
    shareCode?: string;
  }

  export interface SignDayOutput {
    day?: Date;
    signed?: boolean;
  }

  export interface SignDetailInput {
    endDay?: Date;
    startDay?: Date;
  }

  export interface SignDetailOutput {
    dayList?: Array<SignDayOutput>;
    rewardDay?: Date;
    signSuccess?: boolean;
    subTitle?: string;
    title?: string;
  }

  export interface StepOutput {
    rank?: string;
    step?: string;
    userInfo?: RankUserInfo;
  }

  export interface StepRankOutput {
    currentUserStepInfo?: StepOutput;
    joinRank?: boolean;
    stepRankList?: Array<StepOutput>;
  }

  export interface SupplementShareCodeInput {
    code?: string;
    shareCode?: string;
  }

  export interface SysMsgAddInput {
    appVersion?: string;
    channelType?: string;
    day?: number;
    endTime?: Date;
    id?: number;
    ip?: string;
    tempCode?: string;
    userId?: number;
  }

  export interface ToBeEndLotteryOutput {
    lotteryInfo?: LotteryOutput;
    popWindows?: boolean;
  }

  export interface TransferStatus {
    transferCode?: number;
    transferId?: number;
    transferMsg?: string;
  }

  export interface TransferUser {
    futureUserId?: number;
    livelihoodUserId?: number;
    userPhone?: string;
  }

  export interface UnBindOutput {
    result?: boolean;
  }

  export interface UnBindWeChatInput {
    type?: string;
  }

  export interface UnreadMsgOutput {
    unreadNum?: number;
  }

  export interface UpdateBackExpressNumInput {
    backExpressNum?: string;
    id?: number;
  }

  export interface UpdateImageInput {
    userImage?: string;
  }

  export interface UpdateRemarkInput {
    id: number;
    remark?: string;
  }

  export interface UpdateUserInfoInput {
    birthDay?: number;
    birthMonth?: number;
    birthYear?: number;
    customJob?: string;
    gender: number;
    job?: string;
    leapMonth?: string;
    lunar?: string;
    signature?: string;
    userName?: string;
  }

  export interface UpdateVersionInput {
    appType?: string;
    deviceType?: number;
    versionCode?: string;
  }

  export interface UploadStepInput {
    count?: number;
    day?: Date;
  }

  export interface UrlOutput {
    url?: string;
  }

  export interface UseableTypeButtonOutput {
    enabled?: boolean;
    lastExportDate?: Date;
    previewUrl?: string;
    recommendSectionUrl?: string;
    subTitle?: string;
    title?: string;
    type?: string;
  }

  export interface UserActionInput {
    appName?: string;
    appVersion?: string;
    config?: string;
    everyDayMottoTemplateId?: number;
    type?: string;
  }

  export interface UserActivitiesLogInput {
    eventType?: string;
    id?: number;
  }

  export interface UserActivitiesOutput {
    activitiesType?: string;
    content?: string;
    id?: number;
    img?: string;
    jumpType?: string;
    limitSeconds?: number;
    pushTime?: Date;
    title?: string;
    url?: string;
  }

  export interface UserAddressVo {
    address?: string;
    id?: number;
    mobile?: string;
    recipient?: string;
  }

  export interface UserAndDeviceOutput {
    appVersion?: string;
    deviceModel?: string;
    mobile?: string;
    userId?: number;
  }

  export interface UserAppManageClickInput {
    appCode?: string;
  }

  export interface UserAppManageInput {
    appCode?: string;
    grade: number;
    status?: number;
  }

  export interface UserAppletInput {
    rows?: Array<UserAppManageInput>;
  }

  export interface UserAuthGetCodeOutput {
    code?: string;
  }

  export interface UserAuthGetQrCodeOutput {
    expireTime?: number;
    qrCodeUrl?: string;
    uniKey?: string;
  }

  export interface UserAuthGetTokenOutput {
    access_token?: string;
    expires_in?: number;
    refresh_token?: string;
  }

  export interface UserAuthQrCodeResultOutput {
    accessToken?: string;
    status?: number;
  }

  export interface UserChangeMobileOutput {
    oldMobile?: string;
    pushToken?: string;
    token?: string;
  }

  export interface UserCollectionInput {
    userIds?: Array<number>;
  }

  export interface UserConfigPushInput {
    defaultValue?: string;
    type?: string;
  }

  export interface UserConfigPushOutput {
    config?: string;
    type?: string;
    userId?: number;
  }

  export interface UserConfigShowGetInput {
    defaultValue?: string;
    type?: string;
  }

  export interface UserConfigShowOutput {
    config?: string;
    type?: string;
  }

  export interface UserConfigShowSaveInput {
    config?: string;
    type?: string;
  }

  export interface UserCustomDto {
    config?: string;
    remark?: string;
    type?: string;
  }

  export interface UserDataBackupDto {
    created?: Date;
    remark?: string;
  }

  export interface UserDataBackupOutput {
    backupTime?: Date;
    id?: number;
  }

  export interface UserDataExportApplyAddInput {
    begintime?: Date;
    datatype?: string;
    email?: string;
    endtime?: Date;
  }

  export interface UserDataExportApplyDto {
    applydate?: Date;
    begintime?: Date;
    created?: Date;
    datatype?: string;
    dealetime?: Date;
    dealsttime?: Date;
    email?: string;
    endtime?: Date;
    filename?: string;
    ip?: string;
    remark?: string;
    sendetime?: Date;
    sendstime?: Date;
    status?: string;
  }

  export interface UserDataExportApplyOutput {
    applydate?: Date;
    begintime?: Date;
    created?: Date;
    datatype?: string;
    dealetime?: Date;
    dealsttime?: Date;
    deleted?: boolean;
    email?: string;
    endtime?: Date;
    filename?: string;
    id?: number;
    remark?: string;
    sendetime?: Date;
    sendstime?: Date;
    status?: string;
    updated?: Date;
    userId?: number;
  }

  export interface UserDataExportApplyUpdateInput {
    dealetime?: Date;
    dealsttime?: Date;
    filename?: string;
    id?: number;
    sendetime?: Date;
    sendstime?: Date;
    status?: string;
  }

  export interface UserDeviceOutput {
    address?: string;
    appVersion?: string;
    area?: string;
    channel?: string;
    channelName?: string;
    channelType?: string;
    city?: string;
    created?: Date;
    deleted?: boolean;
    deviceModel?: string;
    deviceTag?: string;
    deviceTagApp?: string;
    deviceType?: string;
    id?: number;
    ip?: string;
    isRoot?: boolean;
    lat?: string;
    lng?: string;
    mac?: string;
    osVersion?: string;
    province?: string;
    remark?: string;
    updated?: Date;
    userId?: number;
  }

  export interface UserDto {
    backupList?: Array<UserDataBackupDto>;
    birthDay?: number;
    birthMonth?: number;
    birthYear?: number;
    email?: string;
    exportList?: Array<UserDataExportApplyDto>;
    gender?: number;
    idCard?: string;
    job?: string;
    leapMonth?: string;
    lunar?: string;
    nickname?: string;
    openid?: string;
    qqName?: string;
    signature?: string;
    telecomOperators?: string;
    thirdList?: Array<UserThirdPartyDto>;
    unionid?: string;
    uniqueKey?: string;
    unsubscribeList?: Array<number>;
    userCustomList?: Array<UserCustomDto>;
    userExtendDto?: UserExtendDto;
    userImage?: string;
    userName?: string;
  }

  export interface UserEmptyInput {
    areaCode?: string;
    code?: string;
    device?: UserDeviceInfo;
    mobile?: string;
  }

  export interface UserEverydayMottoBatchDeleteInput {
    idList?: Array<string>;
  }

  export interface UserEverydayMottoCheckIsCollectedOutput {
    collectId?: number;
    isCollected?: boolean;
  }

  export interface UserEverydayMottoDeleteInput {
    id?: number| string;
  }

  export interface UserEverydayMottoInput {
    bgImg?: string;
    content?: string;
    creator?: string;
    enContent?: string;
    id?: string;
    imageUrl?: string;
    mottoDate?: string;
    pushTime?: string;
    remark?: string;
    templateId?: string;
    userContent?: string;
  }

  export interface UserEverydayMottoOutput {
    bgImg?: string;
    content?: string;
    creator?: string;
    enContent?: string;
    id: string;
    imageUrl?: string;
    ip?: string;
    mottoDate: string;
    pushTime: string;
    remark?: string;
    templateId?: string;
    userContent?: string;
    userId?: number;
    yearCount?: number;
  }

  export interface UserExtendDto {
    msgNum?: number;
    phoneNum?: number;
  }

  export interface UserGoodDeedDto {
    content: string;
  }

  export interface UserGoodDeedOutput {
    content?: string;
    day?: Date;
    gender?: string;
    time?: LocalTime;
    userImage?: string;
  }

  export interface UserHouseStateUpdateInput {
    useState?: string;
  }

  export interface UserImportExportData {
    userDto?: UserDto;
  }

  export interface UserInfoOutput {
    appVersion?: string;
    areaCodeMobile?: MobileWithAreaCode;
    birthDay?: number;
    birthDayVo?: string;
    birthMonth?: number;
    birthYear?: number;
    customJob?: string;
    email?: string;
    friendShareCodePath?: string;
    gender?: number;
    job?: string;
    leapMonth?: string;
    lunar?: string;
    mobile?: string;
    nickName?: string;
    oldMobile?: string;
    qqBind?: string;
    qqName?: string;
    registSeconds?: number;
    registTime?: Date;
    setPassword?: boolean;
    signature?: string;
    subscribeCount?: number;
    userId?: number;
    userImage?: string;
    userName?: string;
    wxBind?: string;
    wxConcerns?: string;
    wxNickName?: string;
  }

  export interface UserInviteOutput {
    inviteNum?: number;
    invited?: boolean;
    ruleDesc3Android?: string;
    ruleDesc3Ios?: string;
    shareCode?: string;
  }

  export interface UserInvoiceDto {
    amount: number;
    bankAccount?: string;
    created?: Date;
    depositBank?: string;
    email: string;
    headType: string;
    invoiceContent: string;
    invoiceHead: string;
    invoiceMethod: string;
    invoiceType: string;
    orderId: number;
    registeredAddress?: string;
    registeredPhone?: string;
    status?: number;
    taxId?: string;
  }

  export interface UserItemOrderInput {
    addressId: number;
    img: string;
    payType: string;
    price: number;
    productValue: number;
    skuId: number;
  }

  export interface UserMsgListCheckInput {
    type?: string;
  }

  export interface UserMsgListOutput {
    appVersion?: string;
    content?: string;
    created?: Date;
    day?: number;
    deleted?: boolean;
    endTime?: Date;
    id?: number;
    linkId?: number;
    tempCode?: string;
    title?: string;
    type?: string;
    unread?: boolean;
    updated?: Date;
  }

  export interface UserMsgListOutputList {
    list?: Array<UserMsgListOutput>;
  }

  export interface UserMsgListQueryBySysUserAdviceInput {
    linkId?: number;
    tempCode?: string;
  }

  export interface UserMsgListSysMsgAddInput {
    channelType?: string;
    content?: string;
    ip?: string;
    linkId?: number;
    tempCode?: string;
    userId?: number;
  }

  export interface UserMsgListSysMsgBatchAddInput {
    channelType?: string;
    content?: string;
    ip?: string;
    linkIds?: Array<number>;
    tempCode?: string;
    userId?: number;
  }

  export interface UserMsgListSysMsgListVersionInput {
    appVersion?: string;
    channelType?: string;
    serviceAppVersion?: string;
  }

  export interface UserMyAppletInfoOutput {
    userCustomMap?: Map<string, string>;
    userOutput?: UserOutput;
  }

  export interface UserOauthGetCodeInput {
    client_id?: number;
    redirect_uri?: string;
    response_type?: string;
    scope?: Array<string>;
    state?: string;
  }

  export interface UserOauthGetQrCodeInput {
    clientId?: number;
    device?: UserDeviceInfo;
    type?: string;
  }

  export interface UserOauthQrCodeResultInput {
    clientId: number;
    key: string;
  }

  export interface UserOauthQrCodeScanInput {
    qrCode: string;
  }

  export interface UserOauthScopeInput {
    client_id?: number;
    scope?: Array<string>;
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

  export interface UserPopupWindowInfoInput {
    appName?: string;
    appVersion?: string;
    everyDayMottoTemplateId?: number;
  }

  export interface UserPopupWindowOutput {
    everyDayMottoPopup?: boolean;
    isevaluate?: boolean;
  }

  export interface UserProblemHelpInput {
    appVersion?: string;
    channel?: string;
    comment?: string;
    deviceModel?: string;
    deviceType?: string;
    helpContent?: string;
    helpContentType?: number;
    solved?: boolean;
    webVersion?: string;
  }

  export interface UserProblemHelpOutput {
    appVersion?: string;
    channel?: string;
    comment?: string;
    created?: Date;
    deviceModel?: string;
    deviceType?: string;
    helpContent?: string;
    helpContentType?: number;
    id?: number;
    solved?: boolean;
    updated?: Date;
    userId?: number;
    webVersion?: string;
  }

  export interface UserProblemHelpQueryInput {
    helpContent?: string;
    helpContentType?: number;
    webVersion?: string;
  }

  export interface UserProblemHelpVersionInput {
    webVersion?: string;
  }

  export interface UserProductInput {
    productType?: string;
  }

  export interface UserProductOrderInput {
    payType: string;
    price: number;
    productId: string;
  }

  export interface UserProductOrderLogOutput {
    id?: number;
    name?: string;
    payTime?: Date | string;
    productName?: string;
    productType?: string;
  }

  export interface UserProductOrderOutput {
    id?: number;
    name?: string;
    price?: number;
    productId?: string;
  }

  export interface UserProductOutput {
    desc?: string;
    id?: number | string;
    isDefault?: boolean;
    name?: string;
    price?: number | string;
    productId?: string;
    productType?: string;
  }

  export interface UserProductPageInput {
    currentPage: number;
    keyword?: string;
    pageSize: number;
    productType?: string;
  }

  export interface UserQueryInput {
    appVersion?: string;
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

  export interface UserQueryOutput {
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
    result?: boolean;
    signature?: string;
    telecomOperators?: string;
    unionid?: string;
    uniqueKey?: string;
    updated?: Date;
    userCode?: number;
    userImage?: string;
    userName?: string;
  }

  export interface UserResetPasswordOutput {
    appVersion?: string;
    areaCodeMobile?: MobileWithAreaCode;
    birthDay?: number;
    birthMonth?: number;
    birthYear?: number;
    channel?: string;
    channelName?: string;
    channelType?: string;
    created?: Date;
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
    pushToken?: string;
    pwdErrorCount?: number;
    qqBind?: string;
    qqName?: string;
    remark?: string;
    signature?: string;
    telecomOperators?: string;
    token?: string;
    type?: string;
    unionid?: string;
    uniqueKey?: string;
    uniqueid?: string;
    updated?: Date;
    userImage?: string;
    userName?: string;
    userToken?: string;
    wxBind?: string;
    wxConcerns?: string;
  }

  export interface UserSettingInput {
    code?: string;
    zoneId?: number;
  }

  export interface UserShareCodeOutput {
    shareCode?: string;
  }

  export interface UserThirdPartyDto {
    accessToken?: string;
    appVersion?: string;
    authType?: string;
    avatar?: string;
    channel?: string;
    channelName?: string;
    channelType?: string;
    created?: Date;
    deviceTag?: string;
    deviceType?: string;
    gender?: string;
    info?: string;
    ip?: string;
    nickName?: string;
    remark?: string;
    uniqueId?: string;
  }

  export interface UserTimeZone {
    code?: string;
    name?: string;
    timeZoneOffset?: string;
    zoneId?: number;
  }

  export interface UserTransferCondition {
    begin?: Date;
    end?: Date;
    futureUserId?: number;
    livelihoodUserId?: number;
    transferId?: number;
    userPhone?: string;
  }

  export interface UserTransferData {
    transferStatus?: TransferStatus;
    transferUser?: TransferUser;
    userImportExportData?: UserImportExportData;
  }

  export interface UserVersionUpdateOutput {
    appSize?: string;
    appType?: string;
    created?: Date;
    deviceType?: number;
    downloadUrl?: string;
    forceUpdate?: boolean;
    id?: number;
    needUpdate?: boolean;
    title?: string;
    updateNotice?: string;
    updated?: Date;
    versionCode?: string;
    versionName?: string;
  }

  export interface UserVipActivityPayOrderInput {
    id: number;
    price: number;
    productId: string;
  }

  export interface UserVipChargeHistoryOutput {
    createdTime?: Date | string;
    id?: number;
    shortTitle?: string;
    title?: string;
  }

  export interface UserVipChargeListOutput {
    userVipChargeList?: Array<UserVipChargeOutput>;
    userVipCouponList?: Array<VipCoupon>;
  }

  export interface UserVipChargeOutput {
    activityType?: string;
    description?: string;
    discountInfo?: DiscountInfo;
    discountRate?: number;
    id?: number;
    isDescDeleteLine?: boolean;
    isLimit?: boolean;
    key?: string;
    label?: string;
    labelBgColor?: string;
    labelTextColor?: string;
    limitDays?: number;
    limitNum?: number;
    limitSeconds?: number;
    name?: string;
    price?: number;
    productId?: string;
    titleDesc?: string;
    vipPriceTypeOutput?: string;
    vipRuleType?: string;
    vipRuleValue?: number;
  }

  export interface UserVipIdCopywritingOutput {
    content?: string;
    preview?: string;
    title?: string;
  }

  export interface UserVipIdCreateOutput {
    result?: boolean;
  }

  export interface UserVipIdInput {
    vipId?: string;
  }

  export interface UserVipIdListInput {
    vipIdEnd?: string;
    vipIdStart?: string;
  }

  export interface UserVipIdOutput {
    occupy?: boolean;
    userImage?: string;
    vipId?: string;
  }

  export interface UserVipOutput {
    adList?: Array<AdOutput>;
    allLifeVip?: boolean;
    allLifeVipCornerIcon?: string;
    allLifeVipImage?: string;
    appVersion?: string;
    checkFreeVipInfo?: CheckFreeVipOutput;
    everVip?: boolean;
    expireDay?: number;
    id?: number;
    isPopupAllLifeVip?: boolean;
    isShowLimit?: boolean;
    isVip?: boolean;
    limitSeconds?: number;
    qq?: string;
    qqJumpKey?: string;
    registSeconds?: number;
    registTime?: string;
    resetState?: boolean;
    signature?: string;
    subscribeType?: string;
    userImage?: string;
    userName?: string;
    userVipIdCopywriting?: UserVipIdCopywritingOutput;
    vipEndTime?: string;
    vipId?: string;
    vipIdCreatedTime?: string;
    vipStartTime?: string;
    vipState?: boolean;
  }

  export interface UserVipPayOrderInput {
    price: number;
    productId: string;
  }

  export interface UserVipPayOrderOutput {
    id?: number;
    name?: string;
    price?: number;
    productId?: string;
  }

  export interface ValidateEmailCodeInput {
    code?: string;
    email?: string;
    unTieEmail?: boolean;
  }

  export interface ValidateEmailInput {
    email?: string;
  }

  export interface ValidateMessageCodeInput {
    code?: string;
  }

  export interface ValidateSmsCodeInput {
    areaCode?: string;
    code?: string;
    mobile?: string;
    unTieEmail?: boolean;
  }

  export interface ValidateSmsCodeOutput {
    type?: string;
  }

  export interface ValidateUserNewOrOldInput {
    areaCode?: string;
    mobile?: string;
  }

  export interface ValidateUserNewOrOldOutput {
    type?: string;
  }

  export interface VersionUpdateLogInput {
    eventType?: string;
    id?: number;
  }

  export interface VipActivityOutput {
    coupon?: Coupon;
    endDay?: Date;
    id?: number;
    limitNum?: number;
    limitSeconds?: number;
    ruleDesc?: string;
    secondCoupon?: Coupon;
    sort?: number;
    startDay?: Date;
    startTime?: LocalTime;
    status?: string;
  }

  export interface VipIapOrderUpdateEvent {
    extendParam?: object;
    orderId?: number;
    orderStatus?: string;
    paymentOrderId?: number;
    productId?: string;
    transactionId?: string;
    userId?: number;
  }

  export interface VipOrderUpdateEvent {
    orderId?: number;
    orderStatus?: string;
    paymentOrderId?: number;
    userId?: number;
  }

  export interface WeChatDailyDataTypeSettingInput {
    unsubscribes?: Array<string>;
  }

  export interface WeChatDailyDataTypeSortInput {
    sortValues: Array<string>;
  }

  export interface WxBindStatusOutput {
    nickname?: string;
    openid?: string;
    status?: string;
  }

  export interface WxLoginBindInput {
    appType?: string;
    areaCode?: string;
    code?: string;
    device?: UserDeviceInfo;
    mobile?: string;
    password?: string;
    shareCode?: string;
    type?: string;
    unionid?: string;
  }

  export interface WxLoginBindOneClickInput {
    accessToken?: string;
    appType?: string;
    areaCode?: string;
    device?: UserDeviceInfo;
    mobile?: string;
    mosaicMobile?: string;
    onceLoginChannel?: string;
    token?: string;
    type?: string;
    unionid?: string;
  }

  export interface WxLoginInput {
    city?: string;
    country?: string;
    device?: UserDeviceInfo;
    headimgurl?: string;
    iconurl?: string;
    language?: string;
    name?: string;
    nickname?: string;
    openid?: string;
    province?: string;
    sex?: string;
    unionid?: string;
  }

  export interface WxMiniAppletRegisterInput {
    areaCode?: string;
    device?: UserDeviceInfo;
    mobile?: string;
    unionid?: string;
  }

  export interface WxOrQqValidInput {
    thirdParty?: string;
    unionid?: string;
  }

  export interface WxTransferDto {
    id?: number;
    openid?: string;
    orderNo?: string;
    remark?: string;
    transferAmount?: number;
    userName?: string;
  }

  export interface WxUnionidLoginInput {
    device: UserDeviceInfo;
    openid?: string;
    unionid?: string;
  }

  export interface WxUserInfoOutput {
    info?: WxWebLoginInfo;
    unionid?: string;
  }

  export interface WxWebGetTokenByCodeInput {
    code?: string;
    pushChannel?: string;
  }

  export interface WxWebGetTokenByCodeOutput {
    isBind?: boolean;
    token?: string;
  }

  export interface WxWebLoginInfo {
    city?: string;
    country?: string;
    errcode?: string;
    headimgurl?: string;
    language?: string;
    nickname?: string;
    openid?: string;
    privilege?: Array<string>;
    province?: string;
    sex?: string;
    unionid?: string;
  }

  export interface WxWebLoginInput {
    code?: string;
    device?: UserDeviceInfo;
    host?: string;
  }

  export interface sku {
    discountPrice?: number;
    enabled?: boolean;
    id?: number;
    originalPrice?: number;
    soldNum?: number;
    specKey?: string;
    stock?: number;
  }

  export interface MemberTrialInfoUsingPOSTRsp {
    appletId?: number;
    content?: string;
    status?: string;
    trialDay?: number;
  }

  export interface VipCoupon {
    couponDiscount?: number;
    couponId?: number | string;
    expireDateTime?: Date;
    key?: string;
    limitSeconds?: number;
    selected?: boolean;
    title?: string;
    vipRuleType?: string;
    vipRuleValue?: number;
  }

  export interface SellPropertyItem {
    name?: string;
  }

  export interface SellPropSpecItem {
    sellPropId?: number;
    specList?: Array<ItemSpecVo>;
  }

  export interface MobileWithAreaCode {
    areaCode?: string;
    chinaMainlandAreaCode?: boolean;
    mobile?: string;
    nullMobile?: boolean;
  }

  export interface PrivilegeDto {
    code?: string;
    desc?: string;
    description?: string;
    detailTitle?: string;
    detailUrl?: string;
    deviceType?: string;
    id?: number | string;
    listTitle?: string;
    listUrl?: string;
    sort?: number;
    status?: string;
  }

  export interface GetMsgListCheckListUsingPOSTRsp {
    checkDay?: string;
    created?: Date;
    deleted?: boolean;
    id?: number;
    linkId?: number;
    type?: string;
    updated?: Date;
    userId?: number;
  }
}
