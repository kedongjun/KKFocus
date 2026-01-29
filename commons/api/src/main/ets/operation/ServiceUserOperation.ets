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
import { ServiceUserDefinition } from './../definition/ServiceUserDefinition';
import { ServiceUserUrlConstant } from './../constant/ServiceUserUrlConstant';

export namespace ServiceUserOperation {
  export class UserActivityPayController {
    static async serviceUserActivityCreatepayorderPost(channelType: string, deviceType: string, input: ServiceUserDefinition.AddOrderAndPayInput, ip: string, userId: number):Promise<ApiResponse<ServiceUserDefinition.PaymentOrderOutput> | null | undefined> {
      let res: ApiResponse<ServiceUserDefinition.PaymentOrderOutput> | null | undefined = await post<ApiResponse<ServiceUserDefinition.PaymentOrderOutput>>(
        ServiceUserUrlConstant.SERVICE_USER_ACTIVITY_CREATE_PAY_ORDER,
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

    static async serviceUserActivityCreatepayorder4iosPost(channelType: string, deviceType: string, input: ServiceUserDefinition.AddIapOrderInputV2, ip: string, userId: number):Promise<ServiceUserDefinition.IdResponse | null | undefined> {
      let res: ServiceUserDefinition.IdResponse | null | undefined = await post<ServiceUserDefinition.IdResponse>(
        ServiceUserUrlConstant.SERVICE_USER_ACTIVITY_CREATE_PAY_ORDER4IOS,
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


  export class EveryDayMottoTemplateController {
    static async serviceUserEverydayUMottoUTemplatePost(input: ServiceUserDefinition.LatestEveryDayMottoTemplateInput, ip: string, userId: number):Promise<ApiResponse<ServiceUserDefinition.EveryDayMottoTemplateCouldBeCollectedOutput> | null | undefined> {
      let res: ApiResponse<ServiceUserDefinition.EveryDayMottoTemplateCouldBeCollectedOutput> | null | undefined = await post<ApiResponse<ServiceUserDefinition.EveryDayMottoTemplateCouldBeCollectedOutput>>(
        ServiceUserUrlConstant.SERVICE_USER_EVERYDAY_MOTTO_TEMPLATE_URL,
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

    static async serviceUserEverydayUMottoUTemplatelistPost(input: ServiceUserDefinition.LatestEveryDayMottoTemplateInput, ip: string, userId: number):Promise<RowResponse<Array<ServiceUserDefinition.EveryDayMottoTemplateCouldBeCollectedOutput>> | null | undefined> {
      let res: RowResponse<Array<ServiceUserDefinition.EveryDayMottoTemplateCouldBeCollectedOutput>> | null | undefined = await post<RowResponse<Array<ServiceUserDefinition.EveryDayMottoTemplateCouldBeCollectedOutput>>>(
        ServiceUserUrlConstant.SERVICE_USER_EVERYDAY_MOTTO_TEMPLATE_LIST_URL,
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

    static async serviceUserEverydayUMottoUTemplatelisthomepagePost(userId?: number):Promise<RowResponse<Array<ServiceUserDefinition.EveryDayMottoTemplateCouldBeCollectedOutput>> | null | undefined> {
      let res: RowResponse<Array<ServiceUserDefinition.EveryDayMottoTemplateCouldBeCollectedOutput>> | null | undefined = await post<RowResponse<Array<ServiceUserDefinition.EveryDayMottoTemplateCouldBeCollectedOutput>>>(
        ServiceUserUrlConstant.SERVICE_USER_EVERYDAY_MOTTO_TEMPLATE_LIST_HOME_PAGE_URL,
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

    static async serviceUserEverydayUMottoUTemplatepagePost(input: ServiceUserDefinition.LatestEveryDayMottoTemplatePageInput):Promise<PaginableResponse<Array<ServiceUserDefinition.EveryDayMottoTemplateCouldBeCollectedOutput>> | null | undefined> {
      let res: PaginableResponse<Array<ServiceUserDefinition.EveryDayMottoTemplateCouldBeCollectedOutput>> | null | undefined = await post<PaginableResponse<Array<ServiceUserDefinition.EveryDayMottoTemplateCouldBeCollectedOutput>>>(
        ServiceUserUrlConstant.SERVICE_USER_EVERYDAY_MOTTO_TEMPLATE_PAGE_URL,
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
  }


  export class UserAppManageController {
    static async serviceUserAppletMListPost(userId: number):Promise<ApiResponse<ServiceUserDefinition.UserAppletOutput> | null | undefined> {
      let res: ApiResponse<ServiceUserDefinition.UserAppletOutput> | null | undefined = await post<ApiResponse<ServiceUserDefinition.UserAppletOutput>>(
        ServiceUserUrlConstant.SERVICE_USER_APPLET_LIST_URL,
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

    static async serviceUserAppletMListM2Post(userId: number):Promise<ApiResponse<ServiceUserDefinition.UserAppletOutput> | null | undefined> {
      let res: ApiResponse<ServiceUserDefinition.UserAppletOutput> | null | undefined = await post<ApiResponse<ServiceUserDefinition.UserAppletOutput>>(
        ServiceUserUrlConstant.SERVICE_USER_APPLET_LIST_2_URL,
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

    static async serviceUserAppletMListMNewPost(dto: ServiceUserDefinition.AppletVersionInput, userId: number):Promise<ApiResponse<ServiceUserDefinition.UserAppletOutput> | null | undefined> {
      let res: ApiResponse<ServiceUserDefinition.UserAppletOutput> | null | undefined = await post<ApiResponse<ServiceUserDefinition.UserAppletOutput>>(
        ServiceUserUrlConstant.SERVICE_USER_APPLET_LIST_NEW_URL,
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

    static async serviceUserClickMAppletPost(dto: ServiceUserDefinition.UserAppManageClickInput, ip: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        ServiceUserUrlConstant.SERVICE_USER_CLICK_APPLET_URL,
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

    static async serviceUserIndexMAppletMListPost(userId: number):Promise<ApiResponse<ServiceUserDefinition.UserAppletOutput> | null | undefined> {
      let res: ApiResponse<ServiceUserDefinition.UserAppletOutput> | null | undefined = await post<ApiResponse<ServiceUserDefinition.UserAppletOutput>>(
        ServiceUserUrlConstant.SERVICE_USER_INDEX_APPLET_LIST_URL,
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

    static async serviceUserIndexMAppletMListM2Post(userId: number):Promise<ApiResponse<ServiceUserDefinition.UserAppletOutput> | null | undefined> {
      let res: ApiResponse<ServiceUserDefinition.UserAppletOutput> | null | undefined = await post<ApiResponse<ServiceUserDefinition.UserAppletOutput>>(
        ServiceUserUrlConstant.SERVICE_USER_INDEX_APPLET_LIST_2_URL,
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

    static async serviceUserIndexMAppletMListMNewPost(dto: ServiceUserDefinition.AppletVersionInput, userId: number):Promise<ApiResponse<ServiceUserDefinition.UserAppletOutput> | null | undefined> {
      let res: ApiResponse<ServiceUserDefinition.UserAppletOutput> | null | undefined = await post<ApiResponse<ServiceUserDefinition.UserAppletOutput>>(
        ServiceUserUrlConstant.SERVICE_USER_INDEX_APPLET_LIST_NEW_URL,
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

    static async serviceUserSaveMAppletMListPost(dto: ServiceUserDefinition.UserAppletInput, ip: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        ServiceUserUrlConstant.SERVICE_USER_SAVE_APPLET_LIST_URL,
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
  }


  export class CheckAliveController {
    static async checkaliveGet():Promise<number | null | undefined> {
      let res: number | null | undefined = await get<number>(
        ServiceUserUrlConstant.CHECKALIVE,
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


  export class UserInfoController {
    static async serviceUserUpdateuserinfoPost(ip: string, user: ServiceUserDefinition.UserInfoInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        ServiceUserUrlConstant.SERVICE_USER_UPDATE_USER_INFO,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        user
      );

      return res;
    }
  }


  export class UserPayController {
    static async serviceUserCreateitemorderPost(channelType: string, deviceType: string, input: ServiceUserDefinition.AddOrderAndPayInput, ip: string, userId: number):Promise<ApiResponse<ServiceUserDefinition.PaymentOrderOutput> | null | undefined> {
      let res: ApiResponse<ServiceUserDefinition.PaymentOrderOutput> | null | undefined = await post<ApiResponse<ServiceUserDefinition.PaymentOrderOutput>>(
        ServiceUserUrlConstant.SERVICE_USER_CREATE_ITEM_ORDER,
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

    static async serviceUserCreatepayorderPost(input: ServiceUserDefinition.AddOrderAndPayInput):Promise<ApiResponse<ServiceUserDefinition.PaymentOrderOutput> | null | undefined> {
      let res: ApiResponse<ServiceUserDefinition.PaymentOrderOutput> | null | undefined = await post<ApiResponse<ServiceUserDefinition.PaymentOrderOutput>>(
        ServiceUserUrlConstant.SERVICE_USER_CREATE_PAY_ORDER,
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

    static async serviceUserCreatepayorder4iosPost(channelType: string, deviceType: string, input: ServiceUserDefinition.AddIapOrderInputV2, ip: string, userId: number):Promise<ServiceUserDefinition.IdResponse | null | undefined> {
      let res: ServiceUserDefinition.IdResponse | null | undefined = await post<ServiceUserDefinition.IdResponse>(
        ServiceUserUrlConstant.SERVICE_USER_CREATE_PAY_ORDER4IOS,
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


  export class UserVipController {
    static async serviceUserVipResetvipconfigPost():Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        ServiceUserUrlConstant.SERVICE_USER_VIP_RESET_VIP_CONFIG,
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


  export class HeartbeatController {
    static async serviceUserCheckdeviceheartbeatPost(channelType?: string, deviceModel?: string, deviceTag?: string, userId?: number, version?: string):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        ServiceUserUrlConstant.SERVICE_USER_CHECK_DEVICE_HEARTBEAT,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "device_model": deviceModel,
            "device_tag": deviceTag,
            "user_id": userId,
            "version": version
        },
      );

      return res;
    }

    static async serviceUserGetbusinesssyncversionPost():Promise<ApiResponse<Record<string, number>> | null | undefined> {
      let res: ApiResponse<Record<string, number>> | null | undefined = await post<ApiResponse<Record<string, number>>>(
        ServiceUserUrlConstant.SERVICE_USER_GET_BUSINESS_SYNC_VERSION,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async serviceUserSavedevicemsgpushinfoPost(channelType: string, deviceTag: string, msgPushInfos: Array<ServiceUserDefinition.MsgPushInfo>, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        ServiceUserUrlConstant.SERVICE_USER_SAVE_DEVICE_MSG_PUSH_INFO,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "device_tag": deviceTag,
            "user_id": userId
        },
        msgPushInfos
      );

      return res;
    }
  }


  export class UserRedPackageReceiveController {
    static async serviceUserV1RedpackageReceivePost(channelType: string, input: ServiceUserDefinition.IdRequest, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        ServiceUserUrlConstant.SERVICE_USER_V1_RED_PACKAGE_RECEIVE,
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
  }
}
