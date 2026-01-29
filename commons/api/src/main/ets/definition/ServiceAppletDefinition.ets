import { AppletResInfo } from 'utils';
import { BaseAnniversaryDefinition } from '../../../../Index';
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

export namespace ServiceAppletDefinition {
  export interface AddAppletHistoryInput {
    appletId: number;
    dataIds: Array<number>;
    dataVersion?: string;
  }

  export interface AddCommentInput {
    content: string;
    postId: number;
  }

  export interface AddOrUpdateBankCardInput {
    accountName?: string;
    aheadDayNum?: number;
    aheadTypeList?: Array<AheadTypeTimeInput>;
    bankId?: number;
    bankName?: string;
    billDay?: number;
    billPushState?: boolean;
    cardNo?: string;
    id?: number;
    pushState?: boolean;
    remark?: string;
    remindTime?: string;
    repaymentDay?: number;
    repaymentDayType?: string;
  }

  export interface AddOrUpdateBankCardOutput {
    bankCardOutput?: BankCardOutput;
    finishedList?: Array<BankCardFinishedOutput>;
  }

  export interface AddOrUpdateBothClockInput {
    clockSleep?: ClockSleepInput;
    clockWakeup?: ClockWakeupInput;
  }

  export interface AddOrUpdateBothClockOutput {
    clockSleepOutput?: AddOrUpdateClockSleepOutput;
    clockWakeupOutput?: AddOrUpdateClockWakeupOutput;
  }

  export interface AddOrUpdateClockSleepOutput {
    clockSleep?: ClockSleepOutput;
    clockSleepFinishedList?: Array<ClockSleepFinishedOutput>;
  }

  export interface AddOrUpdateClockWakeupOutput {
    clockWakeup?: ClockWakeupOutput;
    clockWakeupFinishedList?: Array<ClockWakeupFinishedOutput>;
  }

  export interface AddPostInput {
    content: string;
    images?: string;
    type: string;
  }

  export interface AddReplyInput {
    commentId: number;
    commentUserId: number;
    content: string;
    postId: number;
    previousReplyId?: number;
    previousReplyUserId?: number;
  }

  export interface AheadTypeTimeInput {
    offset?: number;
  }

  export interface AllMyAppletInput {
    adcode?: string;
    cityName?: string;
    dataVersion?: string;
    userLocalDateTime: string;
    device: UserDeviceInfo;
  }

  export interface AnniversaryAheadTypeTimeInput {
    checked?: boolean;
    offset: number;
  }

  export interface AnniversaryInput {
    aheadTime?: string;
    aheadType: string;
    aheadTypeList?: Array<AnniversaryAheadTypeTimeInput>;
    anniversary: Date;
    content: string;
    deviceTagApp: string;
    id: number;
    image: string;
    isLunar: number;
    logo: string;
    name: string;
  }

  export interface AnniversaryInputV2 {
    day: Date;
    id?: number;
    images?: Array<string>;
    isLunar: boolean;
    isRemind: boolean;
    name: string;
    remark?: string;
    remindDays?: Array<AnniversaryAheadTypeTimeInput>;
    remindTime?: string;
    repeatType: string;
  }

  export interface AnniversaryQueryInput {
    id: number;
  }

  export interface AnniversaryUpdateInput {
    aheadTime?: string;
    aheadType: string;
    aheadTypeList?: Array<AnniversaryAheadTypeTimeInput>;
    anniversary: Date;
    content: string;
    deviceTagApp: string;
    id: number;
    image: string;
    isLunar: number;
    logo: string;
    name: string;
  }

  export interface AppletDeleteInput {
    appletId?: string;
    id?: string;
    showType?: string;
  }

  export interface AppletHistoryOutput {
    appletId?: number;
    createdDateTime?: Date;
    dataId?: number;
    iconImageUrl?: string;
    subTitle?: string;
    title?: string;
  }

  export interface AppletIdRequest {
    appletId: number;
  }

  export interface AppletInput {
    appletId: number;
    appletVersion?: string;
  }

  export interface AudioOutput {
    size?: number;
    url?: string;
  }

  export interface BankCardAndLoanOutput {
    accountName?: string;
    aheadDay?: string;
    aheadDayNum?: number;
    aheadTypeList?: Array<AheadTypeTimeInput>;
    bankId?: number;
    bankName?: string;
    betweenRepaymentDay?: number;
    billDay?: number;
    billPushState?: boolean;
    cardNo?: string;
    cardType?: string;
    color1?: string;
    color2?: string;
    created?: Date;
    id?: number;
    loanClassifyId?: number;
    loanName?: string;
    logo?: string;
    logoWhite?: string;
    name?: string;
    pushState?: boolean;
    remark?: string;
    remindTime?: string;
    repaymentDay?: number;
    repaymentDayType?: string;
    shortCardNo?: string;
    type?: string;
    userId?: number;
  }

  export interface BankCardAndLoanV2Output {
    bankCardOutput?: BankCardAndLoanOutput;
    loanOutput?: BankCardAndLoanOutput;
    type?: string;
  }

