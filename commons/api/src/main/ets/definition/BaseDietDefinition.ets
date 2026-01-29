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

export namespace BaseDietDefinition {
  export interface AddCustomFoodInput {
    carbohydrate?: string;
    fat?: string;
    hot?: string;
    img?: string;
    measureUnit?: string;
    name?: string;
    protein?: string;
  }

  export interface AddNormalDietInput {
    actualUnitAmount?: number;
    actualWeight?: number;
    foodId?: string;
    foodType?: string;
    foodUnitId?: string;
    mealType?: string;
    recordDay?: string;
  }

  export interface AddPersonalDietInput {
    actualUnitAmount?: string;
    actualWeight?: string;
    foodId?: string;
    foodUnitId?: string;
  }

  export interface AddPersonalDietPackageInput {
    dietImg?: string;
    dietList?: Array<AddPersonalDietInput>;
    name?: string;
  }

  export interface AddPersonalDietPackageOutput {
    dietImg?: string;
    name?: string;
    personalDietOutputList?: Array<DietHealthDetail>;
    totalActualHot?: number;
  }

  export interface AddPhotoDietInput {
    actualHot?: number;
    foodImg?: string;
    foodName?: string;
    mealType?: string;
    recordDay?: string;
  }

  export interface AddSportsLogInput {
    actualHot?: number;
    actualQuantity?: number;
    recordDay?: string;
    sportsTypeId?: string;
  }

  export interface AddSportsTypeCustomizeInput {
    hot?: string;
    name?: string;
    quantity?: string;
    unit?: string;
  }

  export interface AppletHistoryResponse {
    created?: Date;
    id?: number;
    params?: object;
    subTitle?: string;
    title?: string;
  }

  export interface BatchAddNormalDietInput {
    normalDietList?: Array<AddNormalDietInput>;
    photoDietList?: Array<AddPhotoDietInput>;
  }

  export interface BatchAddNormalDietOutput {
    normalDietList?: Array<DietHealthDetail>;
    photoDietList?: Array<DietHealthDetail>;
  }

  @Observed
  export class BodyInformationItemOutput {
    length?: string;
    name?: string;
    recordDate?: string;
    subName?: string;
    targetWeightStage?: string;
    unit?: string;
  }

  export interface BodyInformationOutput {
    height?: BodyInformationItemOutput;
    measurements?: BodyInformationItemOutput;
    weight?: BodyInformationItemOutput;
  }

  export interface BudgetHotOutput {
    budgetHot?: number;
    budgetHotType?: string;
    systemBudgetHot?: number;
  }

  export interface ComparedDataOutput {
    currentInHot?: number;
    currentOutHot?: number;
    dietIncrement?: number;
    historyInHot?: number;
    historyOutHot?: number;
    sportsIncrement?: number;
  }

  export interface DateRangeRequest {
    endDate?: Date;
    startDate?: Date;
  }

  export interface DeleteCustomFoodInput {
    customFoodId?: string;
  }

  export interface DeleteMeasurementsInput {
    currentDay?: string;
    recordDay?: string;
    type?: string;
  }

  export interface DeleteNormalDietInput {
    dietId?: string;
  }

  export interface DeletePhotoDietInput {
    photoDietId?: string;
  }

  export interface Diet7DayActualHotInput {
    currentDay?: Date;
    recordDay?: Date;
  }

  export interface Diet7DayActualHotOutput {
    actualHot?: number;
    day?: Date;
  }

  export interface Diet7DayOutput {
    budgetHot?: number;
    rows?: Array<Diet7DayActualHotOutput>;
  }

  export interface DietAppletHistoryInput {
    params?: Array<Map<string, object>>;
  }

  export interface DietDataDetailOutput {
    addHot?: string;
    breakfastHot?: string;
    dinnerHot?: string;
    lunchHot?: string;
    recordDay?: string;
    sportsHot?: string;
    totalInHot?: string;
  }

  export interface DietHomepageInput {
    day?: string;
    showWeight?: boolean;
  }

