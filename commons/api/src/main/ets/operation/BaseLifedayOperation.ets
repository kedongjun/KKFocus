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
import { BaseLifedayDefinition } from './../definition/BaseLifedayDefinition';
import { BaseLifedayUrlConstant } from './../constant/BaseLifedayUrlConstant';

export namespace BaseLifedayOperation {
  export class LifedayController {
    static async baseLifedayV1DaterangecountPost(input: BaseLifedayDefinition.DateRangeRequest, userId: number):Promise<ApiResponse<BaseLifedayDefinition.CountResponse> | null | undefined> {
      let res: ApiResponse<BaseLifedayDefinition.CountResponse> | null | undefined = await post<ApiResponse<BaseLifedayDefinition.CountResponse>>(
        BaseLifedayUrlConstant.BASE_LIFEDAY_V1_DATE_RANGE_COUNT,
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

    static async baseLifedayV1GetlifedayPost(channelType: string, userId?: number):Promise<ApiResponse<BaseLifedayDefinition.LifeDayOutput> | null | undefined> {
      let res: ApiResponse<BaseLifedayDefinition.LifeDayOutput> | null | undefined = await post<ApiResponse<BaseLifedayDefinition.LifeDayOutput>>(
        BaseLifedayUrlConstant.BASE_LIFEDAY_V1_GET_LIFE_DAY,
        {
        },
        {
        },
        {
            "channel_type": channelType,
        },
      );

      return res;
    }

    static async baseLifedayV1GetlifedayguidetemplatePost(channelType: string, userId: number):Promise<ApiResponse<BaseLifedayDefinition.LifeDayOutput> | null | undefined> {
      let res: ApiResponse<BaseLifedayDefinition.LifeDayOutput> | null | undefined = await post<ApiResponse<BaseLifedayDefinition.LifeDayOutput>>(
        BaseLifedayUrlConstant.BASE_LIFEDAY_V1_GET_LIFEDAY_GUIDE_TEMPLATE,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "user_id": userId
        },
      );

      return res;
    }

    static async baseLifedayV1RemovelifedayPost(ip: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BaseLifedayUrlConstant.BASE_LIFEDAY_V1_REMOVE_LIFE_DAY,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
      );

      return res;
    }

    static async baseLifedayV1SavelifedayPost(channelType: string, dto: BaseLifedayDefinition.BaseLifedayInput, ip?: string, userId?: number):Promise<ApiResponse<BaseLifedayDefinition.LifeDayOutput> | null | undefined> {
      let res: ApiResponse<BaseLifedayDefinition.LifeDayOutput> | null | undefined = await post<ApiResponse<BaseLifedayDefinition.LifeDayOutput>>(
        BaseLifedayUrlConstant.BASE_LIFEDAY_V1_SAVE_LIFE_DAY,
        {
        },
        {
        },
        {
            "channel_type": channelType,
        },
        dto
      );

      return res;
    }

    static async baseLifedayV1ViewReciprocalPost(input: BaseLifedayDefinition.ReciprocalViewRequest, userId: number):Promise<ApiResponse<BaseLifedayDefinition.LifeDayReciprocalViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseLifedayDefinition.LifeDayReciprocalViewListOutput> | null | undefined = await post<ApiResponse<BaseLifedayDefinition.LifeDayReciprocalViewListOutput>>(
        BaseLifedayUrlConstant.BASE_LIFEDAY_V1_VIEW_RECIPROCAL,
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

    static async baseLifedayV2GetlifedayPost(channelType: string, userId: number):Promise<ApiResponse<BaseLifedayDefinition.LifeDayOutput> | null | undefined> {
      let res: ApiResponse<BaseLifedayDefinition.LifeDayOutput> | null | undefined = await post<ApiResponse<BaseLifedayDefinition.LifeDayOutput>>(
        BaseLifedayUrlConstant.BASE_LIFEDAY_V2_GET_LIFE_DAY,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "user_id": userId
        },
      );

      return res;
    }

    static async baseLifedayV2ViewReciprocalPost(input: BaseLifedayDefinition.ReciprocalViewRequest, userId: number):Promise<ApiResponse<BaseLifedayDefinition.LifeDayReciprocalViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseLifedayDefinition.LifeDayReciprocalViewListOutput> | null | undefined = await post<ApiResponse<BaseLifedayDefinition.LifeDayReciprocalViewListOutput>>(
        BaseLifedayUrlConstant.BASE_LIFEDAY_V2_VIEW_RECIPROCAL,
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


  export class LifedaySyncDataController {
    static async baseLifedaySyncUDataPost(dto: BaseLifedayDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseLifedayDefinition.LifeDayOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseLifedayDefinition.LifeDayOutput>> | null | undefined = await post<RowResponse<Array<BaseLifedayDefinition.LifeDayOutput>>>(
        BaseLifedayUrlConstant.BASE_LIFEDAY_SYNC_DATA_URL,
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
  }


  export class CheckAliveController {
    static async checkaliveGet():Promise<number | null | undefined> {
      let res: number | null | undefined = await get<number>(
        BaseLifedayUrlConstant.CHECKALIVE,
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
}
