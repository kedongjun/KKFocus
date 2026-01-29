import { get, post, put, remove, options, head, patch } from 'utils';
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
} from './../definition/BaseDefinition';
import { BaseWeatherDefinition } from './../definition/BaseWeatherDefinition';
import { BaseWeatherUrlConstant } from './../constant/BaseWeatherUrlConstant';

export namespace BaseWeatherOperation {
  export class WeatherAggregationController {
    static async baseWeatherDailyPost(userId: number):Promise<ApiResponse<BaseWeatherDefinition.WeatherInfo> | null | undefined> {
      let res: ApiResponse<BaseWeatherDefinition.WeatherInfo> | null | undefined = await post<ApiResponse<BaseWeatherDefinition.WeatherInfo>>(
        BaseWeatherUrlConstant.BASE_WEATHER_DAILY,
        {
        },
        {
        },
        {
            "user_id": userId
        },
      );

      return res;
    }

    static async baseWeatherV1GetmyappletweatherPost(dto: BaseWeatherDefinition.DailyCityWeatherInput, userId: number):Promise<ApiResponse<BaseWeatherDefinition.WeatherInfo> | null | undefined> {
      let res: ApiResponse<BaseWeatherDefinition.WeatherInfo> | null | undefined = await post<ApiResponse<BaseWeatherDefinition.WeatherInfo>>(
        BaseWeatherUrlConstant.BASE_WEATHER_V1_GET_MY_APPLET_WEATHER,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        dto
      );

      return res;
    }

    static async baseWeatherV2DailyPost(dto: BaseWeatherDefinition.DailyCityWeatherInput, userId: number):Promise<ApiResponse<BaseWeatherDefinition.WeatherInfo> | null | undefined> {
      let res: ApiResponse<BaseWeatherDefinition.WeatherInfo> | null | undefined = await post<ApiResponse<BaseWeatherDefinition.WeatherInfo>>(
        BaseWeatherUrlConstant.BASE_WEATHER_V2_DAILY,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        dto
      );

      return res;
    }

    static async baseWeatherV3DailyPost(dto: BaseWeatherDefinition.WeatherPositionInput, userId: number):Promise<ApiResponse<BaseWeatherDefinition.WeatherInfo> | null | undefined> {
      let res: ApiResponse<BaseWeatherDefinition.WeatherInfo> | null | undefined = await post<ApiResponse<BaseWeatherDefinition.WeatherInfo>>(
        BaseWeatherUrlConstant.BASE_WEATHER_V3_DAILY,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        dto
      );

      return res;
    }

    static async baseWeatherV4DailyPost(dto: BaseWeatherDefinition.WeatherPositionVersionInput):Promise<ApiResponse<BaseWeatherDefinition.WeatherInfo> | null | undefined> {
      let res: ApiResponse<BaseWeatherDefinition.WeatherInfo> | null | undefined = await post<ApiResponse<BaseWeatherDefinition.WeatherInfo>>(
        BaseWeatherUrlConstant.BASE_WEATHER_V4_DAILY,
        {
        },
        {
        },
        {
        },
        dto
      );

      return res;
    }

    static async baseWeatherV5DailyPost(dto: BaseWeatherDefinition.WeatherCityImagePositionInput, userId: number):Promise<ApiResponse<BaseWeatherDefinition.WeatherInfo> | null | undefined> {
      let res: ApiResponse<BaseWeatherDefinition.WeatherInfo> | null | undefined = await post<ApiResponse<BaseWeatherDefinition.WeatherInfo>>(
        BaseWeatherUrlConstant.BASE_WEATHER_V5_DAILY,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        dto
      );

      return res;
    }

    static async baseWeatherV6DailyPost(dto: BaseWeatherDefinition.WeatherCityImagePositionInput):Promise<ApiResponse<BaseWeatherDefinition.WeatherInfo> | null | undefined> {
      let res: ApiResponse<BaseWeatherDefinition.WeatherInfo> | null | undefined = await post<ApiResponse<BaseWeatherDefinition.WeatherInfo>>(
        BaseWeatherUrlConstant.BASE_WEATHER_V6_DAILY,
        {
        },
        {
        },
        {
        },
        dto
      );

      return res;
    }
  }


  export class CheckAliveController {
    static async checkaliveGet():Promise<number | null | undefined> {
      let res: number | null | undefined = await get<number>(
        BaseWeatherUrlConstant.CHECKALIVE,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }
  }


  export class WeatherController {
    static async baseWeatherAddusercityPost(ip: string, userCityInfoInput: BaseWeatherDefinition.UserCityInfoInput, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BaseWeatherUrlConstant.BASE_WEATHER_ADD_USER_CITY,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        userCityInfoInput
      );

      return res;
    }

