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
import { BaseCallbackDefinition } from './../definition/BaseCallbackDefinition';
import { BaseCallbackUrlConstant } from './../constant/BaseCallbackUrlConstant';

export namespace BaseCallbackOperation {
  export class IosConvertController {
    static async baseCallbackV1IosAttributionPost(channelType: string, input: BaseCallbackDefinition.IosAttributionInput, ip: string, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseCallbackUrlConstant.BASE_CALLBACK_V1_IOS_ATTRIBUTION,
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

    static async baseCallbackV1IosErrorAttributionPost(channelType: string, input: BaseCallbackDefinition.ErrorIosAttributionInput, ip: string, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseCallbackUrlConstant.BASE_CALLBACK_V1_IOS_ERROR_ATTRIBUTION,
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

    static async baseCallbackV1IosReportPost(channelType: string, input: BaseCallbackDefinition.LocalDateInput, ip: string):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseCallbackUrlConstant.BASE_CALLBACK_V1_IOS_REPORT,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip
        },
        input
      );

      return res;
    }

    static async baseCallbackV1IosSyncPost(channelType: string, ip: string):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseCallbackUrlConstant.BASE_CALLBACK_V1_IOS_SYNC,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip
        },
      );

      return res;
    }
  }


  export class IosWallController {
    static async baseCallbackV1WallClickGet(ip: string, appid?: string, clicktime?: number, idfa?: string):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await get<ApiResponse<object>>(
        BaseCallbackUrlConstant.BASE_CALLBACK_V1_WALL_CLICK,
        {
        },
        {
            "appid": appid,
            "clicktime": clicktime,
            "idfa": idfa
        },
        {
            "ip": ip,
        },
      );

      return res;
    }

    static async baseCallbackV1WallIsactiveGet(appid?: string, idfa?: string):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await get<ApiResponse<object>>(
        BaseCallbackUrlConstant.BASE_CALLBACK_V1_WALL_IS_ACTIVE,
        {
        },
        {
            "appid": appid,
            "idfa": idfa
        },
        {
        },
      );

      return res;
    }

    static async baseCallbackV2WallIsactiveGet(appid?: string, idfa?: string):Promise<object | null | undefined> {
      let res: object | null | undefined = await get<object>(
        BaseCallbackUrlConstant.BASE_CALLBACK_V2_WALL_IS_ACTIVE,
        {
        },
        {
            "appid": appid,
            "idfa": idfa
        },
        {
        },
      );

      return res;
    }
  }


  export class CheckAliveController {
    static async checkaliveGet():Promise<number | null | undefined> {
      let res: number | null | undefined = await get<number>(
        BaseCallbackUrlConstant.CHECKALIVE,
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


  export class AdvertisingCallbackController {
    static async baseCallbackV1AdGet(advertisingType?: string, aid?: string, aidName?: string, androidId?: string, callbackUrl?: string, campaignId?: string, channel?: string, channelType?: string, cid?: string, clickTime?: string, convertId?: string, csite?: string, ctype?: string, idfa?: string, imei?: string, ip?: string, mac?: string, mac1?: string, oaid?: string, openudid?: string, os?: string, ts?: number, ua?: string, uuid?: string):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await get<ApiResponse<object>>(
        BaseCallbackUrlConstant.BASE_CALLBACK_V1_AD,
        {
        },
        {
            "advertisingType": advertisingType,
            "aid": aid,
            "aidName": aidName,
            "androidId": androidId,
            "callbackUrl": callbackUrl,
            "campaignId": campaignId,
            "channel": channel,
            "channelType": channelType,
            "cid": cid,
            "clickTime": clickTime,
            "convertId": convertId,
            "csite": csite,
            "ctype": ctype,
            "idfa": idfa,
            "imei": imei,
            "ip": ip,
            "mac": mac,
            "mac1": mac1,
            "oaid": oaid,
            "openudid": openudid,
            "os": os,
            "ts": ts,
            "ua": ua,
            "uuid": uuid
        },
        {
        },
      );

      return res;
    }

    static async baseCallbackV1GdtAuthcodeGet(authorizationCode?: string, state?: string):Promise<object | null | undefined> {
      let res: object | null | undefined = await get<object>(
        BaseCallbackUrlConstant.BASE_CALLBACK_V1_GDT_AUTHCODE,
        {
        },
        {
            "authorization_code": authorizationCode,
            "state": state
        },
        {
        },
      );

      return res;
    }

    static async baseCallbackV1VivoPost(input: Array<BaseCallbackDefinition.VivoInput>):Promise<object | null | undefined> {
      let res: object | null | undefined = await post<object>(
        BaseCallbackUrlConstant.BASE_CALLBACK_V1_VIVO,
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

    static async baseCallbackV1VivoUMktPost(input: Array<BaseCallbackDefinition.VivoInput>):Promise<object | null | undefined> {
      let res: object | null | undefined = await post<object>(
        BaseCallbackUrlConstant.BASE_CALLBACK_V1_VIVO_MKT_URL,
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


  export class OssController {
    static async baseCallbackV1GeturlPost(input: BaseCallbackDefinition.OssInput, ip: string):Promise<ApiResponse<BaseCallbackDefinition.OssOutput> | null | undefined> {
      let res: ApiResponse<BaseCallbackDefinition.OssOutput> | null | undefined = await post<ApiResponse<BaseCallbackDefinition.OssOutput>>(
        BaseCallbackUrlConstant.BASE_CALLBACK_V1_GET_URL,
        {
        },
        {
        },
        {
            "ip": ip
        },
        input
      );

      return res;
    }
  }
}