  export interface DietHomepageOutput {
    addMeal?: MealDetail;
    breakfastMeal?: MealDetail;
    dinnerMeal?: MealDetail;
    hotInfo?: HotsInfo;
    lunchMeal?: MealDetail;
    nutritionInfo?: NutritionInfo;
    weightInfo?: BodyMassInfo;
  }

  export interface DietHomepageOutputV2 {
    addMeal?: MealDetail;
    breakfastMeal?: MealDetail;
    dinnerMeal?: MealDetail;
    hotInfo?: HotsInfo;
    lunchMeal?: MealDetail;
    nutritionInfo?: NutritionInfo;
    sportsInfo?: SportsLogDetailOutput;
    targetWeight?: string;
    weight?: string;
    weightImg?: string;
    date?:string,
  }

  export interface DietIdInput {
    id?: string;
  }

  export interface DietLogDetailInput {
    foodType?: string;
    id?: number;
  }

  export interface DietPackageOutputRow {
    rows?: Array<BaseDietDefinition.DietPackageOutput>
  }

  export interface DietPackageOutput {
    dietImg?: string;
    foodType?: string;
    id?: string;
    name?: string;
    totalActualHot?: string;
    userQuantity?: string;
  }

  export interface DietPageOutput {
    dietRecord_page1?: DietRecordPage1;
    dietRecord_page2?: DietRecordPage2;
  }

  export interface DietRecordPage1 {
    dayAvgAddHot?: number;
    dayAvgReduceHot?: number;
    dietLogCount?: number;
    sportLogCount?: number;
  }

  export interface DietRecordPage2 {
    maxSportMinutesDay?: MaxSportMinutesDay;
    maxSportMinutesDaySummary?: SummaryOutput;
  }


  export interface DietRemindOutputList {
    rows?: DietRemindOutput[]
  }

  @Observed
  export class DietRemindOutput {
    id?: string;
    remindSwitch?: boolean;
    remindTime?: string;
    remindType?: string;
    userId?: string;
  }

  export interface DietSummaryInput {
    day?: string;
  }

  export interface DietTodoViewInput {
    endDate?: Date;
    startDate?: Date;
  }

  export interface DietTodoViewOutput {
    created?: Date;
    duration?: number;
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
  }

  export interface FoodDetailInput {
    foodId?: string;
    foodType?: string;
  }

  export interface FoodDetailOutput {
    exist?: boolean;
    foodDetail?: SysFoodDetailOutput;
  }

  export interface FoodMicroElementOutputRow {
    rows?: Array<BaseDietDefinition.FoodMicroElementOutput>
  }

  export interface FoodMicroElementOutput {
    content?: string;
    foodDetailId?: number;
    id?: number;
    name?: string;
    remark?: string;
    type?: string;
    unit?: string;
  }


  export interface FoodOutputRow {
    rows?: Array<BaseDietDefinition.FoodOutput>
  }

  export interface FoodOutput {
    carbohydrate?: string;
    carbohydratePct?: string;
    defaultWeight?: string;
    fat?: string;
    fatPct?: string;
    foodColor?: string;
    foodType?: string;
    foodUnitList?: Array<FoodUnitOutput>;
    hot?: string;
    id?: string;
    img?: string;
    measureUnit?: string;
    name?: string;
    protein?: string;
    proteinPct?: string;
  }

  export interface FoodUnitOutput {
    foodId?: string;
    foodType?: string;
    gram?: string;
    id?: string;
    unit?: string;
  }

  export interface HeightHomePageInput {
    currentDay?: string;
  }

  export interface HeightHomePageOutput {
    height?: string
    heightLogList?: Array<HeightLogOutput>;
  }

  export interface HeightLogOutput {
    dietGlobalAddType?: string;
    height?: string;
    id?: string;
    recordDay?: string;
    trend?: string;
    sinceNow?: string
  }

  export interface HotInfoInput {
    day?: Date;
  }

  export interface IdRequest {
    id: string;
  }