  export interface BankCardFinishedOutput {
    bankCardId?: number;
    created?: Date;
    finishDay?: Date;
    finishState?: boolean;
    id?: number;
    updated?: Date;
    userId?: number;
  }

  export interface BankCardOutput {
    accountName?: string;
    aheadDay?: string;
    aheadDayNum?: number;
    aheadTypeList?: Array<AheadTypeTimeInput>;
    bankId?: number;
    bankName?: string;
    betweenRepaymentDay?: number;
    billDay?: number;
    billPushState?: boolean;
    cardNo?: string;
    cardType?: string;
    color1?: string;
    color2?: string;
    created?: Date;
    id?: number;
    logo?: string;
    logoWhite?: string;
    pushState?: boolean;
    remark?: string;
    remindTime?: string;
    repaymentDay?: number;
    repaymentDayType?: string;
    userId?: number;
  }

  export interface BaseLifedayInput {
    birthday?: Date;
    isLunar?: number;
    lifeExpectancy?: number;
    sex?: number;
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

  export interface BirthdayEarthElementOutputV3 {
    id?: number;
    list?: Array<BirthdayInfoOutputV3>;
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

  export interface BirthdayIdInput {
    id?: string;
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

  export interface BookkeepingBillOutput {
    accountBookId?: number;
    accountBookName?: string;
    accountTypeId?: number;
    accountTypeLogo?: string;
    accountTypeLogoUrl?: string;
    accountTypeName?: string;
    billGlobalAddType?: string;
    billRecordType?: string;
    billRecordTypeDesc?: string;
    color?: string;
    created?: Date;
    dataType?: string;
    id?: number;
    imgList?: Array<string>;
    importRemark?: string;
    mid?: number;
    money?: number;
    remark?: string;
    showMinute?: boolean;
    symbol?: string;
    title?: string;
    useTime?: Date;
    userId?: number;
    walletId?: number;
    walletLogo?: string;
    walletLogoUrl?: string;
    walletName?: string;
  }

  export interface BookkeepingBillReportChartOutput {
    pieColor?: string;
    pieName?: string;
    piePercentage?: string;
  }

  export interface BookkeepingBillReportDiffOutput {
    currentMoney?: number;
    lastMoney?: number;
  }

  export interface BookkeepingBillReportElementOutput {
    accountBookId?: number;
    accountBookName?: string;
    color?: string;
    count?: string;
    folderType?: string;
    id?: number;
    logo?: string;
    logoUrl?: string;
    month?: string;
    name?: string;
    percentage?: string;
    sort?: number;
    totalMoney?: number;
    type?: string;
    year?: string;
  }

  export interface BookkeepingBillReportExpendListOutput {
    diff?: BookkeepingBillReportDiffOutput;
    expendChartList?: Array<BookkeepingBillReportChartOutput>;
    expendRankList?: Array<BookkeepingBillReportElementOutput>;
  }

  export interface BookkeepingBillReportIncomeListOutput {
    diff?: BookkeepingBillReportDiffOutput;
    incomeChartList?: Array<BookkeepingBillReportChartOutput>;
    incomeRankList?: Array<BookkeepingBillReportElementOutput>;
  }

  export interface BookkeepingBillReportOutput {
    accountBookId?: number;
    accountBookName?: string;
    billNum?: number;
    expend?: number;
    expendRank?: BookkeepingBillReportExpendListOutput;
    firstExpend?: BookkeepingBillReportElementOutput;
    firstIncome?: BookkeepingBillReportElementOutput;
    income?: number;
    incomeRank?: BookkeepingBillReportIncomeListOutput;
    surplus?: number;
    walletRank?: BookkeepingBillReportWalletListOutput;
  }

  export interface BookkeepingBillReportWalletListOutput {
    walletRankList?: Array<BookkeepingBillReportElementOutput>;
  }

  export interface CheckHistoryDataInput {
    appletId: number;
    dataId: number;
    params?: object;
  }

  export interface CheckHistoryDataInputV2 {
    appletId: number;
    params: object;
  }

  export interface ClockEchoOutput {
    clockNormalList?: Array<ClockNormalOutput>;
    clockSleep?: ClockSleepOutput;
    clockWakeup?: ClockWakeupOutput;
    sleepEvaluate?: SleepEvaluateOutput;
  }

  export interface ClockNormalOutput {
    autoSkipHoliday?: boolean;
    clockSwitch?: boolean;
    created?: Date;
    day0?: boolean;
    day1?: boolean;
    day2?: boolean;
    day3?: boolean;
    day4?: boolean;
    day5?: boolean;
    day6?: boolean;
    gameType?: string;
    hour?: number;
    id?: number;
    ip?: string;
    laterRemindDuration?: number;
    minute?: number;
    soundPath?: string;
    soundType?: string;
    tag?: string;
    time?: LocalTime;
    userId?: number;
    viewDay?: number;
  }

  export interface ClockSleepFinishedOutput {
    clockSleepId?: number;
    finishDay?: Date;
    finishState?: boolean;
    id?: number;
    userId?: number;
  }

