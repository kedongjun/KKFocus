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
import { BaseDressDefinition } from './../definition/BaseDressDefinition';
import { BaseDressUrlConstant } from './../constant/BaseDressUrlConstant';

export namespace BaseDressOperation {
  export class DressFinishedController {
    static async baseDressV1GetdressfinishedPost(input: BaseDressDefinition.DressFinishedSearchInput, userId: number):Promise<RowResponse<Array<BaseDressDefinition.DressFinishedOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseDressDefinition.DressFinishedOutput>> | null | undefined = await post<RowResponse<Array<BaseDressDefinition.DressFinishedOutput>>>(
        BaseDressUrlConstant.BASE_DRESS_V1_GET_DRESS_FINISHED,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseDressV1SetdressfinishedPost(input: BaseDressDefinition.DressFinishedInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDressUrlConstant.BASE_DRESS_V1_SET_DRESS_FINISHED,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        input
      );

      return res;
    }
  }


  export class CheckAliveController {
    static async checkaliveGet():Promise<number | null | undefined> {
      let res: number | null | undefined = await get<number>(
        BaseDressUrlConstant.CHECKALIVE,
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


  export class DressController {
    static async baseDressV1AdddressweatherPost(input: BaseDressDefinition.WeatherInput, ip: string, userId: number):Promise<BaseDressDefinition.WeatherOutput | null | undefined> {
      let res: BaseDressDefinition.WeatherOutput | null | undefined = await post<BaseDressDefinition.WeatherOutput>(
        BaseDressUrlConstant.BASE_DRESS_V1_ADD_DRESS_WEATHER,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseDressV1AddoccasionPost(input: BaseDressDefinition.OccasionInput):Promise<ApiResponse<BaseDressDefinition.OccasionInput> | null | undefined> {
      let res: ApiResponse<BaseDressDefinition.OccasionInput> | null | undefined = await post<ApiResponse<BaseDressDefinition.OccasionInput>>(
        BaseDressUrlConstant.BASE_DRESS_V1_ADD_OCCASION,
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

    static async baseDressV1AdduserdressPost(input: BaseDressDefinition.DressAddInput, ip: string, userId: number):Promise<ApiResponse<BaseDressDefinition.DressAddInput> | null | undefined> {
      let res: ApiResponse<BaseDressDefinition.DressAddInput> | null | undefined = await post<ApiResponse<BaseDressDefinition.DressAddInput>>(
        BaseDressUrlConstant.BASE_DRESS_V1_ADD_USER_DRESS,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseDressV1DaterangecountPost(input: BaseDressDefinition.DateRangeRequest, userId: number):Promise<ApiResponse<BaseDressDefinition.DressCountOutput> | null | undefined> {
      let res: ApiResponse<BaseDressDefinition.DressCountOutput> | null | undefined = await post<ApiResponse<BaseDressDefinition.DressCountOutput>>(
        BaseDressUrlConstant.BASE_DRESS_V1_DATE_RANGE_COUNT,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseDressV1DeleteoccasionPost(id: BaseDressDefinition.OccasionIdAndConvertIdInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDressUrlConstant.BASE_DRESS_V1_DELETE_OCCASION,
        {
        },
        {
        },
        {
        },
        id
      );

      return res;
    }

    static async baseDressV1DeleteuserdressPost(input: BaseDressDefinition.DressDetailInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDressUrlConstant.BASE_DRESS_V1_DELETE_USER_DRESS,
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

    static async baseDressV1ExisteduserdressbyoccasionidPost(id: BaseDressDefinition.OccasionIdInput, userId: number):Promise<ApiResponse<BaseDressDefinition.ExistedUserDressOutput> | null | undefined> {
      let res: ApiResponse<BaseDressDefinition.ExistedUserDressOutput> | null | undefined = await post<ApiResponse<BaseDressDefinition.ExistedUserDressOutput>>(
        BaseDressUrlConstant.BASE_DRESS_V1_EXISTED_USER_DRESS_BY_OCCASION_ID,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        id
      );

      return res;
    }

    static async baseDressV1GetdressdatePost(input: BaseDressDefinition.DressTodoViewsInput):Promise<RowResponse<Array<string>> | null | undefined> {
      let res: RowResponse<Array<string>> | null | undefined = await post<RowResponse<Array<string>>>(
        BaseDressUrlConstant.BASE_DRESS_V1_GET_DRESS_DATE,
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

    static async baseDressV1GetdressfuturedaysPost(userId: number):Promise<ApiResponse<BaseDressDefinition.DressFutureDaysOutput> | null | undefined> {
      let res: ApiResponse<BaseDressDefinition.DressFutureDaysOutput> | null | undefined = await post<ApiResponse<BaseDressDefinition.DressFutureDaysOutput>>(
        BaseDressUrlConstant.BASE_DRESS_V1_GET_DRESS_FUTURE_DAYS,
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

    static async baseDressV1GetdressseasonPost():Promise<ApiResponse<BaseDressDefinition.DressSeasonOutput> | null | undefined> {
      let res: ApiResponse<BaseDressDefinition.DressSeasonOutput> | null | undefined = await post<ApiResponse<BaseDressDefinition.DressSeasonOutput>>(
        BaseDressUrlConstant.BASE_DRESS_V1_GET_DRESS_SEASON,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseDressV1GetoccasionsPost():Promise<RowResponse<Array<BaseDressDefinition.OccasionOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseDressDefinition.OccasionOutput>> | null | undefined = await post<RowResponse<Array<BaseDressDefinition.OccasionOutput>>>(
        BaseDressUrlConstant.BASE_DRESS_V1_GET_OCCASIONS,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseDressV1GetuserdressPost(input: BaseDressDefinition.DressQueryByDateInput):Promise<ApiResponse<BaseDressDefinition.DressOutput> | null | undefined> {
      let res: ApiResponse<BaseDressDefinition.DressOutput> | null | undefined = await post<ApiResponse<BaseDressDefinition.DressOutput>>(
        BaseDressUrlConstant.BASE_DRESS_V1_GET_USER_DRESS,
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

    static async baseDressV1GetuserdressbytypePost(input: BaseDressDefinition.DressQueryByTypeInput):Promise<ApiResponse<Page<BaseDressDefinition.DressClassifiedOutput>> | null | undefined> {
      let res: ApiResponse<Page<BaseDressDefinition.DressClassifiedOutput>> | null | undefined = await post<ApiResponse<Page<BaseDressDefinition.DressClassifiedOutput>>>(
        BaseDressUrlConstant.BASE_DRESS_V1_GET_USER_DRESS_BY_TYPE,
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

    static async baseDressV1GetuserdressdetailPost(input: BaseDressDefinition.DressDetailInput):Promise<ApiResponse<BaseDressDefinition.DressOutput> | null | undefined> {
      let res: ApiResponse<BaseDressDefinition.DressOutput> | null | undefined = await post<ApiResponse<BaseDressDefinition.DressOutput>>(
        BaseDressUrlConstant.BASE_DRESS_V1_GET_USER_DRESS_DETAIL,
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

    static async baseDressV1GetuserdressrecommendPost(input: BaseDressDefinition.DressRecommendWeatherInput, userId: number):Promise<ApiResponse<BaseDressDefinition.DressOutput> | null | undefined> {
      let res: ApiResponse<BaseDressDefinition.DressOutput> | null | undefined = await post<ApiResponse<BaseDressDefinition.DressOutput>>(
        BaseDressUrlConstant.BASE_DRESS_V1_GET_USER_DRESS_RECOMMEND,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseDressV1GetuserdressrecommendsPost(input: BaseDressDefinition.WeatherInput, userId: number):Promise<RowResponse<Array<number>> | null | undefined> {
      let res: RowResponse<Array<number>> | null | undefined = await post<RowResponse<Array<number>>>(
        BaseDressUrlConstant.BASE_DRESS_V1_GET_USER_DRESS_RECOMMENDS,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseDressV1SetfavorPost(input: BaseDressDefinition.DressFavorInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDressUrlConstant.BASE_DRESS_V1_SET_FAVOR,
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

    static async baseDressV1UpdateoccasionPost(input: BaseDressDefinition.OccasionInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDressUrlConstant.BASE_DRESS_V1_UPDATE_OCCASION,
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

    static async baseDressV1UpdateuserdressPost(input: BaseDressDefinition.DressUpdateInput):Promise<ApiResponse<BaseDressDefinition.DressOutput> | null | undefined> {
      let res: ApiResponse<BaseDressDefinition.DressOutput> | null | undefined = await post<ApiResponse<BaseDressDefinition.DressOutput>>(
        BaseDressUrlConstant.BASE_DRESS_V1_UPDATE_USER_DRESS,
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

    static async baseDressV1UserdressedPost(userId: number):Promise<ApiResponse<BaseDressDefinition.DressedOutput> | null | undefined> {
      let res: ApiResponse<BaseDressDefinition.DressedOutput> | null | undefined = await post<ApiResponse<BaseDressDefinition.DressedOutput>>(
        BaseDressUrlConstant.BASE_DRESS_V1_USER_DRESSED,
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

    static async baseDressV2GetuserdressrecommendPost(input: BaseDressDefinition.DressRecommendWeatherInput, userId: number):Promise<ApiResponse<BaseDressDefinition.DressOutput> | null | undefined> {
      let res: ApiResponse<BaseDressDefinition.DressOutput> | null | undefined = await post<ApiResponse<BaseDressDefinition.DressOutput>>(
        BaseDressUrlConstant.BASE_DRESS_V2_GET_USER_DRESS_RECOMMEND,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }
  }


  export class DressRemindController {
    static async baseDressJobElementsPost(input: BaseDressDefinition.JobPullInput):Promise<Array<BaseDressDefinition.JobPullOutput> | null | undefined> {
      let res: Array<BaseDressDefinition.JobPullOutput> | null | undefined = await post<Array<BaseDressDefinition.JobPullOutput>>(
        BaseDressUrlConstant.BASE_DRESS_JOB_ELEMENTS,
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

    static async baseDressV1GetdressremindPost(userId: number):Promise<ApiResponse<BaseDressDefinition.DressRemindOutput> | null | undefined> {
      let res: ApiResponse<BaseDressDefinition.DressRemindOutput> | null | undefined = await post<ApiResponse<BaseDressDefinition.DressRemindOutput>>(
        BaseDressUrlConstant.BASE_DRESS_V1_GET_DRESS_REMIND,
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

    static async baseDressV1GetdresstodoviewPost(input: BaseDressDefinition.DressTodoViewInput, userId: number):Promise<RowResponse<Array<BaseDressDefinition.DressTodoViewOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseDressDefinition.DressTodoViewOutput>> | null | undefined = await post<RowResponse<Array<BaseDressDefinition.DressTodoViewOutput>>>(
        BaseDressUrlConstant.BASE_DRESS_V1_GET_DRESS_TODO_VIEW,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseDressV1GetremindelementsPost(input: BaseDressDefinition.DressTodoViewsInput, userId: number):Promise<ApiResponse<BaseDressDefinition.DressTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseDressDefinition.DressTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseDressDefinition.DressTodoViewListOutput>>(
        BaseDressUrlConstant.BASE_DRESS_V1_GETREMINDELEMENTS,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseDressV1SetremindPost(input: BaseDressDefinition.DressRemindInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDressUrlConstant.BASE_DRESS_V1_SET_REMIND,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseDressV1TodoUViewUListPost(input: BaseDressDefinition.DressTodoViewsInput, userId: number):Promise<ApiResponse<BaseDressDefinition.DressTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseDressDefinition.DressTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseDressDefinition.DressTodoViewListOutput>>(
        BaseDressUrlConstant.BASE_DRESS_V1_TODO_VIEW_LIST_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }
  }
}
