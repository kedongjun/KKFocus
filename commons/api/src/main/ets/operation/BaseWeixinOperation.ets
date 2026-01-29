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
import { BaseWeixinDefinition } from './../definition/BaseWeixinDefinition';
import { BaseWeixinUrlConstant } from './../constant/BaseWeixinUrlConstant';

export namespace BaseWeixinOperation {
  export class CheckAliveController {
    static async checkaliveGet():Promise<number | null | undefined> {
      let res: number | null | undefined = await get<number>(
        BaseWeixinUrlConstant.CHECKALIVE,
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


  export class WeiXinBaseController {
    static async baseWeixinDeleteMWxMTodoPost(input: BaseWeixinDefinition.WxDeleteInput):Promise<ApiResponse<BaseWeixinDefinition.WxTodoDeleteOutput> | null | undefined> {
      let res: ApiResponse<BaseWeixinDefinition.WxTodoDeleteOutput> | null | undefined = await post<ApiResponse<BaseWeixinDefinition.WxTodoDeleteOutput>>(
        BaseWeixinUrlConstant.BASE_WEIXIN_DELETE_WX_TODO_URL,
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

    static async baseWeixinGetMDefaultMMessagePost(input: BaseWeixinDefinition.WxMessageInput):Promise<ApiResponse<BaseWeixinDefinition.WxMessageOutput> | null | undefined> {
      let res: ApiResponse<BaseWeixinDefinition.WxMessageOutput> | null | undefined = await post<ApiResponse<BaseWeixinDefinition.WxMessageOutput>>(
        BaseWeixinUrlConstant.BASE_WEIXIN_GET_DEFAULT_MESSAGE_URL,
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

    static async baseWeixinGetMWxMAccessMTokenPost(input: BaseWeixinDefinition.WxAccessTokenInput):Promise<ApiResponse<BaseWeixinDefinition.WxAccessTokenOutput> | null | undefined> {
      let res: ApiResponse<BaseWeixinDefinition.WxAccessTokenOutput> | null | undefined = await post<ApiResponse<BaseWeixinDefinition.WxAccessTokenOutput>>(
        BaseWeixinUrlConstant.BASE_WEIXIN_GET_WX_ACCESS_TOKEN_URL,
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

    static async baseWeixinGetMWxMAccountMInfoPost(input: BaseWeixinDefinition.WxAccountInfoInput):Promise<ApiResponse<BaseWeixinDefinition.WxAccountInfoOutput> | null | undefined> {
      let res: ApiResponse<BaseWeixinDefinition.WxAccountInfoOutput> | null | undefined = await post<ApiResponse<BaseWeixinDefinition.WxAccountInfoOutput>>(
        BaseWeixinUrlConstant.BASE_WEIXIN_GET_WX_ACCOUNT_INFO_URL,
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

    static async baseWeixinGetMWxMMessagePost(input: BaseWeixinDefinition.WxMessageInput):Promise<ApiResponse<BaseWeixinDefinition.WxMessageOutput> | null | undefined> {
      let res: ApiResponse<BaseWeixinDefinition.WxMessageOutput> | null | undefined = await post<ApiResponse<BaseWeixinDefinition.WxMessageOutput>>(
        BaseWeixinUrlConstant.BASE_WEIXIN_GET_WX_MESSAGE_URL,
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

    static async baseWeixinGetMWxMMessageMListPost(input: BaseWeixinDefinition.WxMessageInput):Promise<RowResponse<Array<BaseWeixinDefinition.WxMessageOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseWeixinDefinition.WxMessageOutput>> | null | undefined = await post<RowResponse<Array<BaseWeixinDefinition.WxMessageOutput>>>(
        BaseWeixinUrlConstant.BASE_WEIXIN_GET_WX_MESSAGE_LIST_URL,
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

    static async baseWeixinGetMWxMParameterPost(input: BaseWeixinDefinition.WxParameterInput):Promise<RowResponse<Array<BaseWeixinDefinition.WxParameterOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseWeixinDefinition.WxParameterOutput>> | null | undefined = await post<RowResponse<Array<BaseWeixinDefinition.WxParameterOutput>>>(
        BaseWeixinUrlConstant.BASE_WEIXIN_GET_WX_PARAMETER_URL,
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

    static async baseWeixinGetMWxMParameterMByMTypePost(input: BaseWeixinDefinition.WxParameterInput):Promise<RowResponse<Array<BaseWeixinDefinition.WxParameterOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseWeixinDefinition.WxParameterOutput>> | null | undefined = await post<RowResponse<Array<BaseWeixinDefinition.WxParameterOutput>>>(
        BaseWeixinUrlConstant.BASE_WEIXIN_GET_WX_PARAMETER_BY_TYPE_URL,
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

    static async baseWeixinGetMWxMTodoPost(input: BaseWeixinDefinition.WxTodoInput):Promise<RowResponse<Array<BaseWeixinDefinition.WxTodoOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseWeixinDefinition.WxTodoOutput>> | null | undefined = await post<RowResponse<Array<BaseWeixinDefinition.WxTodoOutput>>>(
        BaseWeixinUrlConstant.BASE_WEIXIN_GET_WX_TODO_URL,
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

    static async baseWeixinGetMWxMTodoMAllPost(input: BaseWeixinDefinition.WxTodoInput):Promise<RowResponse<Array<BaseWeixinDefinition.WxTodoOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseWeixinDefinition.WxTodoOutput>> | null | undefined = await post<RowResponse<Array<BaseWeixinDefinition.WxTodoOutput>>>(
        BaseWeixinUrlConstant.BASE_WEIXIN_GET_WX_TODO_ALL_URL,
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

    static async baseWeixinGetMWxMTodoMInfoPost(input: BaseWeixinDefinition.WxTodoIdInput):Promise<ApiResponse<BaseWeixinDefinition.WxTodoOutput> | null | undefined> {
      let res: ApiResponse<BaseWeixinDefinition.WxTodoOutput> | null | undefined = await post<ApiResponse<BaseWeixinDefinition.WxTodoOutput>>(
        BaseWeixinUrlConstant.BASE_WEIXIN_GET_WX_TODO_INFO_URL,
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

    static async baseWeixinGetMWxMTodoMTodayPost(input: BaseWeixinDefinition.WxTodoInput):Promise<RowResponse<Array<BaseWeixinDefinition.WxTodoOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseWeixinDefinition.WxTodoOutput>> | null | undefined = await post<RowResponse<Array<BaseWeixinDefinition.WxTodoOutput>>>(
        BaseWeixinUrlConstant.BASE_WEIXIN_GET_WX_TODO_TODAY_URL,
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

    static async baseWeixinGetMWxMUserMInfoPost(input: BaseWeixinDefinition.WxUserInfoInput):Promise<ApiResponse<BaseWeixinDefinition.WxUserInfoOutput> | null | undefined> {
      let res: ApiResponse<BaseWeixinDefinition.WxUserInfoOutput> | null | undefined = await post<ApiResponse<BaseWeixinDefinition.WxUserInfoOutput>>(
        BaseWeixinUrlConstant.BASE_WEIXIN_GET_WX_USER_INFO_URL,
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

    static async baseWeixinGetMWxMUserMInfoMByMUnionidPost(input: BaseWeixinDefinition.WxUserInfoInput):Promise<ApiResponse<BaseWeixinDefinition.WxUserInfoOutput> | null | undefined> {
      let res: ApiResponse<BaseWeixinDefinition.WxUserInfoOutput> | null | undefined = await post<ApiResponse<BaseWeixinDefinition.WxUserInfoOutput>>(
        BaseWeixinUrlConstant.BASE_WEIXIN_GET_WX_USER_INFO_BY_UNIONID_URL,
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

    static async baseWeixinGetMWxmessagebyidsMListPost(input: BaseWeixinDefinition.WxMessageInput):Promise<RowResponse<Array<BaseWeixinDefinition.WxMessageOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseWeixinDefinition.WxMessageOutput>> | null | undefined = await post<RowResponse<Array<BaseWeixinDefinition.WxMessageOutput>>>(
        BaseWeixinUrlConstant.BASE_WEIXIN_GET_WXMESSAGEBYIDS_LIST_URL,
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

    static async baseWeixinGetMWxmessagekeyMListPost(input: BaseWeixinDefinition.WxMessageKeyInput):Promise<RowResponse<Array<BaseWeixinDefinition.WxMessageKeyOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseWeixinDefinition.WxMessageKeyOutput>> | null | undefined = await post<RowResponse<Array<BaseWeixinDefinition.WxMessageKeyOutput>>>(
        BaseWeixinUrlConstant.BASE_WEIXIN_GET_WXMESSAGEKEY_LIST_URL,
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

    static async baseWeixinGetMWxmessagelogMByMConditionsPost(input: BaseWeixinDefinition.WxMessageLogInput):Promise<ApiResponse<BaseWeixinDefinition.WxMessageLogOutput> | null | undefined> {
      let res: ApiResponse<BaseWeixinDefinition.WxMessageLogOutput> | null | undefined = await post<ApiResponse<BaseWeixinDefinition.WxMessageLogOutput>>(
        BaseWeixinUrlConstant.BASE_WEIXIN_GET_WXMESSAGELOG_BY_CONDITIONS_URL,
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

    static async baseWeixinGetMWxmessagelogcountMByMConditionsPost(input: BaseWeixinDefinition.WxMessageLogInput):Promise<ApiResponse<BaseWeixinDefinition.WxMessageLogOutput> | null | undefined> {
      let res: ApiResponse<BaseWeixinDefinition.WxMessageLogOutput> | null | undefined = await post<ApiResponse<BaseWeixinDefinition.WxMessageLogOutput>>(
        BaseWeixinUrlConstant.BASE_WEIXIN_GET_WXMESSAGELOGCOUNT_BY_CONDITIONS_URL,
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

    static async baseWeixinGetMWxmessagerelationMListPost(input: BaseWeixinDefinition.WxMessageRelationInput):Promise<RowResponse<Array<BaseWeixinDefinition.WxMessageRelationOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseWeixinDefinition.WxMessageRelationOutput>> | null | undefined = await post<RowResponse<Array<BaseWeixinDefinition.WxMessageRelationOutput>>>(
        BaseWeixinUrlConstant.BASE_WEIXIN_GET_WXMESSAGERELATION_LIST_URL,
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

    static async baseWeixinGetMWxuserbehaviorMByMOpenidPost(input: BaseWeixinDefinition.WxUserBehaviorInput):Promise<ApiResponse<BaseWeixinDefinition.WxUserBehaviorOutput> | null | undefined> {
      let res: ApiResponse<BaseWeixinDefinition.WxUserBehaviorOutput> | null | undefined = await post<ApiResponse<BaseWeixinDefinition.WxUserBehaviorOutput>>(
        BaseWeixinUrlConstant.BASE_WEIXIN_GET_WXUSERBEHAVIOR_BY_OPENID_URL,
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

    static async baseWeixinInsertMWxMTodoPost(input: BaseWeixinDefinition.WxTodoInput):Promise<ApiResponse<BaseWeixinDefinition.WxTodoOutput> | null | undefined> {
      let res: ApiResponse<BaseWeixinDefinition.WxTodoOutput> | null | undefined = await post<ApiResponse<BaseWeixinDefinition.WxTodoOutput>>(
        BaseWeixinUrlConstant.BASE_WEIXIN_INSERT_WX_TODO_URL,
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

    static async baseWeixinInsertMWxmessagelogPost(input: BaseWeixinDefinition.WxMessageLogInput):Promise<ApiResponse<BaseWeixinDefinition.WxMessageLogOutput> | null | undefined> {
      let res: ApiResponse<BaseWeixinDefinition.WxMessageLogOutput> | null | undefined = await post<ApiResponse<BaseWeixinDefinition.WxMessageLogOutput>>(
        BaseWeixinUrlConstant.BASE_WEIXIN_INSERT_WXMESSAGELOG_URL,
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

    static async baseWeixinInsertMWxuserbehaviorPost(input: BaseWeixinDefinition.WxUserBehaviorInput):Promise<ApiResponse<BaseWeixinDefinition.WxUserBehaviorOutput> | null | undefined> {
      let res: ApiResponse<BaseWeixinDefinition.WxUserBehaviorOutput> | null | undefined = await post<ApiResponse<BaseWeixinDefinition.WxUserBehaviorOutput>>(
        BaseWeixinUrlConstant.BASE_WEIXIN_INSERT_WXUSERBEHAVIOR_URL,
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

    static async baseWeixinInsertMWxuserinfoPost(input: BaseWeixinDefinition.WxUserInfoInput):Promise<ApiResponse<BaseWeixinDefinition.WxUserInfoOutput> | null | undefined> {
      let res: ApiResponse<BaseWeixinDefinition.WxUserInfoOutput> | null | undefined = await post<ApiResponse<BaseWeixinDefinition.WxUserInfoOutput>>(
        BaseWeixinUrlConstant.BASE_WEIXIN_INSERT_WXUSERINFO_URL,
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

    static async baseWeixinUnsubscribePost(input: BaseWeixinDefinition.UnSubscribeInput):Promise<ApiResponse<BaseWeixinDefinition.UnSubscribeOutput> | null | undefined> {
      let res: ApiResponse<BaseWeixinDefinition.UnSubscribeOutput> | null | undefined = await post<ApiResponse<BaseWeixinDefinition.UnSubscribeOutput>>(
        BaseWeixinUrlConstant.BASE_WEIXIN_UNSUBSCRIBE,
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

    static async baseWeixinUpdateMWxMUserMInfoPost(input: BaseWeixinDefinition.WxUserInfoInput):Promise<ApiResponse<BaseWeixinDefinition.WxUserInfoOutput> | null | undefined> {
      let res: ApiResponse<BaseWeixinDefinition.WxUserInfoOutput> | null | undefined = await post<ApiResponse<BaseWeixinDefinition.WxUserInfoOutput>>(
        BaseWeixinUrlConstant.BASE_WEIXIN_UPDATE_WX_USER_INFO_URL,
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

    static async baseWeixinUpdateMWxuserbehaviorMAfterMSubscribePost(input: BaseWeixinDefinition.WxUserBehaviorInput):Promise<ApiResponse<BaseWeixinDefinition.WxUserBehaviorOutput> | null | undefined> {
      let res: ApiResponse<BaseWeixinDefinition.WxUserBehaviorOutput> | null | undefined = await post<ApiResponse<BaseWeixinDefinition.WxUserBehaviorOutput>>(
        BaseWeixinUrlConstant.BASE_WEIXIN_UPDATE_WXUSERBEHAVIOR_AFTER_SUBSCRIBE_URL,
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

    static async baseWeixinUpdateMWxuserbehaviorMByMIdPost(input: BaseWeixinDefinition.WxUserBehaviorInput):Promise<ApiResponse<BaseWeixinDefinition.WxUserBehaviorOutput> | null | undefined> {
      let res: ApiResponse<BaseWeixinDefinition.WxUserBehaviorOutput> | null | undefined = await post<ApiResponse<BaseWeixinDefinition.WxUserBehaviorOutput>>(
        BaseWeixinUrlConstant.BASE_WEIXIN_UPDATE_WXUSERBEHAVIOR_BY_ID_URL,
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
}
