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

export namespace BaseDailyDefinition {
  export interface CollectCountDto {
    englishCollectCount?: number;
    mottoCollectCount?: number;
    paintingCollectCount?: number;
    poetryCollectCount?: number;
  }

  export interface CollectIdInput {
    id?: string;
  }

  export interface CollectIdListInput {
    ids?: Array<string>;
  }

  export interface ExtParamsInput{
    astrologyIcon?:string,
    colorIcon?:string,
    whiteIcon?:string
  }

  export interface ConstellationDto {
    day?: Date;
    dayNotice?: string;
    endDay?: string;
    extParams?: ExtParamsInput;
    generalIndex?: string;
    generalTxt?: string;
    grxz?: string;
    healthTxt?: string;
    loveIndex?: string;
    loveStar?: string;
    loveTxt?: string;
    luckyColor?: string;
    luckyDay?: string;
    luckyDirection?: string;
    luckyNum?: string;
    luckyTime?: string;
    moneyIndex?: string;
    moneyStar?: string;
    moneyTxt?: string;
    monthAdvantage?: string;
    monthWeakness?: string;
    oneWord?: string;
    star?: string;
    starName?: string;
    startDay?: string;
    summaryStar?: string;
    time?: string;
    type?: string;
    weekNotice?: string;
    workIndex?: string;
    workStar?: string;
    workTxt?: string;
    xrxz?: string;
    yfxz?: string;
  }

  export interface ConstellationInput {
    star?: string;
    version?: string;
  }

  export interface DailyEnglishCollectDto {
    audioPath?: string;
    chinese?: string;
    collectTime: string;
    count?: number;
    english?: string;
    englishId?: string;
    id?: string;
    imgPath?: string;
    showDay: string;
  }

  export interface DailyEnglishDto {
    audioPath?: string;
    chinese?: string;
    english?: string;
    id?: string;
    imgPath?: string;
    isCollect?: boolean;
    readCount?: number;
    showDay?: string;
  }

  export interface DailyFinishedInput {
    finishDay?: Date;
    finishState?: boolean;
  }

  export interface GetDailyRemindInput {
    remindType?:string;
    dataVersion?: string;
  }

  export interface DailyPaintingCollectDto {
    author?: string;
    collectTime: string;
    count?: number;
    description?: string;
    id?: number;
    imgPath?: string;
    name?: string;
    paintingId?: string;
    paintingTime?: string;
    showDay: string;
  }

  export interface DailyPaintingDto {
    author?: string;
    description?: string;
    id?: number;
    imgPath?: string;
    isCollect?: boolean;
    name?: string;
    paintingTime?: string;
    showDay?: string;
  }

  export interface DailyPoetryCollectDto {
    analyse?: string;
    author?: string;
    collectTime: string;
    content?: string;
    count?: number;
    dynasty?: string;
    id?: number;
    name?: string;
    poetryId?: string;
    showDay: string;
    translation?: string;
    type?: number;
  }

  export interface DailyPoetryDto {
    analyse?: string;
    author?: string;
    content?: string;
    dynasty?: string;
    id?: number;
    isCollect?: boolean;
    name?: string;
    showDay?: Date;
    translation?: string;
    type?: number;
  }

  export interface DailyRemindConfigInput {
    remindSwitch?: boolean;
    remindTime?: string;
    remindType?: string;
    dailyPushTime?:string;
    alertPushSwitch?:boolean;
    dailyPushSwitch?:boolean;
  }

  export interface DailyRemindConfigOutput {
    id?: number;
    remindSwitch?: boolean;
    remindTime?: string;
  }

  export interface DailyScenicSpotCollectDto {
    address?: string;
    collectTime: string;
    count?: number;
    detail?: string;
    homeImgList?: Array<string>;
    id?: number;
    imgPathList: Array<string>;
    name?: string;
    scenicSpotDescription?: string;
    scenicSpotId?: string;
    showDay: string;
  }

  export interface DailyScenicSpotDto {
    address?: string;
    detail?: string;
    homeImgList?: Array<string>;
    id?: string;
    imgPathList?: Array<string>;
    isCollect?: boolean;
    name?: string;
    readCount?: number;
    scenicSpotDescription?: string;
    showDay?: Date;
  }

