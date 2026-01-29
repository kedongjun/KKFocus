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
import { ServiceWeixinDefinition } from './../definition/ServiceWeixinDefinition';
import { ServiceWeixinUrlConstant } from './../constant/ServiceWeixinUrlConstant';

export namespace ServiceWeixinOperation {
  export class WeiXinServiceApiController {
    static async serviceWeixinAddplanbytextPost(input: ServiceWeixinDefinition.PlanTextInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        ServiceWeixinUrlConstant.SERVICE_WEIXIN_ADD_PLAN_BY_TEXT,
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

    static async serviceWeixinApiGet():Promise<void | null | undefined> {
      let res: void | null | undefined = await get<void>(
        ServiceWeixinUrlConstant.SERVICE_WEIXIN_API,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async serviceWeixinApiPost():Promise<void | null | undefined> {
      let res: void | null | undefined = await post<void>(
        ServiceWeixinUrlConstant.SERVICE_WEIXIN_API,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async serviceWeixinApiHead():Promise<void | null | undefined> {
      let res: void | null | undefined = await head<void>(
        ServiceWeixinUrlConstant.SERVICE_WEIXIN_API,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async serviceWeixinApiRemove():Promise<void | null | undefined> {
      let res: void | null | undefined = await remove<void>(
        ServiceWeixinUrlConstant.SERVICE_WEIXIN_API,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async serviceWeixinApiPut():Promise<void | null | undefined> {
      let res: void | null | undefined = await put<void>(
        ServiceWeixinUrlConstant.SERVICE_WEIXIN_API,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async serviceWeixinApiOptions():Promise<void | null | undefined> {
      let res: void | null | undefined = await options<void>(
        ServiceWeixinUrlConstant.SERVICE_WEIXIN_API,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async serviceWeixinApiPatch():Promise<void | null | undefined> {
      let res: void | null | undefined = await patch<void>(
        ServiceWeixinUrlConstant.SERVICE_WEIXIN_API,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async serviceWeixinDeleteplanPost(input: ServiceWeixinDefinition.WxTodoDeleteInput):Promise<ApiResponse<ServiceWeixinDefinition.WxTodoDeleteOutput> | null | undefined> {
      let res: ApiResponse<ServiceWeixinDefinition.WxTodoDeleteOutput> | null | undefined = await post<ApiResponse<ServiceWeixinDefinition.WxTodoDeleteOutput>>(
        ServiceWeixinUrlConstant.SERVICE_WEIXIN_DELETE_PLAN,
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

    static async serviceWeixinGettokenGet(id?: string, pwd?: string):Promise<ApiResponse<ServiceWeixinDefinition.WxToken> | null | undefined> {
      let res: ApiResponse<ServiceWeixinDefinition.WxToken> | null | undefined = await get<ApiResponse<ServiceWeixinDefinition.WxToken>>(
        ServiceWeixinUrlConstant.SERVICE_WEIXIN_GET_TOKEN,
        {
        },
        {
            "id": id,
            "pwd": pwd
        },
        {
        },
      );

      return res;
    }

    static async serviceWeixinParesjsGet(content?: string):Promise<ApiResponse<ServiceWeixinDefinition.WxToken> | null | undefined> {
      let res: ApiResponse<ServiceWeixinDefinition.WxToken> | null | undefined = await get<ApiResponse<ServiceWeixinDefinition.WxToken>>(
        ServiceWeixinUrlConstant.SERVICE_WEIXIN_PARES_JS,
        {
        },
        {
            "content": content
        },
        {
        },
      );

      return res;
    }

    static async serviceWeixinTestPost(input: ServiceWeixinDefinition.WxTodoInput):Promise<ApiResponse<ServiceWeixinDefinition.WxTodoOutput> | null | undefined> {
      let res: ApiResponse<ServiceWeixinDefinition.WxTodoOutput> | null | undefined = await post<ApiResponse<ServiceWeixinDefinition.WxTodoOutput>>(
        ServiceWeixinUrlConstant.SERVICE_WEIXIN_TEST,
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


  export class CheckAliveController {
    static async checkaliveGet():Promise<number | null | undefined> {
      let res: number | null | undefined = await get<number>(
        ServiceWeixinUrlConstant.CHECKALIVE,
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