  export interface ClockSleepInput {
    clockSwitch?: boolean;
    day0?: boolean;
    day1?: boolean;
    day2?: boolean;
    day3?: boolean;
    day4?: boolean;
    day5?: boolean;
    day6?: boolean;
    sleepTime?: LocalTime;
    soundPath?: string;
    soundType?: string;
  }

  export interface ClockSleepOutput {
    autoSkipHoliday?: boolean;
    clockSwitch?: boolean;
    day0?: boolean;
    day1?: boolean;
    day2?: boolean;
    day3?: boolean;
    day4?: boolean;
    day5?: boolean;
    day6?: boolean;
    finishedDayList?: Array<Date>;
    hour?: number;
    id?: string;
    ip?: string;
    laterRemindDuration?: number;
    minute?: number;
    sleepTime?: LocalTime;
    soundPath?: string;
    soundType?: string;
    userId?: number;
    viewDay?: number;
  }

  export interface ClockSleepRecordOutput {
    endTime?: Date;
    id?: number;
    ip?: string;
    remark?: string;
    startTime?: Date;
    useTime?: number;
    userId?: number;
  }

  export interface ClockWakeupFinishedOutput {
    clockWakeupId?: number;
    finishDay?: Date;
    finishState?: boolean;
    id?: number;
    userId?: number;
  }

  export interface ClockWakeupInput {
    clockSwitch?: boolean;
    day0?: boolean;
    day1?: boolean;
    day2?: boolean;
    day3?: boolean;
    day4?: boolean;
    day5?: boolean;
    day6?: boolean;
    gameType?: string;
    soundPath?: string;
    soundType?: string;
    wakeupTime?: LocalTime;
  }

  export interface ClockWakeupOutput {
    autoSkipHoliday?: boolean;
    clockSwitch?: boolean;
    day0?: boolean;
    day1?: boolean;
    day2?: boolean;
    day3?: boolean;
    day4?: boolean;
    day5?: boolean;
    day6?: boolean;
    finishedDayList?: Array<Date>;
    gameType?: string;
    hour?: number;
    id?: number;
    ip?: string;
    laterRemindDuration?: number;
    minute?: number;
    soundPath?: string;
    soundType?: string;
    userId?: number;
    viewDay?: number;
    wakeupTime?: LocalTime;
  }

  export interface CountdownInputV2 {
    day?: Date;
    display?: boolean;
    id?: number;
    images?: Array<string>;
    isLunar: boolean;
    isRemind: boolean;
    name: string;
    remark?: string;
    remindDays?: Array<CountdownRemindDayInput>;
    remindTime?: string;
    repeatType: string;
    repeatValue?: number;
  }

  export interface CountdownRemindDayInput {
    checked: boolean;
    offset: number;
  }

  export interface CountdownTemplateInput {
    content?: string;
    endTime?: Date;
    isLunar: boolean;
    name: string;
  }

  export interface CourseSearchOutput {
    id?: number;
    subTitle?: string;
    termId?: number;
    title?: string;
  }

  export interface DailyRemindConfigDataVersionInput {
    dataVersion?: string;
    remindType?: string;
  }

  export interface DailyRemindConfigOutput {
    id?: number;
    remindSwitch?: boolean;
    remindTime?: string;
  }

  export interface DailyRemindConfigV2Input {
    alertPushSwitch: boolean;
    dailyPushSwitch: boolean;
    dailyPushTime: string;
    remindSwitch?: boolean;
    remindTime?: string;
    remindType?: string;
  }

  export interface DataVersionInput {
    dataVersion: string;
  }

  export interface DayUseTimeCountOutput {
    day?: Date;
    dayUseTime?: number;
  }

  export interface DiaryDetailOutput {
    adress?: string;
    audio?: Array<AudioOutput>;
    content?: string;
    coverAnnexType?: string;
    coverAnnexUrl?: string;
    coverImg?: string;
    dateTime?: Date;
    feelId?: number;
    feelUrl?: string;
    font?: FontOutput;
    id?: number;
    img?: Array<string>;
    latitude?: number;
    longitude?: number;
    pointTime?: LocalTime;
    tagList?: Array<DiaryTagOutput>;
    title?: string;
    updated?: Date;
    vedio?: Array<VedioOutput>;
    weatherId?: number;
    weatherUrl?: string;
  }

  export interface DiaryTagOutput {
    id?: number;
    tagName?: string;
  }

  export interface FestivalCustomInputV6 {
    day?: number;
    festivalRuleId?: number;
    id?: number;
    images?: Array<string>;
    isLeapMonth?: boolean;
    isLunar: boolean;
    isRemind: boolean;
    month?: number;
    name: string;
    remark?: string;
    remindDays?: Array<FestivalRemindDayInput>;
    remindTime?: string;
    repeatType: string;
    year?: number;
  }

  export interface FestivalFollowInsertOrUpdateInput {
    festivalIdSet?: Array<number>;
  }

  export interface FestivalRemindDayInput {
    checked: boolean;
    offset: number;
  }