  export interface InitUserProfileInput {
    birthday?: string;
    currentDay?: string;
    gender?: number;
    height?: number;
    isLunar?: boolean;
    sportsType?: string;
    weight?: string;
    weightImg?: string;
  }

  export interface KeyIndexOutput {
    averageInHot?: string;
    averageOutHot?: string;
    dietTimes?: string;
    inHot?: string;
    outHot?: string;
    sportsTimes?: string;
  }

  export interface LocalTime {
    hour?: number;
    minute?: number;
    nano?: number;
    second?: number;
  }

  export interface MealInfoFromPackageOutput {
    canPack?: boolean;
    dietLogList?: Array<DietHealthDetail>;
    hasData?: boolean;
    mealTotalCarbohydrate?: number;
    mealTotalCarbohydratePct?: string;
    mealTotalFat?: number;
    mealTotalFatPct?: string;
    mealTotalHot?: number;
    mealTotalProtein?: number;
    mealTotalProteinPct?: string;
  }

  export interface MealInfoInput {
    mealType?: string;
    recordDay?: string;
  }

  export interface MealInfoOutput {
    canPack?: boolean;
    dietLogList?: Array<DietHealthDetail>;
    hasData?: boolean;
    mealTotalCarbohydrate?: string;
    mealTotalCarbohydratePct?: string;
    mealTotalFat?: string;
    mealTotalFatPct?: string;
    mealTotalHot?: string;
    mealTotalProtein?: string;
    mealTotalProteinPct?: string;
  }

  export interface MeasurementsHomePageInput {
    currentDay?: string;
    type?: string;
  }

  export interface MeasurementsLogOutput {
    id?: number;
    length?: number;
    recordDay?: Date;
    trend?: string;
  }

  export interface MeasurementsRecordDateInput {
    recordDay?: string;
    type?: string;
  }

  export interface MeasurementsWholeOutput {
    arm?: number;
    bust?: number;
    calf?: number;
    dietGlobalAddType?: string;
    hips?: number;
    id?: number;
    recordDay?: Date;
    thigh?: number;
    waist?: number;
  }

  export interface MonthAppraisalInput {
    month?: number;
    year?: number;
  }

  export interface MonthAppraisalRow {
    rows?: Array<BaseDietDefinition.MonthAppraisalOutput>
  }

  export interface MonthAppraisalOutput {
    appraisal?: string;
    day?: string;
  }

  export interface MonthHeightLogInput {
    month?: number;
    year?: number;
  }

  export interface MonthHeightLogOutput {
    heightLogList?: Array<HeightLogOutput>;
  }

  export interface MonthMeasurementsLogInput {
    month?: number;
    type?: string;
    year?: number;
  }

  export interface MonthMeasurementsLogOutput {
    measurementsLogList?: Array<MeasurementsLogOutput>;
  }

  export interface MonthWeightLogInput {
    month?: number;
    year?: number;
  }

  export interface MonthWeightLogOutput {
    weightLogList?: Array<WeightLogOutput>;
  }

  export class NutrientSummary {
    actual: string = '0';
    appraisal?: string;
    budgetMax?: string;
    budgetMin?: string;
  }

  export interface PaginableRequest {
    currentPage: number;
    keyword?: string;
    pageSize: number;
  }

  export interface RecordDateInput {
    recordDay?: string;
  }

  export interface Rule {
    expression?: string;
    repeatValue?: number;
    type?: string;
  }

  export interface SinceNowHeightLogOutput {
    dietGlobalAddType?: string;
    height?: number;
    id?: number;
    recordDay?: Date;
    sinceNow?: string;
    trend?: string;
  }

  export interface SinceNowMeasurementsLogOutput {
    id?: string;
    length?: string;
    recordDay?: string;
    sinceNow?: string;
    trend?: string;
  }

  export interface SinceNowWeightLogOutput {
    dietGlobalAddType?: string;
    id?: number;
    recordDay?: Date;
    sinceNow?: string;
    trend?: string;
    weight?: number;
    weightImg?: string;
  }

  export interface SportsLogByDateInput {
    recordDay?: string;
  }

