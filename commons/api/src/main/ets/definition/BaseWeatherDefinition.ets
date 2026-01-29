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

export namespace BaseWeatherDefinition {
  export interface AppletWeatherInput {
    adcode?: string;
    apiVersion: string;
    cityId?: number;
    cityName?: string;
  }

  export interface CityInfoInput {
    cityName?: string;
    version?: string;
    cityId?: string;
    apiVersion?: string;
  }

  export interface CityInfoOutput {
    chineseName: string;
    chineseSpellLetter: string;
    englishName: string;
    id: number;
    provinceName: string;
    weatherId: string;
  }

  export interface CitySortInput {
    cityIds: Array<string>;
  }

  export interface CityWeatherDto {
    airLevel?: string;
    airQualityValue?: string;
    cityId?: number;
    cityName?: string;
    colorfrom?: string;
    colorto?: string;
    conditionDay?: string;
    conditionIdDay?: string;
    conditionIdNight?: string;
    conditionNight?: string;
    days?: Array<Map<string, object>>;
    hours?: Array<Map<string, object>>;
    imgBlack?: string;
    imgWhite?: string;
    liveIndex?: Array<Map<string, object>>;
    pop?: string;
    tempDay?: string;
    tempNight?: string;
    temperature?: string;
    weatherAlert?: WeatherAlertOutput;
    windDirDay?: string;
    windDirNight?: string;
    windLevelDay?: string;
    windLevelNight?: string;
  }

  export interface CityWeatherInput {
    apiVersion: string;
    cityId?: string;
    cityName?: string;
    version: string;
  }

  export interface DailyCityWeatherInput {
    cityName: string;
  }

  export interface LocalTime {
    hour?: number;
    minute?: number;
    nano?: number;
    second?: number;
  }

  export interface SyncDataRequest {
    fromId: number;
    fromVersion: number;
    pageSize: number;
    toVersion: number;
  }

  export interface UserCityInfoImportExportData {
    cityId?: number;
    cityName?: string;
    citySort?: number;
    id?: number;
    ip?: string;
    userCode?: number;
    userId?: number;
  }

  export interface UserCityInfoInput {
    adcode: string;
    cityId?: string;
    cityName: string;
  }

  export interface UserCityInfoOutput {
    cityId?: string;
    cityName?: string;
    citySort?: string;
    deleted?: boolean;
    imgBlack?: string;
    imgWhite?: string;
    tempDay?: string;
    tempNight?: string;
    updated?: string;
    userId?: string;
    version?: string;
  }

  export interface WeatherAlertOutput {
    cityId?: string;
    cityName?: string;
    content?: string;
    infoid?: string;
    level?: string;
    levelType?: number;
    name?: string;
    pubTime?: Date;
    title?: string;
    type?: string;
  }

  export interface WeatherApiOutput {
    city?: string;
    dressIndex?: object;
    humidity?: number;
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

  export interface WeatherCityImagePositionInput {
    adcode?: string;
    address?: string;
    cityName?: string;
    country?: string;
    district?: string;
    imageVersion?: string;
    latitude?: number;
    longitude?: number;
    province?: string;
  }

  export interface WeatherCityPositionInput {
    adcode?: string;
    address?: string;
    apiVersion: string;
    cityName?: string;
    country?: string;
    district?: string;
    latitude?: number;
    longitude?: number;
    province?: string;
    version: string;
  }
  export interface DaysIcon {
    imgB_Android?: string;
    img?: string;
    img_iOS?: string;
    img_Android?: string;
    imgB_iOS?: string;
  }
  export interface WeatherForecastDayOutput {
    cityId?: string;
    cityName?: string;
    conditionDay?: string;
    conditionIdDay?: string;
    conditionIdNight?: string;
    conditionNight?: string;
    humidity?: string;
    icon?: DaysIcon;
    moonphase?: string;
    moonrise?: string;
    moonset?: string;
    predictDate?: number;
    pubTime?: Date;
    sunrise?: string;
    sunset?: string;
    tempDay?: string;
    tempNight?: string;
    windDegreesDay?: string;
    windDegreesNight?: string;
    windDirDay?: string;
    windDirNight?: string;
    windLevelDay?: string;
    windLevelNight?: string;
    windSpeedDay?: string;
    windSpeedNight?: string;
  }

  export interface WeatherForecastHourOutput {
    cityId?: string;
    cityName?: string;
    conditionId?: string;
    conditionIdDay?: string;
    conditionIdNight?: string;
    hour?: number;
    humidity?: string;
    icon?: Map<string, string>;
    pop?: string;
    predictDate?: number;
    pressure?: string;
    pubTime?: Date;
    qpf?: string;
    realFeel?: string;
    snow?: string;
    temperature?: string;
    uvi?: string;
    weather?: string;
    windDegrees?: string;
    windDir?: string;
    windLevel?: string;
    windSpeed?: string;
  }

  export interface WeatherImportExportData {
    userCityInfoList?: Array<UserCityInfoImportExportData>;
  }

  export interface WeatherInfo {
    airLevel?: string;
    airQualityValue?: string;
    cityName?: string;
    condition?: string;
    conditionId?: string;
    conditionIdDay?: string;
    conditionIdNight?: string;
    days?: Array<WeatherForecastDayOutput>;
    hours?: Array<WeatherForecastHourOutput>;
    pop?: string;
    temperature?: number;
    temperatureHigh?: number;
    temperatureLow?: number;
    uvi?: string;
    weatherAlert?: WeatherAlertOutput;
    windDirDay?: string;
    windDirNight?: string;
    windLevelDay?: string;
    windLevelNight?: string;

    date?:string,
    isToday?:boolean,
    img?:string,
  }

  export interface WeatherPositionInput {
    adcode?: string;
    address?: string;
    cityName?: string;
    country?: string;
    district?: string;
    latitude?: number;
    longitude?: number;
    province?: string;
  }

  export interface WeatherPositionVersionInput {
    adcode?: string;
    address?: string;
    cityName?: string;
    country?: string;
    district?: string;
    latitude?: number;
    longitude?: number;
    province?: string;
    version?: string;
  }

  export interface WeatherQueryInput {
    city?: string;
    date?: Date;
  }

  export interface WeatherSwitchDto {
    alertPushSwitch: boolean;
    dailyPushSwitch: boolean;
    dailyPushTime: LocalTime;
  }

  export interface WeatherTransferCondition {
    begin?: Date;
    end?: Date;
    futureUserId?: number;
    livelihoodUserId?: number;
    transferId?: number;
    userPhone?: string;
  }

  export interface WeatherVersionInput {
    version: string;
  }
}