    static async baseWeatherAddusercitynewPost(dto: BaseWeatherDefinition.UserCityInfoInput):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BaseWeatherUrlConstant.BASE_WEATHER_ADD_USER_CITY_NEW,
        {
        },
        {
        },
        {
        },
        dto
      );

      return res;
    }

    static async baseWeatherAppleappletPost(dto: BaseWeatherDefinition.AppletWeatherInput, userId: number):Promise<ApiResponse<BaseWeatherDefinition.CityWeatherDto> | null | undefined> {
      let res: ApiResponse<BaseWeatherDefinition.CityWeatherDto> | null | undefined = await post<ApiResponse<BaseWeatherDefinition.CityWeatherDto>>(
        BaseWeatherUrlConstant.BASE_WEATHER_APPLE_APPLET,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        dto
      );

      return res;
    }

    static async baseWeatherCityMNameMWeatherPost(dto: BaseWeatherDefinition.CityInfoInput):Promise<ApiResponse<BaseWeatherDefinition.CityWeatherDto> | null | undefined> {
      let res: ApiResponse<BaseWeatherDefinition.CityWeatherDto> | null | undefined = await post<ApiResponse<BaseWeatherDefinition.CityWeatherDto>>(
        BaseWeatherUrlConstant.BASE_WEATHER_CITY_NAME_WEATHER_URL,
        {
        },
        {
        },
        {
        },
        dto
      );

      return res;
    }

    static async baseWeatherCityMWeatherPost(dto: BaseWeatherDefinition.CityInfoInput):Promise<ApiResponse<BaseWeatherDefinition.CityWeatherDto> | null | undefined> {
      let res: ApiResponse<BaseWeatherDefinition.CityWeatherDto> | null | undefined = await post<ApiResponse<BaseWeatherDefinition.CityWeatherDto>>(
        BaseWeatherUrlConstant.BASE_WEATHER_CITY_WEATHER_URL,
        {
        },
        {
        },
        {
        },
        dto
      );

      return res;
    }

    static async baseWeatherGetcitylistbycitynamePost(cityInfoInput: BaseWeatherDefinition.CityInfoInput):Promise<RowResponse<Array<BaseWeatherDefinition.CityInfoOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseWeatherDefinition.CityInfoOutput>> | null | undefined = await post<RowResponse<Array<BaseWeatherDefinition.CityInfoOutput>>>(
        BaseWeatherUrlConstant.BASE_WEATHER_GET_CITY_LIST_BY_CITY_NAME,
        {
        },
        {
        },
        {
        },
        cityInfoInput
      );

      return res;
    }

    static async baseWeatherGetpushswitchPost(userId: number):Promise<ApiResponse<BaseWeatherDefinition.WeatherSwitchDto> | null | undefined> {
      let res: ApiResponse<BaseWeatherDefinition.WeatherSwitchDto> | null | undefined = await post<ApiResponse<BaseWeatherDefinition.WeatherSwitchDto>>(
        BaseWeatherUrlConstant.BASE_WEATHER_GET_PUSH_SWITCH,
        {
        },
        {
        },
        {
            "user_id": userId
        },
      );

      return res;
    }

    static async baseWeatherGetusercityweatherlistPost(userId: number):Promise<RowResponse<Array<BaseWeatherDefinition.UserCityInfoOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseWeatherDefinition.UserCityInfoOutput>> | null | undefined = await post<RowResponse<Array<BaseWeatherDefinition.UserCityInfoOutput>>>(
        BaseWeatherUrlConstant.BASE_WEATHER_GET_USER_CITY_WEATHER_LIST,
        {
        },
        {
        },
        {
            "user_id": userId
        },
      );

      return res;
    }

    static async baseWeatherGetusercityweatherlist21Post(dto: BaseWeatherDefinition.WeatherVersionInput, userId: number):Promise<RowResponse<Array<BaseWeatherDefinition.UserCityInfoOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseWeatherDefinition.UserCityInfoOutput>> | null | undefined = await post<RowResponse<Array<BaseWeatherDefinition.UserCityInfoOutput>>>(
        BaseWeatherUrlConstant.BASE_WEATHER_GET_USER_CITY_WEATHER_LIST21,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        dto
      );

      return res;
    }

    static async baseWeatherGetusercityweatherlistnewPost(dto: BaseWeatherDefinition.WeatherVersionInput):Promise<RowResponse<Array<BaseWeatherDefinition.UserCityInfoOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseWeatherDefinition.UserCityInfoOutput>> | null | undefined = await post<RowResponse<Array<BaseWeatherDefinition.UserCityInfoOutput>>>(
        BaseWeatherUrlConstant.BASE_WEATHER_GET_USER_CITY_WEATHER_LIST_NEW,
        {
        },
        {
        },
        {
        },
        dto
      );

      return res;
    }

    static async baseWeatherPositionMWeatherPost(dto: BaseWeatherDefinition.WeatherCityPositionInput):Promise<ApiResponse<BaseWeatherDefinition.CityWeatherDto> | null | undefined> {
      let res: ApiResponse<BaseWeatherDefinition.CityWeatherDto> | null | undefined = await post<ApiResponse<BaseWeatherDefinition.CityWeatherDto>>(
        BaseWeatherUrlConstant.BASE_WEATHER_POSITION_WEATHER_URL,
        {
        },
        {
        },
        {
        },
        dto
      );

      return res;
    }

    static async baseWeatherRemoveusercityPost(userCityInfoInput: BaseWeatherDefinition.UserCityInfoInput):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BaseWeatherUrlConstant.BASE_WEATHER_REMOVE_USER_CITY,
        {
        },
        {
        },
        {
        },
        userCityInfoInput
      );

      return res;
    }

    static async baseWeatherSavepushswitchPost(dto: BaseWeatherDefinition.WeatherSwitchDto, ip: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BaseWeatherUrlConstant.BASE_WEATHER_SAVE_PUSH_SWITCH,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        dto
      );

      return res;
    }

    static async baseWeatherSortPost(dto: BaseWeatherDefinition.CitySortInput):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BaseWeatherUrlConstant.BASE_WEATHER_SORT,
        {
        },
        {
        },
        {
        },
        dto
      );

      return res;
    }

    static async baseWeatherUserUCityExportdataPost(condition: BaseWeatherDefinition.WeatherTransferCondition, userId: number):Promise<ApiResponse<BaseWeatherDefinition.WeatherImportExportData> | null | undefined> {
      let res: ApiResponse<BaseWeatherDefinition.WeatherImportExportData> | null | undefined = await post<ApiResponse<BaseWeatherDefinition.WeatherImportExportData>>(
        BaseWeatherUrlConstant.BASE_WEATHER_USER_CITY_EXPORT_DATA_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        condition
      );

      return res;
    }

    static async baseWeatherUserUCityImportdataPost(importData: BaseWeatherDefinition.WeatherImportExportData, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseWeatherUrlConstant.BASE_WEATHER_USER_CITY_IMPORT_DATA_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        importData
      );

      return res;
    }

    static async baseWeatherUserUCitySyncUDataPost(syncDataInput: BaseWeatherDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseWeatherDefinition.UserCityInfoOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseWeatherDefinition.UserCityInfoOutput>> | null | undefined = await post<RowResponse<Array<BaseWeatherDefinition.UserCityInfoOutput>>>(
        BaseWeatherUrlConstant.BASE_WEATHER_USER_CITY_SYNC_DATA_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        syncDataInput
      );

      return res;
    }

    static async baseWeatherV1GetcityweatherbycodePost(cityId: number, cityName: string):Promise<BaseWeatherDefinition.WeatherApiOutput | null | undefined> {
      let res: BaseWeatherDefinition.WeatherApiOutput | null | undefined = await post<BaseWeatherDefinition.WeatherApiOutput>(
        BaseWeatherUrlConstant.BASE_WEATHER_V1_GET_CITY_WEATHER_BY_CODE,
        {
        },
        {
            "cityId": cityId,
            "cityName": cityName
        },
        {
        },
      );

      return res;
    }

    static async baseWeatherV1GetcityweatherbynamePost(input: BaseWeatherDefinition.WeatherQueryInput):Promise<BaseWeatherDefinition.WeatherApiOutput | null | undefined> {
      let res: BaseWeatherDefinition.WeatherApiOutput | null | undefined = await post<BaseWeatherDefinition.WeatherApiOutput>(
        BaseWeatherUrlConstant.BASE_WEATHER_V1_GET_CITY_WEATHER_BY_NAME,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseWeatherV1GetweatherdaysPost(dto: BaseWeatherDefinition.CityInfoInput):Promise<Array<BaseWeatherDefinition.WeatherForecastDayOutput> | null | undefined> {
      let res: Array<BaseWeatherDefinition.WeatherForecastDayOutput> | null | undefined = await post<Array<BaseWeatherDefinition.WeatherForecastDayOutput>>(
        BaseWeatherUrlConstant.BASE_WEATHER_V1_GET_WEATHER_DAYS,
        {
        },
        {
        },
        {
        },
        dto
      );

      return res;
    }

    static async baseWeatherV1GetweatherhoursPost(dto: BaseWeatherDefinition.CityInfoInput):Promise<Array<BaseWeatherDefinition.WeatherForecastHourOutput> | null | undefined> {
      let res: Array<BaseWeatherDefinition.WeatherForecastHourOutput> | null | undefined = await post<Array<BaseWeatherDefinition.WeatherForecastHourOutput>>(
        BaseWeatherUrlConstant.BASE_WEATHER_V1_GET_WEATHER_HOURS,
        {
        },
        {
        },
        {
        },
        dto
      );

      return res;
    }
  }
}