  export interface FocusBgImgListOutput {
    list?: Array<FocusBgImgOutput>;
  }

  export interface FocusBgImgOutput {
    code?: string;
    color?: string;
    title?: string;
    url?: string;
  }

  export interface FocusMusicListOutput {
    list?: Array<FocusMusicOutput>;
  }

  export interface FocusMusicOutput {
    blackImg?: string;
    blueImg?: string;
    code?: string;
    grayImg?: string;
    title?: string;
    url?: string;
  }

  export interface FocusRecordSuspendOutput {
    content?: string;
    duration?: number;
    ip?: string;
    recordId?: number;
    timePoint?: number;
  }

  export interface FocusStatisticsOutput {
    averageUseTime?: number;
    dayUseTimeList?: Array<DayUseTimeCountOutput>;
    finishedCount?: number;
    recordList?: Array<ConcentrateRecord>;
    totalUseTime?: number;
    unfinishedCount?: number;
  }

  export interface FontOutput {
    alignment?: string;
    color?: string;
    size?: string;
  }

  export interface ForumActivityOutput {
    activityLinkedId?: number;
    activityType?: string;
    content?: string;
    createdTime?: Date;
    id?: number;
    postOutput?: PostQueryOutput;
    userId?: number;
    userImage?: string;
    userName?: string;
  }

  export interface ForumCommentOutput {
    belongMyself?: boolean;
    content?: string;
    createdTime?: Date;
    id?: number;
    like?: boolean;
    likeCount?: number;
    likeId?: number;
    replyCount?: number;
    replyOutputList?: Array<ForumReplyOutput>;
    userId?: number;
    userImage?: string;
    userName?: string;
  }

  export interface ForumHomePage {
    posts?: Array<PostQueryOutput>;
    unreadMessageCount?: number;
  }

  export interface ForumMessageOutput {
    commentContent?: string;
    commentId?: number;
    commentUserId?: number;
    commentUserImage?: string;
    commentUserName?: string;
    content?: string;
    createdTime?: Date;
    id?: number;
    messageType?: string;
    messageUserId?: number;
    messageUserImage?: string;
    messageUserName?: string;
    postId?: number;
    postOutput?: PostQueryOutput;
    previousReplyContent?: string;
    previousReplyUserId?: number;
    previousReplyUserImage?: string;
    previousReplyUserName?: string;
    readStatus?: boolean;
    replyId?: number;
    replyUserId?: number;
    replyUserImage?: string;
    replyUserName?: string;
  }

  export interface ForumReplyOutput {
    belongMyself?: boolean;
    content?: string;
    createdTime?: Date;
    id?: number;
    like?: boolean;
    likeCount?: number;
    likeId?: number;
    previousReplyUserId?: number;
    replyUserName?: string;
    userId?: number;
    userImage?: string;
    userName?: string;
  }

  export interface GetActivityInput {
    currentPage: number;
    keyword?: string;
    pageSize: number;
    userId: number;
  }

  export interface GetAppletHistoryPageInput {
    currentPage: number;
    dataVersion?: string;
    keyword?: string;
    pageSize: number;
  }

  export interface GetCommentInput {
    currentPage: number;
    keyword?: string;
    pageSize: number;
    postId: number;
  }

  export interface GetImportantDayDetailInput {
    dataId: string;
    importantDayType: string;
    version: string;
  }

  export interface GetMessageInput {
    currentPage: number;
    keyword?: string;
    pageSize: number;
  }

  export interface GetPostInput {
    postId: number;
  }

  export interface GetReplyInput {
    commentId: number;
    currentPage: number;
    keyword?: string;
    pageSize: number;
  }

  export interface GlobalSearchInput {
    adcode?: string;
    applet?: string;
    input?: SummarySelectByKeyWordInput;
    version?: DataVersionInput;
  }

  export interface GoalOutput {
    bgImgUrl?: string;
    color?: string;
    created?: Date;
    dayProcess?: GoalProcess;
    endDate?: string;
    fold?: boolean;
    goalRule?: GoalRule;
    goalType?: string;
    icon?: string;
    id?: number;
    name?: string;
    sort?: number;
    startDate?: string;
    subGoalList?: Array<GoalOutput>;
    superGoalId?: number;
    todoTime?: Date;
    totalProcess?: GoalProcess;
  }

  export interface GuideV2Output {
    needGuide?: boolean;
  }

  export interface HabitOutputWithRule {
    allHabitRuleList?: Array<AllHabitRule>;
    color?: string;
    created?: Date;
    currentHabitRule?: AllHabitRule;
    deleted?: boolean;
    finishDayCount?: number;
    finishPeriod?: string;
    finishRemarkOpen?: boolean;
    finishType?: string;
    habitStartDate?: Date;
    icon?: string;
    iconType?: string;
    id?: number;
    name?: string;
    remark?: string;
    remindTimeList?: Array<HabitRemindTimeOutput>;
    sort?: number;
    status?: string;
    suspendList?: Array<HabitSuspendOutput>;
    suspendState?: boolean;
    userId?: number;
    viewShow?: boolean;
  }

