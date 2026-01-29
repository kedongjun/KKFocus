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
import { BasePayDefinition } from './../definition/BasePayDefinition';
import { BasePayUrlConstant } from './../constant/BasePayUrlConstant';

export namespace BasePayOperation {
  export class WxTransferController {
  }


  export class PaymentOrderController {
    static async basePayV1HistorydatacountPost(userId: number):Promise<ApiResponse<Map<string, number>> | null | undefined> {
      let res: ApiResponse<Map<string, number>> | null | undefined = await post<ApiResponse<Map<string, number>>>(
        BasePayUrlConstant.BASE_PAY_V1_HISTORY_DATA_COUNT,
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

    static async basePayV1OrderCreatePost(channelType: string, deviceType: string, input: BasePayDefinition.AddOrderInput, ip: string, userId: number):Promise<BasePayDefinition.IdResponse | null | undefined> {
      let res: BasePayDefinition.IdResponse | null | undefined = await post<BasePayDefinition.IdResponse>(
        BasePayUrlConstant.BASE_PAY_V1_ORDER_CREATE,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "device_type": deviceType,
            "ip": ip,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async basePayV1OrderListPost(input: BasePayDefinition.UserProductPageInput, userId: number):Promise<RowResponse<Array<BasePayDefinition.UserProductOrderLogOutput>> | null | undefined> {
      let res: RowResponse<Array<BasePayDefinition.UserProductOrderLogOutput>> | null | undefined = await post<RowResponse<Array<BasePayDefinition.UserProductOrderLogOutput>>>(
        BasePayUrlConstant.BASE_PAY_V1_ORDER_LIST,
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

    static async basePayV1OrderPayCreatePost(channelType: string, deviceType: string, input: BasePayDefinition.AddOrderAndPayInput, ip: string, userId: number):Promise<ApiResponse<BasePayDefinition.PaymentOrderOutput> | null | undefined> {
      let res: ApiResponse<BasePayDefinition.PaymentOrderOutput> | null | undefined = await post<ApiResponse<BasePayDefinition.PaymentOrderOutput>>(
        BasePayUrlConstant.BASE_PAY_V1_ORDER_PAY_CREATE,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "device_type": deviceType,
            "ip": ip,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async basePayV1OrderQueryPost(input: BasePayDefinition.IdRequest, ip: string, userId: number):Promise<ApiResponse<BasePayDefinition.OrderStatusOutput> | null | undefined> {
      let res: ApiResponse<BasePayDefinition.OrderStatusOutput> | null | undefined = await post<ApiResponse<BasePayDefinition.OrderStatusOutput>>(
        BasePayUrlConstant.BASE_PAY_V1_ORDER_QUERY,
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

    static async basePayV1OrderUpdateorderstatePost(input: BasePayDefinition.IdRequest, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePayUrlConstant.BASE_PAY_V1_ORDER_UPDATE_ORDER_STATE,
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

    static async basePayV1PayPost(channelType: string, input: BasePayDefinition.AddPayInput, ip: string, userId: number):Promise<ApiResponse<BasePayDefinition.PaymentOrderOutput> | null | undefined> {
      let res: ApiResponse<BasePayDefinition.PaymentOrderOutput> | null | undefined = await post<ApiResponse<BasePayDefinition.PaymentOrderOutput>>(
        BasePayUrlConstant.BASE_PAY_V1_PAY,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async basePayV1RewardlistPost(channelType: string):Promise<RowResponse<Array<BasePayDefinition.RewardProductInfo>> | null | undefined> {
      let res: RowResponse<Array<BasePayDefinition.RewardProductInfo>> | null | undefined = await post<RowResponse<Array<BasePayDefinition.RewardProductInfo>>>(
        BasePayUrlConstant.BASE_PAY_V1_REWARD_LIST,
        {
        },
        {
        },
        {
            "channel_type": channelType
        },
      );

      return res;
    }
  }


  export class CheckAliveController {
    static async checkaliveGet():Promise<number | null | undefined> {
      let res: number | null | undefined = await get<number>(
        BasePayUrlConstant.CHECKALIVE,
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


  export class IapPaymentController {
    static async basePayV1IapApplepayPost(channelType: string, dto: BasePayDefinition.ApplePayInput, ip: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BasePayUrlConstant.BASE_PAY_V1_IAP_APPLE_PAY,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        dto
      );

      return res;
    }

    static async basePayV1IapOrderCreatePost(channelType: string, deviceType: string, input: BasePayDefinition.AddIapOrderInput, ip: string, userId: number):Promise<BasePayDefinition.IdResponse | null | undefined> {
      let res: BasePayDefinition.IdResponse | null | undefined = await post<BasePayDefinition.IdResponse>(
        BasePayUrlConstant.BASE_PAY_V1_IAP_ORDER_CREATE,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "device_type": deviceType,
            "ip": ip,
            "user_id": userId
        },
        input
      );

      return res;
    }
  }
}
