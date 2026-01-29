
export namespace BaseGoalDefinition {
  export interface AchievementReachInput {
    displayedGoalId?: Array<number>;
    minFinishDay?: Date;
  }

  export interface AchievementReachVo {
    appletId?: number;
    businessId?: number;
    subTitle?: string;
    title?: string;
  }

  export interface AddFellingInput {
    content: string;
    id: string;
  }

  export interface AddLetterInput {
    audio?: Array<AudioInput>;
    colourType: string;
    content: string;
    contentStyle: string;
    expireDate: Date;
    fontSize: string;
    img?: Array<string>;
    vedio?: Array<VedioInput>;
  }

  export interface AddMyTargetInput {
    birthday: Date;
    isLunar: number;
    silkBags: Array<SilkBagInput>;
    targets: Array<MyTargetItemInput>;
    theDate: Date;
  }

  export interface AddOrUpdateFinishInput {
    day?: string;
    goalId?: string;
    id?: number;
    imgUrl?: string;
    quantifiedValue?: number;
    remark?: string;
  }

  export interface AddRichLetterInput {
    expireDate: string;
    frontEditorVersion?: string;
    richContent: string;
  }

  export interface AudioInput {
    name?: string;
    size?: number;
  }

  export interface AudioOutput {
    name?: string;
    size?: number;
    url?: string;
  }

  export interface BatchAddGoalByGuideTemplateIdInput {
    ids?: Array<number>;
  }

  export interface CUMultiSuperGoalInput {
    color?: string;
    endDate?: string;
    icon?: string;
    id?: string;
    name?: string;
    startDate?: string;
    subGoalList?: Array<CUSubGoalInput>;
  }

  export interface CUSingleGoalInput {
    color?: string;
    endDate?: string;
    goalRule?: GoalRuleDTO;
    icon?: string;
    id?: string;
    name?: string;
    startDate?: string;
  }

  export interface CUSubGoalInput {
    endDate?: string;
    goalRule?: GoalRuleDTO;
    id?: string;
    name?: string;
    startDate?: string;
  }

  export interface DateRangeRequest {
    endDate?: Date;
    startDate?: Date;
  }

  export interface DateRequest {
    theDay?: Date;
  }

  export interface DayGoalInput {
    dayProcessStage?: string;
  }

  export interface DayGoalOutput {
    dayGoalList?: Array<GoalOutput>;
  }

  export interface EndDateRule {
    type?: string;
    value?: number;
  }

  export interface FinishInfoInput {
    day?: string;
    goalId?: string;
  }

  export interface GetSettingOutput {
    displayType?: string;
    itemIds?: Array<number>;
    motto?: string;
  }

  export interface GoalAppletCountDataOutput {
    appletSubTitle?: string;
  }

  export interface GoalChartFrequencyOutput {
    endDay?:string,
    color?: string;
    content?: string;
    day?: string;
    imgUrl?: string;
    items?: Array<string>;
    percent?: number;
    percentDesc?: string;
    remark?: string;
    title?: string;
  }

  export interface GoalChartInput {
    endDate?: string;
    goalId: string;
    regularFrequency?: string;
    startDate?: string;
  }

  export interface GoalChartOutput {
    endDate?: string;
    goalRule?: GoalRuleItem;
    id?: number;
    items?: Array<GoalChartFrequencyOutput>;
    name?: string;
    percent?: number;
    quantifiedValueSum?: number;
    regularFrequency?: string;
    stage?: string;
    startDate?: string;
    total?: number;
    totalProcess?: TotalProgress;
    unit?: string;
  }

  export interface GoalColorOutput {
    color?: string;
    id?: string;
  }

  export interface GoalDetailInput {
    id?: string;
  }

  export interface GoalDetailOutput {
    goal?: GoalOutput;
    id?: string;
    notQuantifiedGoalFinishInfo?: GoalFinishSimpleOutput;
  }

  export interface GoalFinishDetailOutput {
    finishInfo?: GoalFinishSimpleOutput;
    goal?: GoalOutput;
    id?: number;
    notQuantifiedGoalFinishInfo?: GoalFinishSimpleOutput;
  }

  export interface GoalFinishOutput {
    content?: string;
    day?: string;
    goalId?: number;
    id?: number;
    imgUrl?: string;
    name?: string;
    percentDesc?: string;
    quantifiedGoal?: boolean;
    remark?: string;
    singleValue?: string;
  }

  export interface GoalFinishSimpleOutput {
    day?: string;
    goalId?: number;
    id?: number;
    imgUrl?: string;
    quantifiedValue?: number;
    remark?: string;
  }