  export interface HabitRemindTimeOutput {
    habitId?: number;
    id?: number;
    remindTime?: LocalTime;
  }

  export interface HabitSuspendOutput {
    endDate?: Date;
    habitId?: number;
    id?: number;
    startDate?: Date;
  }

  export interface IdsData {
    ids?: Array<number>;
  }

  export interface IdsResponse {
    code?: number;
    data?: IdsData;
    msg?: string;
  }

  export interface ImportantDayBatchFestivalOutput {
    ids?: Array<number>;
    rows?: Array<ImportantDayOutput>;
  }

  export interface ImportantDayInitInput {
    anniversary?: Array<AnniversaryInputV2>;
    birthday?: Array<BirthdayAddV6Input>;
    countdown?: Array<CountdownInputV2>;
    festival?: Array<FestivalCustomInputV6>;
    lifeday?: Array<BaseLifedayInput>;
  }

  export interface ImportantDayOutput {
    appletId?: number;
    countDownDay?: number;
    created?: Date;
    detail?: object;
    id?: number;
    importantDayType?: string;
    isImportant?: boolean;
    myBirthday?: string;
    startDay?: string;
    subTitle?: string;
    title?: string;
    top?: boolean;

    //本地判断使用
    isLocalCache?: boolean;
    localData?: string;
    isFromPlan?: boolean
  }


  export interface AnniversaryDayOutput {
    appletId?: number;
    countDownDay?: number;
    created?: Date;
    detail?: BaseAnniversaryDefinition.AnniversaryOutputV2;
    id?: number;
    importantDayType?: string;
    isImportant?: boolean;
    myBirthday?: Date;
    startDay?: string;
    subTitle?: string;
    title?: string;
    top?: boolean;
  }

  export interface ImportantDayTempOutput {
    appletId?: number;
    countDownDay?: number;
    created?: Date;
    detail?: object;
    id?: number;
    importantDayType?: string;
    isImportant?: boolean;
    myBirthday?: Date;
    selected?: boolean;
    startDay?: Date;
    subTitle?: string;
    title?: string;
    top?: boolean;
  }

  export interface InitWaterConfigInputV2 {
    dailyTarget: number;
    firstRemindTime?: string;
    isRemind?: boolean;
    lastRemindTime?: string;
    remindInterval?: number;
    remindType?: string;
    timingRemindTimes?: Array<LocalTime>;
    waterClassifyVersion?: string;
  }

  export interface IntentionAddImportantDayInput {
    appletId: string;
    day: number;
    isLeapMonth?: boolean;
    isLunar?: boolean;
    month: number;
    name: string;
    year?: number;
  }

  export interface IsNeedAppletGuideOutput {
    isNeedAppletGuide?: boolean;
  }

  export interface ListImportantDayHomeByAppletInput {
    appletId: number;
    version?: string;
  }

  export interface ListImportantDayHomeInputV2 {
    version?: string;
  }

  export interface ListPostByUserInput {
    currentPage: number;
    keyword?: string;
    pageSize: number;
    userId: number;
  }

  export interface LocalTime {
    hour?: number;
    minute?: number;
    nano?: number;
    second?: number;
  }

  export interface LogoOutput {
    code?: string;
    title?: string;
    url?: string;
  }

  export interface MsgListSysMsgIdInput {
    id?: number;
  }

  export interface MusicListOutput {
    musicList?: Array<MusicOutput>;
  }

  export interface MusicOutput {
    code?: string;
    title?: string;
    url?: string;
    state?: string; //当前状态 0-未下载 1-已下载未使用 2-使用中 3-下载中
    stateText?: string
  }

  export interface MyAppletInput {
    adcode?: string;
    appletInputs?: Array<AppletInput>;
    cityName?: string;
    dataVersion?: string;
    userLocalDateTime: string;
  }

  export interface PaginableRequest {
    currentPage: number;
    keyword?: string;
    pageSize: number;
  }

  export interface PostQueryByTypeInput {
    currentPage: number;
    keyword?: string;
    pageSize: number;
    postType?: string;
    type?: string;
  }

  export interface PostQueryOutput {
    belongMyself?: boolean;
    commentCount?: number;
    content?: string;
    createdTime?: Date;
    id?: number;
    images?: string;
    latestReplyTime?: Date;
    like?: boolean;
    likeCount?: number;
    likeId?: number;
    pageViewCount?: number;
    type?: string;
    userId?: number;
    userImage?: string;
    userName?: string;
  }

  export interface QuickCapacityOutput {
    capacity?: number;
    id?: number;
  }

  export interface RecognizeAppletHistoryInputV2 {
    appletId: number;
    params: Array<Map<string, object>>;
  }

  export interface ScheduleDisplayStatusOutput {
    display?: boolean;
  }

  export interface ScheduleUpdateDisplayStatusInput {
    dataVersion: string;
    display?: boolean;
  }

  export interface SearchBookkeepingBillByMonthInput {
    accountBookId?: number;
    month?: number;
    year?: number;
  }

