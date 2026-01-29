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

export namespace BaseDressDefinition {
  export interface DateRangeRequest {
    endDate?: Date;
    startDate?: Date;
  }

  export interface DressAddInput {
    city?: string;
    coverImage?: string;
    dateTime?: Date;
    favor?: boolean;
    id?: number;
    img?: Array<string>;
    occasionId?: number;
    remark?: string;
    score?: number;
    weather?: WeatherOutput;
  }

  export interface DressClassifiedOutput {
    coverImage?: string;
    dateTime?: string;
    id?: number;
    img?: Array<string>;
    occasion?: string;
    quarter?: number;
    score?: string;
    weather?: DressWeatherOutput;
  }

  export interface DressCountOutput {
    dressCount?: number;
    favorList?: Array<string>;
    occasionList?: Array<string>;
  }

  export interface DressDetailInput {
    id?: string;
  }

  export interface DressFavorInput {
    favor?: boolean;
    id?: string;
  }

  export interface DressFinishedInput {
    finishDay?: Date;
    finishState?: boolean;
    id?: number;
  }

  export interface DressFinishedOutput {
    finishDate?: Date;
    finishState?: boolean;
    id?: number;
  }

  export interface DressFinishedSearchInput {
    fromVersion?: number;
    toVersion?: number;
  }

  export interface DressFutureDaysOutput {
    days?: number;
  }

  export interface DressOutput {
    coverImage?: string;
    created?: Date;
    dateTime: string;
    favor?: boolean;
    id?: string;
    img?: Array<string>;
    occasion?: string;
    occasionId?: number;
    quarter?: number;
    reCommendReason?: string;
    recommentCount?: number;
    remark?: string;
    score?: number;
    weather?: WeatherOutput;
  }

  export interface DressQueryByDateInput {
    dateTime: string;
  }

  export interface DressQueryByTypeInput {
    pageNum?: number;
    pageSize?: number;
    quarter?: number;
    type?: string;
  }

  export interface DressRecommendWeatherInput {
    type?: string;
    weatherinput?: WeatherInput;
  }

  export interface DressRemindInput {
    remindTime?: LocalTime;
  }

  export interface DressRemindOutput {
    id?: number;
    remindTime?: LocalTime;
  }

  export interface DressSeasonOutput {
    autumnDressCount?: string;
    springDressCount?: string;
    summerDressCount?: string;
    winterDressCount?: string;
  }

  export interface DressTodoViewInput {
    fromVersion?: number;
    toVersion?: number;
  }

  export interface DressTodoViewItemOutput {
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

  export interface DressTodoViewListOutput {
    list?: Array<DressTodoViewItemOutput>;
  }

  export interface DressTodoViewOutput {
    id?: number;
    ruleList?: Array<Rule>;
    shortTitle?: string;
  }

  export interface DressTodoViewsInput {
    endDate?: string;
    startDate?: string;
  }

  export interface DressUpdateInput {
    coverImage?: string;
    favor?: boolean;
    id?: string;
    img?: Array<string>;
    occasionId?: number;
    remark?: string;
    score?: number;
  }

  export interface DressWeatherOutput {
    temperature?: number;
    weather?: string;
  }

  export interface DressedOutput {
    dressed?: boolean;
  }

  export interface ExistedUserDressOutput {
    existed?: boolean;
  }

  export interface JobPullInput {
    currentMaxId?: number;
    expires?: Date;
    size?: number;
  }

  export interface JobPullOutput {
    extendParams?: Map<string, string>;
    id?: number;
    importance?: number;
    offset?: number;
    pushCode?: string;
    pushTime?: Date;
    pushType?: string;
    ruleId?: number;
    section?: number;
    startDeliverTime?: number;
    targets?: Array<string>;
    taskId?: number;
    templateParams?: Map<string, string>;
    templeteCode?: string;
    todoTime?: Date;
    triggerTime?: Date;
    userId?: number;
    userIds?: Array<number>;
  }

  export interface LocalTime {
    hour?: number;
    minute?: number;
    nano?: number;
    second?: number;
  }

  export interface OccasionIdAndConvertIdInput {
    id?: number;
    occasionId?: number;
  }

  export interface OccasionIdInput {
    id?: number;
  }

  export interface OccasionInput {
    id?: number;
    occasion?: string;
    sort?: number;
  }

  export interface OccasionOutput {
    id?: number;
    occasion?: string;
    sort?: number;
  }

  export interface Rule {
    expression?: string;
    repeatValue?: number;
    type?: string;
  }

  export interface WeatherInput {
    city?: string;
    dateTime?: Date;
    dressDesc?: string;
    humidity?: number;
    level?: number;
    maxTemperature?: number;
    minTemperature?: number;
    pressure?: number;
    realFeel?: number;
    sunrise?: Date;
    sunset?: Date;
    temperature?: number;
    uvi?: number;
    weather?: string;
    windDegrees?: number;
    windDir?: string;
    windLevel?: number;
    windSpeed?: number;
  }

  export interface WeatherOutput {
    city?: string;
    dressDesc?: string;
    humidity?: number;
    level?: number;
    maxTemperature?: number;
    minTemperature?: number;
    pressure?: number;
    realFeel?: number;
    sunrise?: Date;
    sunset?: Date;
    temperature?: number;
    uvi?: number;
    weather?: string;
    windDegrees?: number;
    windDir?: string;
    windLevel?: number;
    windSpeed?: number;
  }
}