  export interface GoalFinishSyncDataOutput {
    day?: Date;
    deleteTime?: Date;
    deleted?: boolean;
    goalId?: number;
    id?: number;
    imgUrl?: string;
    quantifiedValue?: number;
    remark?: string;
  }

  export interface GoalFinishSyncOutput {
    goalFinishHistoryList?: Array<GoalFinishSyncDataOutput>;
    goalFinishList?: Array<GoalFinishSyncDataOutput>;
  }

  export interface GoalGuideTemplateOutput {
    color?: string;
    endDate?: Date;
    icon?: string;
    id?: number;
    name?: string;
    selected?: boolean;
    startDate?: Date;
  }

  export interface GoalHomepageInput {
    totalProcessStage?: string;
  }

  export interface GoalHomepageOutput {
    dayGoalList?: Array<GoalOutput>;
    homepageGoalList?: Array<GoalOutput>;
  }

  export interface GoalIconColorOutput {
    colorList?: Array<GoalColorOutput>;
    iconList?: Array<GoalIconOutput>;
  }

  export interface GoalIconOutput {
    iconUrl?: string;
    id?: string;
  }

  export interface GoalOutput {
    bgImgUrl?: string;
    color?: string;
    created?: string;
    dayProcess?: TotalProgress;
    endDate?: string | number;
    fold?: boolean;
    goalRule?: GoalRuleItem;
    goalType?: string;
    icon?: string;
    id?: string;
    name?: string;
    sort?: number;
    startDate?: string | number;
    subGoalList?: Array<GoalOutput>;
    superGoalId?: string;
    todoTime?: Date;
    totalProcess?: TotalProgress;
  }

  export interface GoalPage1 {
    doneCount?: number;
    processingCount?: number;
    totalCount?: number;
  }

  export interface GoalPage2 {
    minDoneGoalLastFinishDay?: string;
    minDoneGoalLastFinishDayGoalName?: string;
    minStartDate?: string;
    minStartDateGoalName?: string;
  }

  export interface GoalPage3 {
    futureMinExpireDay?: string;
  }

  export interface GoalPageOutput {
    goal_page1?: GoalPage1;
    goal_page2?: GoalPage2;
    goal_page3?: GoalPage3;
  }

  export interface GoalReciprocalViewListOutput {
    list?: Array<GoalReciprocalViewOutput>;
  }

  export interface GoalReciprocalViewOutput {
    created?: Date;
    dayCount?: number;
    id?: number;
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

  export interface GoalRemindInput {
    remindSwitch?: boolean;
    todoTime?: string;
  }

  export interface GoalRemindOutput {
    remindSwitch?: boolean;
    todoTime?: number;
  }

  export interface GoalSyncDataOutput {
    bgImgUrl?: string;
    color?: string;
    created?: Date;
    deleted?: boolean;
    endDate?: Date;
    goalRule?: GoalRuleItem;
    goalType?: string;
    icon?: string;
    id?: number;
    name?: string;
    sort?: number;
    startDate?: Date;
    superGoalId?: number;
  }

  export interface GoalTempletOutput {
    color?: string;
    endDate?: string;
    endDateRule?: EndDateRule;
    goalRule?: GoalRuleDTO;
    goalType?: string;
    icon?: string;
    name?: string;
    subGoalList?: Array<GoalTempletOutput>;
  }

  export interface GoalTempletWrapperOutput {
    goalTemplete?: GoalTempletOutput;
    id?: number;
    name?: string;
    preImgUrl?: string;
  }

  export interface GoalTimeAxisInput {
    goalId: string;
  }

  export interface GoalTimeAxisOutput {
    endDate?: string;
    goalRule?: GoalRuleItem;
    goalType?: string;
    id?: number;
    items?: Array<GoalFinishOutput>;
    name?: string;
    percent?: number;
    quantifiedValueSum?: number;
    regularFrequency?: string;
    stage?: string;
    startDate?: string;
    total?: number;
    totalProcess?: TotalProgress;
    unit?: string;
  }

  export interface GoalTodoViewInput {
    endDate?: Date;
    startDate?: Date;
  }

  export interface GoalTodoViewListOutput {
    list?: Array<GoalTodoViewOutput>;
  }

  export interface GoalTodoViewOutput {
    created?: Date;
    finishState?: number;
    id?: number;
    importance?: number;
    intervalType?: number;
    shortTitle?: string;
    subList?: Array<GoalTodoViewOutput>;
    title?: string;
    todoClassifyId?: number;
    todoTime?: Date;
    todoType?: number;
    updated?: Date;
    version?: number;
    widgetSubTitle?: string;
  }