  export interface SearchBookkeepingBillByMonthOutput {
    date?: string;
    day?: Date;
    dayList?: Array<BookkeepingBillOutput>;
    expend?: number;
    income?: number;
    surplus?: number;
    week?: string;
  }

  export interface SearchBookkeepingBillByMonthV2Input {
    accountBookId?: number;
    isAllData?: boolean;
    month?: number;
    startDay?: string;
    year?: number;
  }

  export interface SearchImportantDayInput {
    searchTitle: string;
    version?: string;
  }

  export interface ServiceGetWaterConfigInput {
    dataVersion: string;
    waterClassifyVersion?: string;
  }

  export interface SetAppletRemindTimeInput {
    appletId: number;
    dataVersion?: string;
    remindTime: string;
  }

  export interface ShortcutAppletInput {
    adcode?: string;
    appletInputs?: Array<AppletInput>;
    cityName?: string;
    dataVersion?: string;
    userLocalDateTime: string;
  }

  export interface ShortcutAppletOutput {
    appletDatas?: Array<object>;
    appletId?: number;
    code?: number;
    exampleData?: boolean;
    path?: string;
  }

  export interface SleepDayUseTimeOutput {
    day?: Date;
    dayRecordList?: Array<ClockSleepRecordOutput>;
    dayUseTime?: number;
    sleepingEvaluate?: string;
  }

  export interface SleepEvaluateOutput {
    hour?: number;
    minute?: number;
    msg?: string;
    type?: string;
  }

  export interface SleepStatisticsOutput {
    avgUseHourTime?: number;
    dayList?: Array<SleepDayUseTimeOutput>;
    totalSleepingEvaluate?: string;
    totalUseTime?: number;
  }

  export interface StatisticMonthViewInput {
    appletIdList?: Array<number>;
    currentDate?: Date;
    dataVersion: string;
  }

  export interface SummaryAppletOutputV2 {
    // content?: string;
    // coverAnnexType?: string;
    // coverAnnexUrl?: string;
    // encryption?: boolean;
    // folderId?: number;
    // frontEditorVersion?: string;
    // gpsName?: string;
    // gpsX?: string;
    // gpsY?: string;
    // id?: number;
    // remindSwitch?: boolean;
    // remindTime?: Date;
    // sortDateTime?: Date;
    // title?: string;
    // top?: boolean;
    // topTime?: Date;
    // userId?: number;
    id?: string;
    userId?: string;
    content?: string;
    title?: string;
    folderId?: string;
    tagIdList?: string[]
    sortDateTime?: string;
    frontEditorVersion?: string;
    score?: number;
    recordDate?: string;
    updated?: number;
    top?: boolean;
    encryption?: boolean;
    remindSwitch?: boolean;
  }

  export interface SummarySelectByKeyWordInput {
    keyWord?: string;
    pageNumber?: string;
    pageSize?: string;
    tagId?: number;
  }

  export interface TotoroBubbleMsgListInput {
    currentPage: number;
    device?: UserDeviceInfo;
    keyword?: string;
    pageSize: number;
  }

  export interface TotoroBubbleMsgListOutput {
    list?: Array<TotoroBubbleMsgOutput>;
  }

  export interface TotoroBubbleMsgOutput {
    content?: string;
    msgId?: number;
  }

  export interface TotoroMsgIdInput {
    msgId?: number;
    msgType?: string;
  }

  export interface TotoroMsgListInput {
    currentPage: number;
    device?: UserDeviceInfo;
    keyword?: string;
    pageSize: number;
  }

  export interface TotoroMsgListOutput {
    list?: Array<TotoroMsgOutput>;
  }

  export interface TotoroMsgListV2Input {
    businessVersion?: string;
    currentPage: number;
    device?: UserDeviceInfo;
    keyword?: string;
    pageSize: number;
  }

  export interface TotoroMsgOutput {
    bgImg?: string;
    content?: string;
    isTop?: boolean;
    msgId?: number;
    msgImg?: string;
    msgType?: string;
    pushTime?: Date;
    title?: string;
    typeIcon?: string;
    typeName?: string;
    url?: string;
  }

  export interface TotoroMsgUnreadInput {
    device?: UserDeviceInfo;
  }

  export interface TotoroUnreadMsgOutput {
    unreadNum?: number;
  }

  export interface TotoroUnreadMsgOutputV2 {
    adviceReplyUnreadCount?: number;
    myMsgUnreadCount?: number;
  }

  export interface TotoroUnreadMsgOutputV4 {
    adviceReplyUnreadCount?: number;
    appletUnreadCount?: number;
    myMsgUnreadCount?: number;
  }

  export interface TotoroUserSysMsgOutput {
    adviceContent?: string;
    adviceType?: number;
    created?: Date;
    deviceModel?: string;
    feedbackContent?: string;
    type?: string;
    unread?: boolean;
    userName?: string;
  }

  export interface UpdateTimeStyleInput {
    appletId: number;
    id: number;
    timeStyle: string;
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