  export interface SportsLogDetailOutput {
    sportsLogOutputs?: Array<SportsLogOutput>;
    totalHot?: string;
  }

  export interface SportsLogOutput {
    actualHot?: string;
    actualQuantity?: string;
    color?: string;
    dietGlobalAddType?: string;
    id?: string;
    recordDay?: string;
    sportsType?: string;
    sportsTypeHot?: string;
    sportsTypeId?: string;
    sportsTypeLogo?: string;
    sportsTypeLogoUrl?: string;
    sportsTypeName?: string;
    sportsTypeQuantity?: string;
    sportsTypeUnit?: string;
  }

  export interface SportsTypeCustomizeOutput {
    hot?: string;
    id?: string;
    logo?: string;
    logoUrl?: string;
    name?: string;
    quantity?: string;
    sort?: number;
    unit?: string;
    userQuantity?: string;
    logId?: string
  }

  export interface SportsTypeCustomizeOutputRow {
    rows?: Array<BaseDietDefinition.SportsTypeCustomizeOutput>
  }

  export interface SportsTypeSearchInput {
    keyWord?: string;
  }

  @Observed
  export class StatisticsHotOutput {
    hot?: string;
    inHot?: string;
    outHot?: string;
    recordDay?: string;
  }

  export interface StatisticsInput {
    recordDay?: string;
    startDay?: string;
    statisticsType?: string;
  }

  export interface StatisticsOutput {
    averageHot?: string;
    comparedData?: ComparedDataOutput;
    dietDataDetail?: Array<DietDataDetailOutput>;
    hotList?: Array<StatisticsHotOutput>;
    keyIndex?: KeyIndexOutput;
    statisticsType?: string;
  }

  export interface SummaryOutput {
    addMeal?: MealLittle;
    appraisal?: string;
    appraisalV2?: string;
    breakfastMeal?: MealLittle;
    carbohydrateNutrient?: NutrientSummary;
    dinnerMeal?: MealLittle;
    fatNutrient?: NutrientSummary;
    hasData?: boolean;
    lunchMeal?: MealLittle;
    proteinNutrient?: NutrientSummary;
    sportsInfo?: SportsLogDetailOutput;
    totalMeal?: TotalMealSummary;
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

  export interface SysFoodDetailOutput {
    carbohydrate?: string;
    carbohydratePct?: string;
    defaultWeight?: string;
    fat?: string;
    fatCrowd?: string;
    fatPct?: string;
    foodColor?: string;
    foodType?: string;
    foodUnitList?: Array<FoodUnitOutput>;
    hot?: string;
    hotChart?: string;
    id?: string;
    img?: string;
    measureUnit?: string;
    mineral?: string;
    name?: string;
    nutrient?: string;
    protein?: string;
    proteinPct?: string;
    relationFood?: string;
    tips?: string;
    usages?: string;
    vitamin?: string;
  }

  export interface SysFoodMicroElementListInput {
    sysFoodId?: string;
  }

  export interface TotalMealSummary {
    actualHot?: string;
    appraisal?: string;
    appraisalV2?: string;
    budgetHot?: string;
  }

  export interface UpdateBudgetHotInput {
    budgetHot?: string;
    budgetHotType?: string;
    currentDay?: string;
  }

  export interface UpdateDietRemindInput {
    id?: string;
    remindSwitch?: boolean;
    remindTime?: string;
    remindType?: string
    userId?: string
  }

  export interface UpdateHeightInput {
    currentDay?: string;
    height?: number;
    recordDay?: string;
  }

  export interface UpdateMeasurementsInput {
    currentDay?: string;
    length?: number;
    recordDay?: string;
    type?: string;
  }

  export interface UpdateNormalDietActualWeightInput {
    actualUnitAmount?: number;
    actualWeight?: number;
    dietId?: string;
    foodUnitId?: string;
  }

  export interface UpdatePhotoDietInput {
    actualHot?: string;
    foodName?: string;
    photoDietId?: string;
  }

  export interface UpdateSportsLogInput {
    actualHot?: number;
    actualQuantity?: number;
    id?: string;
  }