  export interface HasCurrentOrNextYearLastDayGoalInput {
    day?: Date;
  }

  export interface HasCurrentOrNextYearLastDayGoalOutput {
    count?: number;
  }

  export interface IdRequest {
    id: string;
  }

  export interface IdsRequest {
    ids: Array<string>;
  }

  export interface LetterOutput {
    audio?: Array<AudioOutput>;
    colourType?: string;
    content?: string;
    contentStyle?: string;
    created?: Date;
    deleted?: boolean;
    experience?: string;
    expireDate?: string;
    fontSize?: string;
    id?: number;
    img?: Array<string>;
    open?: boolean;
    updated?: Date;
    userId?: number;
    vedio?: Array<VedioInput>;
    version?: number;
  }

  export interface LocalTime {
    hour?: number;
    minute?: number;
    nano?: number;
    second?: number;
  }

  export interface MailboxStatusOutput {
    letter?: LetterOutput;
    status?: string;
  }

  export interface MyTargetInfoOutput {
    created?: Date;
    deleted?: boolean;
    expireDate?: Date;
    id?: number;
    items?: Array<MyTargetItemOutput>;
    maskLevel?: number;
    updateFlag?: boolean;
    updated?: Date;
    userId?: number;
    version?: number;
  }

  export interface MyTargetItemInput {
    classify: string;
    content: string;
  }

  export interface MyTargetItemOutput {
    content?: string;
    created?: Date;
    deleted?: boolean;
    id?: number;
    targetId?: number;
    updated?: Date;
    userId?: number;
    version?: number;
  }

  export interface OpenLetterInput {
    id: number;
  }

  export interface QueryIntentOutput {
    content?: string;
  }

  export interface ReciprocalViewRequest {
    currentPage: number;
    isHiddenFinish?: boolean;
    keyword?: string;
    pageSize: number;
    refYear?: number;
  }

  export interface RichLetterOutput {
    created?: Date;
    deleted?: boolean;
    experience?: string;
    expireDate?: Date;
    id?: number;
    open?: boolean;
    richContent?: string;
    updated?: Date;
    userId?: number;
    version?: number;
  }

  export interface SettingInput {
    displayType: string;
    id: number;
    itemIds?: Array<number>;
    motto?: string;
  }

  export interface ShortcutAppletGoalSettingOutput {
    displayType?: string;
    expireDate?: Date;
    id?: number;
    importanceGoals?: Array<string>;
    maskLevel?: number;
    motto?: string;
  }

  export interface SilkBagInput {
    classify: string;
    content: string;
  }

  export interface SilkBagOutput {
    classify?: string;
    classifyName?: string;
    content?: string;
    created?: Date;
    deleted?: boolean;
    id?: number;
    targetId?: number;
    updated?: Date;
    userId?: number;
    version?: number;
  }

  export interface SyncDataRequest {
    fromId: number;
    fromVersion: number;
    pageSize: number;
    toVersion: number;
  }

  export interface TheDateInput {
    theDate: string;
  }

  export interface UpdateBgImgInput {
    bgImgUrl?: string;
    id?: number;
  }

  export interface UpdateFoldInput {
    fold?: boolean;
    ids?: Array<string>;
  }

  export interface UpdateMyTargetInput {
    addList: Array<MyTargetItemInput>;
    id: number;
    theDate: Date;
    updateList: Array<UpdateMyTargetItemInput>;
  }

  export interface UpdateMyTargetItemInput {
    content: string;
    id: number;
  }

  export interface UpdateSilkBagInput {
    content: string;
    id: number;
  }

  export interface VedioInput {
    img?: string;
    url?: string;
  }

  export interface WipeInput {
    id: number;
    theDate: Date;
  }

  export interface DailySummaryGoalListUsingPOSTRsp {
    appletId?: number;
    dataList?: Array<object>;
    extendMap?: object;
    subTitle?: string;
    title?: string;
  }

  export interface SyncGoalUsingPOSTRsp {
    goalList?: Array<GoalSyncDataOutput>;
  }

  export interface GoalRuleDTO {
    quantifiedGoal?: boolean;
    quantifiedType?: string;
    regularFrequency?: string;
    regularSmartAdjustment?: boolean;
    total?: number;
    unit?: string;
  }

  export interface TotalProgress {
    actualQuantifiedValue?: number;
    needQuantifiedValue?: number;
    percent?: number;
    stage?: string;
  }

  export interface GoalRuleItem {
    goalId?: number;
    id?: number;
    quantifiedGoal?: boolean;
    quantifiedType?: string;
    regularFrequency?: string;
    regularSmartAdjustment?: boolean;
    total?: number;
    unit?: string;
  }
}