  export interface UserProfileOutput {
    birthday?: Date;
    budgetHot?: number;
    budgetHotType?: string;
    firstTime?: boolean;
    gender?: number;
    height?: number;
    isLunar?: boolean;
    sportsType?: string;
    systemBudgetHot?: number;
    targetWeight?: number;
    weight?: number;
    weightImg?: string;
    weightStage?: string;
  }

  export interface VedioOutput {
    img?: string;
    url?: string;
  }

  export interface WaterConfigOutputV2 {
    dailyTarget?: number;
    dailyTargetWithAddition?: number;
    firstRemindTime?: string;
    id?: number;
    isFestivalNotRemind?: boolean;
    isFinishDailyTargetNotRemind?: boolean;
    isIntelligenceRemind?: boolean;
    isRemind?: boolean;
    isRestNotRemind?: boolean;
    lastRemindTime?: string;
    msgPushType?: string;
    nextRemindTime?: string;
    quickCapacityList?: Array<QuickCapacityOutput>;
    remindInterval?: number;
    remindTimes?: Array<string>;
    remindType?: string;
    restEndTime?: string;
    restStartTime?: string;
    timingRemindTimes?: Array<string>;
    totalCapacity?: number;
    waterBubbleMsg?: string;
    waterTips?: string;
  }

  export interface WaterMusicListOutput {
    list?: Array<WaterMusicOutput>;
  }

  export interface WaterMusicOutput {
    code?: string;
    seconds?: string;
    title?: string;
    url?: string;
  }

  export interface WaterStatisticsDetailOutput {
    capacity?: number;
    time?: string;
  }

  export interface WaterStatisticsOutput {
    dailyTarget?: number;
    details?: Array<WaterStatisticsDetailOutput>;
    todoDate?: string;
    totalCapacity?: number;
  }

  export interface WorkRestScheduleConfigInput {
    day0?: boolean;
    day1?: boolean;
    day2?: boolean;
    day3?: boolean;
    day4?: boolean;
    day5?: boolean;
    day6?: boolean;
    id?: number;
    title?: string;
    type?: number;
  }

  export interface WorkRestScheduleConfigListDetailOutput {
    autoSkipHoliday?: boolean;
    todayViewSwitch?: boolean;
    weekend?: WorkRestScheduleConfigOutput;
    workingDay?: WorkRestScheduleConfigOutput;
  }

  export interface WorkRestScheduleConfigOutput {
    aheadCount?: number;
    autoSkipHoliday?: boolean;
    configStr?: string;
    created?: Date;
    day0?: boolean;
    day1?: boolean;
    day2?: boolean;
    day3?: boolean;
    day4?: boolean;
    day5?: boolean;
    day6?: boolean;
    deleted?: boolean;
    id?: number;
    ip?: string;
    oldUserCode?: number;
    sort?: number;
    title?: string;
    todayViewSwitch?: boolean;
    type?: number;
    updated?: Date;
    userId?: number;
    version?: number;
  }

  export interface WorkRestScheduleConfigUpdateInput {
    autoSkipHoliday?: boolean;
    todayViewSwitch?: boolean;
    weekend?: WorkRestScheduleConfigInput;
    workingDay?: WorkRestScheduleConfigInput;
  }

  export interface ConcentrateRecord {
    endTime?: Date;
    finishState?: string;
    fullTime?: number;
    id?: number;
    ip?: string;
    linkId?: number;
    linkType?: string;
    musicName?: string;
    remark?: string;
    startTime?: Date;
    suspendList?: Array<FocusRecordSuspendOutput>;
    title?: string;
    useTime?: number;
  }

  export interface AllHabitRule {
    currentRule?: boolean;
    dayFinishGoalPerTime?: number;
    dayFinishGoalSwitch?: boolean;
    dayFinishGoalTotal?: number;
    dayFinishGoalUnit?: string;
    endDate?: Date;
    finishType?: string;
    fixedRuleDayList?: Array<number>;
    habitId?: number;
    id?: number;
    ruleDesc?: string;
    startDate?: Date;
    timesCount?: number;
  }

  export interface AppletInfo {
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

  export interface MobileWithAreaCode {
    areaCode?: string;
    chinaMainlandAreaCode?: boolean;
    mobile?: string;
    nullMobile?: boolean;
  }

  export interface FastAppOutput {
    appletFastPreviewImgs?: string;
    appletIcon?: string;
    appletId?: number;
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
    subWidgetList?: Array<FastAppOutput>;
    subscribed?: boolean;
    textColor?: string;
    viped?: boolean;

    //自定义参数
    isExpand?: boolean;
    showCountIndex?: number;
  }

  export interface FastAppGroupOutput {
    otherSortList?: Array<FastAppOutput>;
    sortList?: Array<FastAppOutput>;
  }

  export interface MonthDataOldResponse {
    bookId?: number;
    bookImageUrl?: string;
    bookName?: string;
    bookNameBgColor?: string;
    bookNameBgColorAlpha?: string;
    bookNameTextColor?: string;
    expend?: number;
    firstDayOfMonth?: Date;
    income?: number;
    list?: Array<SearchBookkeepingBillByMonthOutput>;
    monthBudget?: BudgetDetail;
    surplus?: number;
  }