  export interface UpdateSportsTypeCustomizeInput {
    hot?: number;
    id?: number;
    name?: string;
    quantity?: number;
    unit?: string;
  }

  export interface UpdateTargetWeightInput {
    currentDateTime?: string;
    targetWeight?: string;
  }

  export interface UpdateUserProfileInput {
    birthday?: string;
    currentDay?: string;
    gender?: number;
    height?: string;
    isLunar?: boolean;
    sportsType?: string;
    weight?: string;
    weightImg?: string;
  }

  export interface UpdateWeightInput {
    currentDay?: string;
    recordDay?: string;
    weight?: number;
    weightImg?: string;
  }

  export interface UserProfileOutput {
    birthday?: string;
    budgetHot?: string;
    budgetHotType?: string;
    firstTime?: boolean;
    gender?: number;
    height?: string;
    isLunar?: boolean;
    sportsType?: string;
    systemBudgetHot?: string;
    targetWeight?: string;
    weight?: string;
    weightImg?: string;
    weightStage?: string;
  }

  export interface WeightHomePageInput {
    currentDay?: string;
  }

  export class WeightLogOutputRows {
    rows: WeightLogOutput[] = []
  }

  @Observed
  export class WeightLogOutput {
    dietGlobalAddType: string = '';
    id: string = '';
    recordDay: string = '';
    trend: string = '';
    weight: string = '';
    weightImg: string = ''
  }

  export interface addDietFromPackageInput {
    id?: string;
    mealType?: string;
    quantity?: number;
    recordDay?: string;
  }

  export interface BodyMassInfo {
    bodyMassIndexInfo?: BodyMassIndexInfo;
    targetWeightInfo?: TargetWeightInfo;
    weightLogList?: WeightLog[]
    weight?: string
    weightImg?: string
  }

  export interface BodyMassIndexInfo {
    bodyMassIndex?: string;
    bodyMassIndexStage?: string;

  }

  export interface TargetWeightInfo {
    targetWeight?: string;
    targetWeightSinceNow?: string;
    targetWeightStage?: string;
    targetWeightStageProgress?: string;
  }

  export interface WeightLog {
    id?: string
    recordDay?: string
    sinceNow?: string
    trend?: string
    weight?: string
    dietGlobalAddType?: string
    weightImg?: string
  }

  export interface MeasurementsHomepageUsingPOSTRsp {
    length?: string;
    measurementsLogList?: Array<SinceNowMeasurementsLogOutput>;
    type?: string;
  }

  export interface HotsInfo {
    budgetHot?: string;
    remainHot?: string;
    sportsHot?: string;
    totalActualHot?: string;
  }

  export interface DietHealthDetail {
    actualCarbohydrate?: string;
    actualFat?: string;
    actualHot?: string;
    actualProtein?: string;
    actualUnitAmount?: string;
    actualWeight?: string;
    created?: number;
    dietGlobalAddType?: string;
    foodCarbohydrate?: string;
    foodColor?: string;
    foodFat?: string;
    foodHot?: string;
    foodId?: string;
    foodImg?: string;
    foodMeasureUnit?: string;
    foodName?: string;
    foodProtein?: string;
    foodType?: string;
    foodUnit?: string;
    foodUnitId?: string;
    id?: string;
    mealType?: string;
    recordDay?: string;
    userId?: string;
  }

  export interface NutritionInfo {
    actualCarbohydrate?: number;
    actualFat?: number;
    actualProtein?: number;
    budgetCarbohydrate?: number;
    budgetFat?: number;
    budgetProtein?: number;
  }

  export interface MaxSportMinutesDay {
    day?: string;
    dayMinutes?: number;
  }

  export interface MealDetail {
    budgetHotMax?: string;
    budgetHotMin?: string;
    dietLogList?: Array<DietHealthDetail>;
    mealTotalHot?: string;
  }

  export class MealLittle {
    actualHot: string = '0'
    appraisal?: string;
    budgetHotMax?: string;
    budgetHotMin?: string;
  }
}