  export interface DailyTodoViewListOutput {
    list?: Array<DailyTodoViewOutput>;
  }

  export interface DailyTodoViewOutput {
    created?: Date;
    finishState?: number;
    id?: number;
    importance?: number;
    intervalType?: number;
    shortTitle?: string;
    title?: string;
    todoClassifyId?: number;
    todoTime?: Date;
    todoType?: number;
    updated?: Date;
    version?: number;
    widgetSubTitle?: string;
  }

  export interface DailyTypesInput {
    version?: string;
  }

  export interface DateRangeRequest {
    endDate?: Date;
    startDate?: Date;
  }

  export interface DayConstellationInput {
    day?: string;
    version?: string;
  }

  export interface IdRequest {
    id: number;
  }

  export interface IsCollectOutput {
    isCollect?: boolean;
  }

  export interface JokeCollectOutput {
    collectTime?: Date;
    content?: string;
    count?: number;
    id?: number;
    jokeId?: number;
    showDay?: Date;
    title?: string;
  }

  export interface JokeOutput {
    content?: string;
    id?: number;
    isCollect?: boolean;
    title?: string;
  }

  export interface LicensePlateNumLimitDto {
    cityCode?: string;
    cityName?: string;
    licensePlateNumLimit?: Array<string>;
    limitData?: object;
  }

  export interface LicensePlateNumLimitInput {
    cityName?: string;
  }

  export interface LocalTime {
    hour?: number;
    minute?: number;
    nano?: number;
    second?: number;
  }

  export interface NewsDto {
    newsContent?: string;
    newsId?: string;
    newsTitle?: string;
    newsUrl?: string;
    pubSource?: string;
    pubTime?: Date;
  }

  export interface PaginableRequest {
    currentPage: number;
    keyword?: string;
    pageSize: number;
  }

  export interface ShowDayInput {
    contain?: boolean;
    direction?: string;
    showDay?: string;
    type?: string;
  }

  export interface StockIndexDto {
    closingPrice?: number;
    currentPrice?: number;
    indexCode?: string;
    indexName?: string;
    openingPrice?: number;
    pubTime?: Date;
  }

  export interface StoryCollectOutput {
    collectTime?: Date;
    content?: string;
    count?: number;
    id?: number;
    showDay?: Date;
    storyId?: number;
    title?: string;
    type?: string;
    typeName?: string;
  }

  export interface StoryDto {
    content?: string;
    id?: number;
    isCollect?: boolean;
    showDay?: Date;
    title?: string;
    type?: string;
    typeName?: string;
  }

  export interface SyncDataAppletFinishResponse {
    finishDate?: Date;
    finishState?: boolean;
    id?: number;
  }

  export interface SyncDataRequest {
    fromId: number;
    fromVersion: number;
    pageSize: number;
    toVersion: number;
  }

  export interface TipsCollectOutput {
    collectTime?: Date;
    content?: string;
    count?: number;
    id?: number;
    showDay?: Date;
    tipsId?: number;
    title?: string;
  }

  export interface TipsOutput {
    content?: string;
    id?: number;
    isCollect?: boolean;
    title?: string;
  }

  export interface DailyConstellation21UsingPOSTRsp {
    day?: Date;
    dayNotice?: string;
    endDay?: string;
    extParams?: object;
    generalIndex?: string;
    generalTxt?: string;
    grxz?: string;
    healthTxt?: string;
    img?: string;
    loveIndex?: string;
    loveStar?: string;
    loveTxt?: string;
    luckyColor?: string;
    luckyDay?: string;
    luckyDirection?: string;
    luckyNum?: string;
    luckyTime?: string;
    moneyIndex?: string;
    moneyStar?: string;
    moneyTxt?: string;
    monthAdvantage?: string;
    monthWeakness?: string;
    oneWord?: string;
    star?: string;
    starName?: string;
    startDay?: string;
    summaryStar?: string;
    time?: string;
    type?: string;
    weekNotice?: string;
    workIndex?: string;
    workStar?: string;
    workTxt?: string;
    xrxz?: string;
    yfxz?: string;
  }
}