  export interface BirthDayBatchAddRequestBody {
    birthDayLimitCount?: number;
    birthdayInfos?: Array<BirthDayAddRequestBody>;
  }

  export interface BirthDayBatchAddRequest {
    birthDayLimitCount?: number;
    birthdayInfos?: Array<BirthDayAddRequest>;
  }

  export interface BirthDayAddRequestBody {
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

  export interface BirthDayAddRequest {
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

  export interface GoalProcess {
    actualQuantifiedValue?: number;
    needQuantifiedValue?: number;
    percent?: number;
    stage?: string;
  }

  export interface NodeInfo {
    bookOwnId?: number;
    coverImg?: string;
    created?: Date;
    experience?: string;
    id?: number;
    name?: string;
    noteContent?: string;
    noteImg?: Array<string>;
    rateType?: string;
    startPage?: number;
  }

  export interface AnniversaryDetail {
    aheadTime?: string;
    aheadType?: string;
    aheadTypeList?: Array<AnniversaryAheadTypeTimeInput>;
    anniversary?: Date;
    content?: string;
    count?: number;
    created?: Date;
    deleted?: number;
    description?: string;
    deviceTagApp?: string;
    id?: number;
    image?: string;
    isLunar?: number;
    logo?: string;
    name?: string;
    nextTimeCount?: number;
    nextTimeDesc?: string;
    showTitle?: string;
    todoTime?: string;
    updated?: Date;
    userId?: number;
    yearCountStr?: string;
  }

  export interface StatisticAllInOne {
    billStatistics?: BookkeepingBillReportOutput;
    focusStatistics?: FocusStatisticsOutput;
    sleepStatistics?: SleepStatisticsOutput;
    waterStatistics?: RowData<Array<WaterStatisticsOutput>>;
  }

  export interface GoalRule {
    goalId?: number;
    id?: number;
    quantifiedGoal?: boolean;
    quantifiedType?: string;
    regularFrequency?: string;
    regularSmartAdjustment?: boolean;
    total?: number;
    unit?: string;
  }

  export interface AppletOutputList {
    rows: Array<AppletOutput>
  }

  export interface AppletOutput {
    appletFastIcon?: string;
    appletIcon?: string;
    appletId?: number;
    appletName?: string;
    appletSubTitle?: string;
    appletType?: string;
    appletTypeColor?: string;
    appletTypeName?: string;
    cannotUnsubscribe?: boolean;
    code?: number;
    defaulted?: boolean;
    exampleData?: string;
    operate?: string;
    path?: string;
    reminded?: boolean;
    sort?: number;
    userGuideSubTitle?: string;
    viped?: boolean;
    isShow?: boolean;
  }

  export interface AppletList {
    rows: Array<AppletDetail>
  }

  export interface AppletDetail {
    appletIcon?: string;
    appletId?: number;
    appletName?: string;
    appletSubTitle?: string;
    cannotUnsubscribe?: boolean;
    lastTime?: Date;
    operate?: string;
    path?: string;
    reminded?: boolean;
    toped?: boolean;
    unreadCount?: number;
    viped?: boolean;
    isShow?: boolean;
    resInfo?: AppletResInfo;
    _sort?: number
  }

  export interface BookSearchInfo {
    author?: string;
    bookStatus?: string;
    coverImg?: string;
    id?: number;
    name?: string;
    note?: NodeInfo;
    percent?: number;
    publisher?: string;
    rateType?: string;
  }

  export interface BirthdayCardDetail {
    audioUrl?: string;
    content?: string;
    fromUserName?: string;
    id?: number;
    template?: BirthdayTemplateVo;
    templateId?: number;
    toUserName?: string;
  }

  export interface BudgetInfo {
    budget?: number;
    budgetPercent?: string;
    budgetType?: string;
    expend?: number;
    remainingBudget?: number;
    remainingBudgetSymbol?: string;
    spendQuantity?: number;
  }

  export interface BudgetDetail {
    budget?: number;
    budgetInfo?: BudgetInfo;
    budgetType?: string;
    money?: number;
    symbol?: string;
  }

  export interface HomeSearchResult {
    appletInfo?: Array<AppletInfo>;
    billInfo?: Array<BookkeepingBillOutput>;
    diaryInfo?: Array<DiaryDetailOutput>;
    summaryInfo?: SummaryPage<SummaryAppletOutputV2>;
  }

  export interface HomeSearchResultV2 {
    appletInfo?: Array<AppletInfo>;
    billInfo?: Array<BookkeepingBillOutput>;
    bookInfo?: Array<BookSearchInfo>;
    courseInfo?: Array<CourseSearchOutput>;
    diaryInfo?: Array<DiaryDetailOutput>;
    goalInfo?: Array<GoalOutput>;
    habitInfo?: Array<HabitOutputWithRule>;
    importantDays?: Array<ImportantDayOutput>;
    loanInfo?: Array<BankCardAndLoanV2Output>;
    summaryInfo?: SummaryPage<SummaryAppletOutputV2>;
  }
}
