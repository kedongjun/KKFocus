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
import { BaseUserDefinition } from './../definition/BaseUserDefinition';
import { BaseUserUrlConstant } from './../constant/BaseUserUrlConstant';

export namespace BaseUserOperation {
  export class UserPopupWindowController {
    static async baseUserPopupwindowAddactionPost(ip: string, userActionInput: BaseUserDefinition.UserActionInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_POPUPWINDOW_ADDACTION,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        userActionInput
      );

      return res;
    }

    static async baseUserPopupwindowIspopupPost(ip: string, userPopupWindowInfoInput: BaseUserDefinition.UserPopupWindowInfoInput, userId: number):Promise<ApiResponse<BaseUserDefinition.UserPopupWindowOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserPopupWindowOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserPopupWindowOutput>>(
        BaseUserUrlConstant.BASE_USER_POPUPWINDOW_ISPOPUP,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        userPopupWindowInfoInput
      );

      return res;
    }
  }


  export class XiaomiController {
    static async baseUserV1XiaomiGeturlPost(input: BaseUserDefinition.PackageInput):Promise<ApiResponse<BaseUserDefinition.UrlOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UrlOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UrlOutput>>(
        BaseUserUrlConstant.BASE_USER_V1_XIAOMI_GET_URL,
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


  export class UserEverydayShowController {
    static async baseUserCouldUBeUCollectedPost(input: BaseUserDefinition.CouldBeCollectedInput, ip: string, userId: number):Promise<ApiResponse<BaseUserDefinition.CouldBeCollectedOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.CouldBeCollectedOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.CouldBeCollectedOutput>>(
        BaseUserUrlConstant.BASE_USER_COULD_BE_COLLECTED_URL,
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


  export class UserDataBackupController {
    static async baseUserDataBackupPost(channelType: string, userId: number):Promise<ApiResponse<BaseUserDefinition.DataBackupOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.DataBackupOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.DataBackupOutput>>(
        BaseUserUrlConstant.BASE_USER_DATA_BACKUP,
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

    static async baseUserGetDataBackupPost(channelType: string, userId: number):Promise<ApiResponse<BaseUserDefinition.DataBackupOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.DataBackupOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.DataBackupOutput>>(
        BaseUserUrlConstant.BASE_USER_GET_DATA_BACKUP,
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
  }


  export class UserDeviceActivityController {
    static async baseUserDeviceactivityPost(input: BaseUserDefinition.DeviceActivityInput):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BaseUserUrlConstant.BASE_USER_DEVICE_ACTIVITY,
        {
        },
        {
        },
        {
            // "ip": ip,
            // "channel_type": channelType,
            // "device_model": deviceModel,
            // "device_tag": deviceTag,
            // "device_type": deviceType,
            // "sid": sid,
            // "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseUserRemovedeviceactivityPost(input: BaseUserDefinition.DeviceActivityInput, ip: string, deviceTag?: string, deviceType?: string, userId?: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BaseUserUrlConstant.BASE_USER_REMOVE_DEVICE_ACTIVITY,
        {
        },
        {
        },
        {
            "ip": ip,
            "device_tag": deviceTag,
            "device_type": deviceType,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseUserV1RemovecurrentdeviceactivityPost(input: BaseUserDefinition.DeviceActivityInput, ip: string, deviceTag?: string, deviceType?: string, userId?: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BaseUserUrlConstant.BASE_USER_V1_REMOVE_CURRENT_DEVICE_ACTIVITY,
        {
        },
        {
        },
        {
            "ip": ip,
            "device_tag": deviceTag,
            "device_type": deviceType,
            "user_id": userId
        },
        input
      );

      return res;
    }
  }


  export class MemberSignControllerV2 {
    static async baseUserV2MemberSignDetailPost(channelType: string, deviceType: string, input: BaseUserDefinition.SignDetailInput, ip: string, userId: number):Promise<ApiResponse<BaseUserDefinition.SignDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.SignDetailOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.SignDetailOutput>>(
        BaseUserUrlConstant.BASE_USER_V2_MEMBER_SIGN_DETAIL,
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


  export class UserLoginControllerV3 {
    static async baseUserV3QqloginPost(channelType: string, input: BaseUserDefinition.QQLoginInput, ip: string):Promise<ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.LoginOutput>>(
        BaseUserUrlConstant.BASE_USER_V3_QQ_LOGIN,
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

    static async baseUserV3WxloginPost(channelType: string, input: BaseUserDefinition.WxLoginInput, ip: string):Promise<ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.LoginOutput>>(
        BaseUserUrlConstant.BASE_USER_V3_WX_LOGIN,
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
  }


  export class UserInviteController {
    static async baseUserV1InviteListPost(channelType: string, userId: number):Promise<RowResponse<Array<BaseUserDefinition.ShareCodeInviteOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseUserDefinition.ShareCodeInviteOutput>> | null | undefined = await post<RowResponse<Array<BaseUserDefinition.ShareCodeInviteOutput>>>(
        BaseUserUrlConstant.BASE_USER_V1_INVITE_LIST,
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

    static async baseUserV1InviteSharecodebindPost(channelType: string, input: BaseUserDefinition.ShareCodeBindInput, ip: string):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_V1_INVITE_SHARE_CODE_BIND,
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

    static async baseUserV1InviteSumPost(channelType: string, userId: number):Promise<ApiResponse<BaseUserDefinition.UserInviteOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserInviteOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserInviteOutput>>(
        BaseUserUrlConstant.BASE_USER_V1_INVITE_SUM,
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
  }


  export class UserLoginControllerV2 {
    static async baseUserQqloginbindoneclickPost(channelType: string, input: BaseUserDefinition.QQLoginBindOneClickInput, ip: string):Promise<ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.LoginOutput>>(
        BaseUserUrlConstant.BASE_USER_QQ_LOGIN_BIND_ONE_CLICK,
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

    static async baseUserV2OneclickloginPost(input: BaseUserDefinition.RegisterOrLoginOneclickInput):Promise<ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.LoginOutput>>(
        BaseUserUrlConstant.BASE_USER_V2_ONECLICK_LOGIN,
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

    static async baseUserWxloginbindoneclickPost(channelType: string, input: BaseUserDefinition.WxLoginBindOneClickInput, ip: string):Promise<ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.LoginOutput>>(
        BaseUserUrlConstant.BASE_USER_WX_LOGIN_BIND_ONECLICK,
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
  }


  export class ItemController {
    static async baseUserV1MallAddressAddorupdatePost(input: BaseUserDefinition.UserAddressVo, ip: string, userId: number):Promise<ApiResponse<BaseUserDefinition.UserAddressVo> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserAddressVo> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserAddressVo>>(
        BaseUserUrlConstant.BASE_USER_V1_MALL_ADDRESS_ADD_OR_UPDATE,
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

    static async baseUserV1MallAddressDefaultPost(ip: string, userId: number):Promise<ApiResponse<BaseUserDefinition.UserAddressVo> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserAddressVo> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserAddressVo>>(
        BaseUserUrlConstant.BASE_USER_V1_MALL_ADDRESS_DEFAULT,
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

    static async baseUserV1MallAddressDeletePost(input: BaseUserDefinition.IdRequest, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_V1_MALL_ADDRESS_DELETE,
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

    static async baseUserV1MallAddressListPost(ip: string, userId: number):Promise<RowResponse<Array<BaseUserDefinition.UserAddressVo>> | null | undefined> {
      let res: RowResponse<Array<BaseUserDefinition.UserAddressVo>> | null | undefined = await post<RowResponse<Array<BaseUserDefinition.UserAddressVo>>>(
        BaseUserUrlConstant.BASE_USER_V1_MALL_ADDRESS_LIST,
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

    static async baseUserV1MallItemDetailPost(input: BaseUserDefinition.IdRequest, ip: string, userId: number):Promise<ApiResponse<BaseUserDefinition.ItemVo> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.ItemVo> | null | undefined = await post<ApiResponse<BaseUserDefinition.ItemVo>>(
        BaseUserUrlConstant.BASE_USER_V1_MALL_ITEM_DETAIL,
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


  export class VipActivityController {
    static async baseUserV1VipGetvipactivityPost(channelType: string, deviceType: string, input: BaseUserDefinition.IdRequest, userId: number):Promise<ApiResponse<BaseUserDefinition.VipActivityOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.VipActivityOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.VipActivityOutput>>(
        BaseUserUrlConstant.BASE_USER_V1_VIP_GET_VIP_ACTIVITY,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "device_type": deviceType,
            "user_id": userId
        },
        input
      );

      return res;
    }
  }


  export class UserCustomController {
    static async baseUserCustomBatchupdatePost(inputs: BaseUserDefinition.CustomInputs, userId?: number):Promise<ApiResponse<Map<string, string>> | null | undefined> {
      let res: ApiResponse<Map<string, string>> | null | undefined = await post<ApiResponse<Map<string, string>>>(
        BaseUserUrlConstant.BASE_USER_CUSTOM_BATCH_UPDATE,
        {
        },
        {
        },
        {
            // "user_id": userId
        },
        inputs
      );

      return res;
    }

    static async baseUserCustomDeleteUAllUTodoUAheadUTimePost(input: BaseUserDefinition.DeleteAllTodoAheadTimeInput, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BaseUserUrlConstant.BASE_USER_CUSTOM_DELETE_ALL_TODO_AHEAD_TIME_URL,
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

    static async baseUserCustomGetMDailyPost(userId: number):Promise<ApiResponse<BaseUserDefinition.DailyDataTypeOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.DailyDataTypeOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.DailyDataTypeOutput>>(
        BaseUserUrlConstant.BASE_USER_CUSTOM_GET_DAILY_URL,
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

    static async baseUserCustomGetPost(input: BaseUserDefinition.CustomInput):Promise<ApiResponse<BaseUserDefinition.CustomOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.CustomOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.CustomOutput>>(
        BaseUserUrlConstant.BASE_USER_CUSTOM_GET_,
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

    static async baseUserCustomGetRemindPatternPost(channelType: string, userId: number):Promise<RowResponse<Array<BaseUserDefinition.CustomOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseUserDefinition.CustomOutput>> | null | undefined = await post<RowResponse<Array<BaseUserDefinition.CustomOutput>>>(
        BaseUserUrlConstant.BASE_USER_CUSTOM_GET_REMIND_PATTERN,
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

    static async baseUserCustomGetRemindQuadrantPost(userId: number):Promise<RowResponse<Array<BaseUserDefinition.CustomOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseUserDefinition.CustomOutput>> | null | undefined = await post<RowResponse<Array<BaseUserDefinition.CustomOutput>>>(
        BaseUserUrlConstant.BASE_USER_CUSTOM_GET_REMIND_QUADRANT,
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

    static async baseUserCustomGetWxinfoPost(channelType: string, userId: number):Promise<ApiResponse<BaseUserDefinition.CustomWXInfoOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.CustomWXInfoOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.CustomWXInfoOutput>>(
        BaseUserUrlConstant.BASE_USER_CUSTOM_GET_WXINFO,
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

    static async baseUserCustomGetdailywechatPost(userId: number):Promise<ApiResponse<BaseUserDefinition.DailyDataTypeOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.DailyDataTypeOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.DailyDataTypeOutput>>(
        BaseUserUrlConstant.BASE_USER_CUSTOM_GET_DAILY_WE_CHAT,
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

    static async baseUserCustomGetusermyappletinfooutputPost(input: BaseUserDefinition.GetUserMyAppletInfoInput, userId: number):Promise<ApiResponse<BaseUserDefinition.UserMyAppletInfoOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserMyAppletInfoOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserMyAppletInfoOutput>>(
        BaseUserUrlConstant.BASE_USER_CUSTOM_GET_USER_MY_APPLET_INFO_OUTPUT,
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

    static async baseUserCustomListPost(input: BaseUserDefinition.CustomListInput, userId: number):Promise<ApiResponse<Map<string, string>> | null | undefined> {
      let res: ApiResponse<Map<string, string>> | null | undefined = await post<ApiResponse<Map<string, string>>>(
        BaseUserUrlConstant.BASE_USER_CUSTOM_LIST,
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

    static async baseUserCustomUpdateMDailyPost(input: BaseUserDefinition.DailyDataTypeSettingInput, userId: number):Promise<ApiResponse<BaseUserDefinition.DailyDataTypeOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.DailyDataTypeOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.DailyDataTypeOutput>>(
        BaseUserUrlConstant.BASE_USER_CUSTOM_UPDATE_DAILY_URL,
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

    static async baseUserCustomUpdatePost(input: BaseUserDefinition.CustomInput):Promise<ApiResponse<BaseUserDefinition.CustomOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.CustomOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.CustomOutput>>(
        BaseUserUrlConstant.BASE_USER_CUSTOM_UPDATE_,
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

    static async baseUserCustomUpdateRemindQuadrantPost(input: BaseUserDefinition.QuadrantInput, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BaseUserUrlConstant.BASE_USER_CUSTOM_UPDATE_REMIND_QUADRANT,
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

    static async baseUserCustomUpdateRemindWxPost(channelType: string, input: BaseUserDefinition.CustomInput, userId: number):Promise<RowResponse<Array<BaseUserDefinition.CustomOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseUserDefinition.CustomOutput>> | null | undefined = await post<RowResponse<Array<BaseUserDefinition.CustomOutput>>>(
        BaseUserUrlConstant.BASE_USER_CUSTOM_UPDATE_REMIND_WX,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseUserCustomUpdatedailyPost(input: BaseUserDefinition.AppDailySettingInput):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BaseUserUrlConstant.BASE_USER_CUSTOM_UPDATE_DAILY,
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

    static async baseUserCustomUpdatedailywechatPost(input: BaseUserDefinition.WeChatDailyDataTypeSettingInput, userId: number):Promise<ApiResponse<BaseUserDefinition.DailyDataTypeOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.DailyDataTypeOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.DailyDataTypeOutput>>(
        BaseUserUrlConstant.BASE_USER_CUSTOM_UPDATE_DAILY_WE_CHAT,
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

    static async baseUserCustomUpdatedailywechatsortPost(input: BaseUserDefinition.WeChatDailyDataTypeSortInput, userId: number):Promise<ApiResponse<BaseUserDefinition.DailyDataTypeOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.DailyDataTypeOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.DailyDataTypeOutput>>(
        BaseUserUrlConstant.BASE_USER_CUSTOM_UPDATE_DAILY_WE_CHAT_SORT,
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

    static async baseUserGetstartypePost(userId: number):Promise<ApiResponse<Map<string, string>> | null | undefined> {
      let res: ApiResponse<Map<string, string>> | null | undefined = await post<ApiResponse<Map<string, string>>>(
        BaseUserUrlConstant.BASE_USER_GET_STAR_TYPE,
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
  }


  export class UserRegisterController {
    static async baseUserRegisterPost(channelType: string, input: BaseUserDefinition.RegisterInput, ip: string):Promise<ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.LoginOutput>>(
        BaseUserUrlConstant.BASE_USER_REGISTER,
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

    static async baseUserV2RegisterPost(channelType: string, input: BaseUserDefinition.RegisterInput, ip: string):Promise<ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.LoginOutput>>(
        BaseUserUrlConstant.BASE_USER_V2_REGISTER,
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
  }


  export class MsgController {
    static async baseUserV1MsgListPost(input?: BaseUserDefinition.MsgListInput):Promise<ApiResponse<BaseUserDefinition.MsgWrapOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.MsgWrapOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.MsgWrapOutput>>(
        BaseUserUrlConstant.BASE_USER_V1_MSG_LIST,
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

    static async baseUserV1MsgReadPost(input: BaseUserDefinition.MsgIdInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_V1_MSG_READ,
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

    static async baseUserV1MsgUnreadcountPost(channelType: string, deviceType: string, ip: string, userId: number, version: string, channel?: string):Promise<ApiResponse<BaseUserDefinition.UnreadMsgOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UnreadMsgOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UnreadMsgOutput>>(
        BaseUserUrlConstant.BASE_USER_V1_MSG_UN_READ_COUNT,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "device_type": deviceType,
            "ip": ip,
            "user_id": userId,
            "version": version,
            "channel": channel
        },
      );

      return res;
    }

    static async baseUserV2MsgDeletePost(input: BaseUserDefinition.IdRequest):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_V2_MSG_DELETE,
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


  export class UserConfigShowController {
    static async baseUserGetconfigshowPost(input: BaseUserDefinition.UserConfigShowGetInput, userId: number):Promise<ApiResponse<BaseUserDefinition.UserConfigShowOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserConfigShowOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserConfigShowOutput>>(
        BaseUserUrlConstant.BASE_USER_GET_CONFIG_SHOW,
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

    static async baseUserSaveconfigshowPost(input: BaseUserDefinition.UserConfigShowSaveInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_SAVE_CONFIG_SHOW,
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


  export class MsgH5Controller {
    static async baseUserV1MsgH5DetailPost(input: BaseUserDefinition.IdRequest):Promise<ApiResponse<BaseUserDefinition.MsgH5Vo> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.MsgH5Vo> | null | undefined = await post<ApiResponse<BaseUserDefinition.MsgH5Vo>>(
        BaseUserUrlConstant.BASE_USER_V1_MSG_H5_DETAIL,
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


  export class UserStepController {
    static async baseUserV1StepJoinorleaverankPost(input: BaseUserDefinition.JoinOrLeaveRankInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_V1_STEP_JOIN_OR_LEAVE_RANK,
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

    static async baseUserV1StepRankPost(userId: number):Promise<ApiResponse<BaseUserDefinition.StepRankOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.StepRankOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.StepRankOutput>>(
        BaseUserUrlConstant.BASE_USER_V1_STEP_RANK,
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

    static async baseUserV1StepUploadPost(input: BaseUserDefinition.UploadStepInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_V1_STEP_UPLOAD,
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


  export class UserSecurityController {
    static async baseUserChangemobilePost(channelType: string, input: BaseUserDefinition.ChangeMobileInput, ip: string, userId: number):Promise<ApiResponse<BaseUserDefinition.UserChangeMobileOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserChangeMobileOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserChangeMobileOutput>>(
        BaseUserUrlConstant.BASE_USER_CHANGE_MOBILE,
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

    static async baseUserChangemobilewithoutcheckPost(channelType: string, input: BaseUserDefinition.ChangeMobileInput, ip: string, userId: number):Promise<ApiResponse<BaseUserDefinition.UserChangeMobileOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserChangeMobileOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserChangeMobileOutput>>(
        BaseUserUrlConstant.BASE_USER_CHANGE_MOBILE_WITHOUT_CHECK,
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

    static async baseUserChangepasswordPost(channelType: string, input: BaseUserDefinition.ChangePasswordInput, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BaseUserUrlConstant.BASE_USER_CHANGE_PASSWORD,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseUserChecknewmobileexistPost(input: BaseUserDefinition.ChangeMobileInput):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BaseUserUrlConstant.BASE_USER_CHECK_NEW_MOBILE_EXIST,
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

    static async baseUserEmptyPost(channelType: string, input: BaseUserDefinition.UserEmptyInput, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BaseUserUrlConstant.BASE_USER_EMPTY,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseUserEmptyValidatePost(userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_EMPTY_VALIDATE,
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

    static async baseUserEmptytipPost():Promise<ApiResponse<BaseUserDefinition.EmptyTipOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.EmptyTipOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.EmptyTipOutput>>(
        BaseUserUrlConstant.BASE_USER_EMPTY_TIP,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseUserResetpasswordPost(channelType: string, input: BaseUserDefinition.ResetPasswordInput, ip: string):Promise<ApiResponse<BaseUserDefinition.UserResetPasswordOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserResetPasswordOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserResetPasswordOutput>>(
        BaseUserUrlConstant.BASE_USER_RESET_PASSWORD,
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

    static async baseUserSetpasswordPost(input: BaseUserDefinition.SetPasswordInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_SET_PASSWORD,
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


  export class UserTaskController {
    static async baseUserV1WelfaretaskReceivePost(channelType: string, deviceType: string, input: BaseUserDefinition.IdRequest, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_V1_WELFARE_TASK_RECEIVE,
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


  export class UserProblemHelpController {
    static async baseUserCommonproblemhelpAddorupdatePost(input: BaseUserDefinition.UserProblemHelpInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_COMMON_PROBLEM_HELP_ADD_OR_UPDATE,
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

    static async baseUserCommonproblemhelpGetbykeyPost(input: BaseUserDefinition.UserProblemHelpQueryInput, userId: number):Promise<ApiResponse<BaseUserDefinition.UserProblemHelpOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserProblemHelpOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserProblemHelpOutput>>(
        BaseUserUrlConstant.BASE_USER_COMMON_PROBLEM_HELP_GET_BY_KEY,
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

    static async baseUserCommonproblemhelpGetlistbyuseridPost(input: BaseUserDefinition.UserProblemHelpVersionInput, userId: number):Promise<RowResponse<Array<BaseUserDefinition.UserProblemHelpOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseUserDefinition.UserProblemHelpOutput>> | null | undefined = await post<RowResponse<Array<BaseUserDefinition.UserProblemHelpOutput>>>(
        BaseUserUrlConstant.BASE_USER_COMMON_PROBLEM_HELP_GET_LIST_BY_USER_ID,
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


  export class CheckAliveController {
    static async checkaliveGet():Promise<number | null | undefined> {
      let res: number | null | undefined = await get<number>(
        BaseUserUrlConstant.CHECKALIVE,
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


  export class UserEverydayMottoController {
    static async baseUserEverydayUMottoBatchdeletePost(input: BaseUserDefinition.UserEverydayMottoBatchDeleteInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_EVERYDAY_MOTTO_BATCH_DELETE_URL,
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

    static async baseUserEverydayUMottoCheckiscollectedPost(input: BaseUserDefinition.UserEverydayMottoInput, userId: number):Promise<ApiResponse<BaseUserDefinition.UserEverydayMottoCheckIsCollectedOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserEverydayMottoCheckIsCollectedOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserEverydayMottoCheckIsCollectedOutput>>(
        BaseUserUrlConstant.BASE_USER_EVERYDAY_MOTTO_CHECK_IS_COLLECTED_URL,
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

    static async baseUserEverydayUMottoCountPost(input: BaseUserDefinition.DateRangeRequest, userId: number):Promise<ApiResponse<BaseUserDefinition.CountResponse> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.CountResponse> | null | undefined = await post<ApiResponse<BaseUserDefinition.CountResponse>>(
        BaseUserUrlConstant.BASE_USER_EVERYDAY_MOTTO_COUNT_URL,
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

    static async baseUserEverydayUMottoDeletePost(input: BaseUserDefinition.UserEverydayMottoDeleteInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_EVERYDAY_MOTTO_DELETE_URL,
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

    static async baseUserEverydayUMottoExportdataPost(condition: BaseUserDefinition.MottoTransferCondition, userId: number):Promise<ApiResponse<BaseUserDefinition.MottoImportExportData> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.MottoImportExportData> | null | undefined = await post<ApiResponse<BaseUserDefinition.MottoImportExportData>>(
        BaseUserUrlConstant.BASE_USER_EVERYDAY_MOTTO_EXPORT_DATA_URL,
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

    static async baseUserEverydayUMottoImportdataPost(data: BaseUserDefinition.MottoImportExportData, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_EVERYDAY_MOTTO_IMPORT_DATA_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        data
      );

      return res;
    }

    static async baseUserEverydayUMottoInsertPost(input: BaseUserDefinition.UserEverydayMottoInput):Promise<ApiResponse<BaseUserDefinition.CouldBeCollectedOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.CouldBeCollectedOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.CouldBeCollectedOutput>>(
        BaseUserUrlConstant.BASE_USER_EVERYDAY_MOTTO_INSERT_URL,
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

    static async baseUserEverydayUMottoListPost(input: BaseUserDefinition.EverydayMottoListInput):Promise<PaginableResponse<Array<BaseUserDefinition.UserEverydayMottoOutput>> | null | undefined> {
      let res: PaginableResponse<Array<BaseUserDefinition.UserEverydayMottoOutput>> | null | undefined = await post<PaginableResponse<Array<BaseUserDefinition.UserEverydayMottoOutput>>>(
        BaseUserUrlConstant.BASE_USER_EVERYDAY_MOTTO_LIST_URL,
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

    static async baseUserEverydayUMottoListbydatePost(input: BaseUserDefinition.EverydayMottoListByDateInput, userId: number):Promise<RowResponse<Array<BaseUserDefinition.UserEverydayMottoOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseUserDefinition.UserEverydayMottoOutput>> | null | undefined = await post<RowResponse<Array<BaseUserDefinition.UserEverydayMottoOutput>>>(
        BaseUserUrlConstant.BASE_USER_EVERYDAY_MOTTO_LIST_BY_DATE_URL,
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

    static async baseUserEverydayUMottoListbypagePost(input: BaseUserDefinition.EverydayMottoListByPageInput, userId: number):Promise<PaginableResponse<Array<BaseUserDefinition.UserEverydayMottoOutput>> | null | undefined> {
      let res: PaginableResponse<Array<BaseUserDefinition.UserEverydayMottoOutput>> | null | undefined = await post<PaginableResponse<Array<BaseUserDefinition.UserEverydayMottoOutput>>>(
        BaseUserUrlConstant.BASE_USER_EVERYDAY_MOTTO_LIST_BY_PAGE_URL,
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


  export class UserWeChatController {
    static async baseUserBindwechatPost(channelType: string, input: BaseUserDefinition.BindWeChatInput, ip: string, userId: number):Promise<ApiResponse<BaseUserDefinition.BindWeChatOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.BindWeChatOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.BindWeChatOutput>>(
        BaseUserUrlConstant.BASE_USER_BIND_WE_CHAT,
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

    static async baseUserChangecacheopenidPost(input: BaseUserDefinition.ChangeCacheOpenidInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_CHANGE_CACHE_OPENID,
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

    static async baseUserUnbindwechatPost(channelType: string, input: BaseUserDefinition.UnBindWeChatInput, userId: number):Promise<ApiResponse<BaseUserDefinition.UnBindOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UnBindOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UnBindOutput>>(
        BaseUserUrlConstant.BASE_USER_UNBIND_WE_CHAT,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseUserV1UpdatewechatinfoPost(channelType: string, input: BaseUserDefinition.BindWeChatInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_V1_UPDATE_WE_CHAT_INFO,
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


  export class UserVipChargeController {
    static async baseUserVipCheckfreealllifevipPost(channelType: string, deviceType: string, userId: number):Promise<ApiResponse<BaseUserDefinition.CheckFreeVipOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.CheckFreeVipOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.CheckFreeVipOutput>>(
        BaseUserUrlConstant.BASE_USER_VIP_CHECK_FREE_ALL_LIFE_VIP,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "device_type": deviceType,
            "user_id": userId
        },
      );

      return res;
    }

    static async baseUserVipGetfreealllifevipPost(channelType: string, deviceType: string, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_VIP_GET_FREE_ALL_LIFE_VIP,
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
      );

      return res;
    }

    static async baseUserVipGetuservipacquisitionPost(channelType: string, deviceType: string, input: BaseUserDefinition.MemberCenterInput, ip: string, userId: number):Promise<ApiResponse<Acquisition<BaseUserDefinition.UserVipChargeListOutput>> | null | undefined> {
      let res: ApiResponse<Acquisition<BaseUserDefinition.UserVipChargeListOutput>> | null | undefined = await post<ApiResponse<Acquisition<BaseUserDefinition.UserVipChargeListOutput>>>(
        BaseUserUrlConstant.BASE_USER_VIP_GET_USER_VIP_ACQUISITION,
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

    static async baseUserVipGetuservipchargehistoryPost():Promise<RowResponse<Array<BaseUserDefinition.UserVipChargeHistoryOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseUserDefinition.UserVipChargeHistoryOutput>> | null | undefined = await post<RowResponse<Array<BaseUserDefinition.UserVipChargeHistoryOutput>>>(
        BaseUserUrlConstant.BASE_USER_VIP_GET_USER_VIP_CHARGE_HISTORY,
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


  export class BetaUserController {
    static async baseUserV1BetaReloadPost(userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_V1_BETA_RELOAD,
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
  }


  export class MemberSignController {
    static async baseUserMemberSignPost(channelType: string, deviceType: string, ip: string, userId: number):Promise<ApiResponse<Acquisition<BaseUserDefinition.MemberSignOutput>> | null | undefined> {
      let res: ApiResponse<Acquisition<BaseUserDefinition.MemberSignOutput>> | null | undefined = await post<ApiResponse<Acquisition<BaseUserDefinition.MemberSignOutput>>>(
        BaseUserUrlConstant.BASE_USER_MEMBER_SIGN,
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
      );

      return res;
    }

    static async baseUserMemberSignDetailPost(channelType: string, userId: number):Promise<ApiResponse<Acquisition<BaseUserDefinition.MemberSignOutput>> | null | undefined> {
      let res: ApiResponse<Acquisition<BaseUserDefinition.MemberSignOutput>> | null | undefined = await post<ApiResponse<Acquisition<BaseUserDefinition.MemberSignOutput>>>(
        BaseUserUrlConstant.BASE_USER_MEMBER_SIGN_DETAIL,
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
  }


  export class UserLoginController {
    static async baseUserLoginPost(channelType: string, input: BaseUserDefinition.LoginInput, ip: string):Promise<ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.LoginOutput>>(
        BaseUserUrlConstant.BASE_USER_LOGIN,
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

    static async baseUserQqloginPost(channelType: string, input: BaseUserDefinition.QQLoginInput, ip: string):Promise<ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.LoginOutput>>(
        BaseUserUrlConstant.BASE_USER_QQ_LOGIN,
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

    static async baseUserQqloginbindPost(channelType: string, input: BaseUserDefinition.QQLoginBindInput, ip: string):Promise<ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.LoginOutput>>(
        BaseUserUrlConstant.BASE_USER_QQ_LOGIN_BIND,
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

    static async baseUserQqwebloginPost(channelType: string, input: BaseUserDefinition.QQWebLoginInput, ip: string):Promise<ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.LoginOutput>>(
        BaseUserUrlConstant.BASE_USER_QQ_WEB_LOGIN,
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

    static async baseUserV1GettokenbyunionidPost(channelType: string, input: BaseUserDefinition.WxUnionidLoginInput, ip: string):Promise<ApiResponse<BaseUserDefinition.WxWebGetTokenByCodeOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.WxWebGetTokenByCodeOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.WxWebGetTokenByCodeOutput>>(
        BaseUserUrlConstant.BASE_USER_V1_GET_TOKEN_BY_UNIONID,
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

    static async baseUserV1MiniappletloginPost(channelType: string, input: BaseUserDefinition.WxMiniAppletRegisterInput, ip: string):Promise<ApiResponse<BaseUserDefinition.WxWebGetTokenByCodeOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.WxWebGetTokenByCodeOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.WxWebGetTokenByCodeOutput>>(
        BaseUserUrlConstant.BASE_USER_V1_MINI_APPLET_LOGIN,
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

    static async baseUserV1WebgettokenbycodePost(channelType: string, input: BaseUserDefinition.WxWebGetTokenByCodeInput, ip: string):Promise<ApiResponse<BaseUserDefinition.WxWebGetTokenByCodeOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.WxWebGetTokenByCodeOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.WxWebGetTokenByCodeOutput>>(
        BaseUserUrlConstant.BASE_USER_V1_WEB_GET_TOKEN_BY_CODE,
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

    static async baseUserV2LoginPost(channelType: string, input: BaseUserDefinition.LoginInput, ip: string):Promise<ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.LoginOutput>>(
        BaseUserUrlConstant.BASE_USER_V2_LOGIN,
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

    static async baseUserV2QqloginPost(channelType: string, input: BaseUserDefinition.QQLoginInput, ip: string):Promise<ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.LoginOutput>>(
        BaseUserUrlConstant.BASE_USER_V2_QQ_LOGIN,
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

    static async baseUserV2QqloginbindPost(channelType: string, input: BaseUserDefinition.QQLoginBindInput, ip: string):Promise<ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.LoginOutput>>(
        BaseUserUrlConstant.BASE_USER_V2_QQ_LOGIN_BIND,
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

    static async baseUserV2QqwebloginPost(channelType: string, input: BaseUserDefinition.QQWebLoginInput, ip: string):Promise<ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.LoginOutput>>(
        BaseUserUrlConstant.BASE_USER_V2_QQ_WEB_LOGIN,
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

    static async baseUserV2WxloginPost(channelType: string, input: BaseUserDefinition.WxLoginInput, ip: string):Promise<ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.LoginOutput>>(
        BaseUserUrlConstant.BASE_USER_V2_WX_LOGIN,
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

    static async baseUserV2WxloginbindPost(channelType: string, input: BaseUserDefinition.WxLoginBindInput, ip: string):Promise<ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.LoginOutput>>(
        BaseUserUrlConstant.BASE_USER_V2_WX_LOGIN_BIND,
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

    static async baseUserV2WxwebloginPost(channelType: string, input: BaseUserDefinition.WxWebLoginInput, ip: string):Promise<ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.LoginOutput>>(
        BaseUserUrlConstant.BASE_USER_V2_WX_WEB_LOGIN,
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

    static async baseUserWxloginPost(channelType: string, input: BaseUserDefinition.WxLoginInput, ip: string):Promise<ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.LoginOutput>>(
        BaseUserUrlConstant.BASE_USER_WX_LOGIN,
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

    static async baseUserWxloginbindPost(channelType: string, input: BaseUserDefinition.WxLoginBindInput, ip: string):Promise<ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.LoginOutput>>(
        BaseUserUrlConstant.BASE_USER_WX_LOGIN_BIND,
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

    static async baseUserWxwebloginPost(channelType: string, input: BaseUserDefinition.WxWebLoginInput, ip: string):Promise<ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.LoginOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.LoginOutput>>(
        BaseUserUrlConstant.BASE_USER_WX_WEB_LOGIN,
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
  }


  export class MemberTrialController {
    static async baseUserMemberTrialAddPost(input: BaseUserDefinition.AppletIdInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_MEMBER_TRIAL_ADD,
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

    static async baseUserMemberTrialDuringtrialperiodPost(input: BaseUserDefinition.AppletIdInput):Promise<ApiResponse<BaseUserDefinition.DuringTrialPeriodOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.DuringTrialPeriodOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.DuringTrialPeriodOutput>>(
        BaseUserUrlConstant.BASE_USER_MEMBER_TRIAL_DURING_TRIAL_PERIOD,
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

    static async baseUserMemberTrialInfoPost(input: BaseUserDefinition.AppletIdInput, userId: number):Promise<ApiResponse<BaseUserDefinition.MemberTrialInfoUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.MemberTrialInfoUsingPOSTRsp> | null | undefined = await post<ApiResponse<BaseUserDefinition.MemberTrialInfoUsingPOSTRsp>>(
        BaseUserUrlConstant.BASE_USER_MEMBER_TRIAL_INFO,
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


  export class UserEmailController {
    static async baseUserChangeemailPost(input: BaseUserDefinition.ChangeEmailInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_CHANGE_EMAIL,
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

    static async baseUserChangeemailwithoutcheckPost(input: BaseUserDefinition.ChangeEmailInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_CHANGE_EMAIL_WITHOUT_CHECK,
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

    static async baseUserChecknewemailexistPost(input: BaseUserDefinition.ChangeEmailInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_CHECK_NEW_EMAIL_EXIST,
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

    static async baseUserValidateemailcodePost(input: BaseUserDefinition.ValidateEmailCodeInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_VALIDATE_EMAIL_CODE,
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


  export class UserHtmlShareCodeController {
    static async baseUserHtmlInviteUListPost(channelType: string, input: BaseUserDefinition.ShareCodeLogInput, ip: string, userId: number):Promise<ApiResponse<BaseUserDefinition.ShareCodeInviteListOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.ShareCodeInviteListOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.ShareCodeInviteListOutput>>(
        BaseUserUrlConstant.BASE_USER_HTML_INVITE_LIST_URL,
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

    static async baseUserHtmlShareUCodeUInfoPost(channelType: string, input: BaseUserDefinition.ShareCodeInfoInput, ip: string, userId: number):Promise<ApiResponse<BaseUserDefinition.ShareCodeInfoOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.ShareCodeInfoOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.ShareCodeInfoOutput>>(
        BaseUserUrlConstant.BASE_USER_HTML_SHARE_CODE_INFO_URL,
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

    static async baseUserV1HtmlSupplementsharecodePost(channelType: string, input: BaseUserDefinition.SupplementShareCodeInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_V1_HTML_SUPPLEMENT_SHARE_CODE,
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


  export class UserMsgListSysMsgController {
    static async baseUserAddsysmsgPost(input: BaseUserDefinition.SysMsgAddInput):Promise<ApiResponse<BaseUserDefinition.UserMsgListOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserMsgListOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserMsgListOutput>>(
        BaseUserUrlConstant.BASE_USER_ADD_SYS_MSG,
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

    static async baseUserAddusermsglistsysmsgPost(input: BaseUserDefinition.UserMsgListSysMsgAddInput):Promise<ApiResponse<BaseUserDefinition.UserMsgListOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserMsgListOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserMsgListOutput>>(
        BaseUserUrlConstant.BASE_USER_ADD_USER_MSG_LIST_SYS_MSG,
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

    static async baseUserBatchaddusermsglistsysmsgPost(input: BaseUserDefinition.UserMsgListSysMsgBatchAddInput):Promise<ApiResponse<BaseUserDefinition.UserMsgListOutputList> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserMsgListOutputList> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserMsgListOutputList>>(
        BaseUserUrlConstant.BASE_USER_BATCH_ADD_USER_MSG_LIST_SYS_MSG,
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

    static async baseUserDelusermsgPost(input: BaseUserDefinition.IdRequest, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_DEL_USER_MSG,
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

    static async baseUserGetusermsglistsysmsgbyidPost(input: BaseUserDefinition.MsgListSysMsgIdInput):Promise<ApiResponse<BaseUserDefinition.UserMsgListOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserMsgListOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserMsgListOutput>>(
        BaseUserUrlConstant.BASE_USER_GET_USER_MSG_LIST_SYS_MSG_BY_ID,
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

    static async baseUserGetusermsglistsysmsgbyuseradvicePost(input: BaseUserDefinition.UserMsgListQueryBySysUserAdviceInput):Promise<ApiResponse<BaseUserDefinition.UserMsgListOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserMsgListOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserMsgListOutput>>(
        BaseUserUrlConstant.BASE_USER_GET_USER_MSG_LIST_SYS_MSG_BY_USER_ADVICE,
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

    static async baseUserGetusermsglistsysmsglistPost(input: BaseUserDefinition.UserMsgListSysMsgListVersionInput, ip: string, userId: number):Promise<RowResponse<Array<BaseUserDefinition.UserMsgListOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseUserDefinition.UserMsgListOutput>> | null | undefined = await post<RowResponse<Array<BaseUserDefinition.UserMsgListOutput>>>(
        BaseUserUrlConstant.BASE_USER_GET_USER_MSG_LIST_SYS_MSG_LIST,
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

    static async baseUserUpdateusermsglistsysmsgPost(input: BaseUserDefinition.MsgListSysMsgInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_UPDATE_USER_MSG_LIST_SYS_MSG,
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


  export class UserInfoController {
    static async baseUserGetMUserMByMIdPost(input: BaseUserDefinition.UserQueryInput):Promise<ApiResponse<BaseUserDefinition.UserQueryOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserQueryOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserQueryOutput>>(
        BaseUserUrlConstant.BASE_USER_GET_USER_BY_ID_URL,
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

    static async baseUserGetMUserMByMOpenidPost(input: BaseUserDefinition.UserQueryInput):Promise<ApiResponse<BaseUserDefinition.UserQueryOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserQueryOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserQueryOutput>>(
        BaseUserUrlConstant.BASE_USER_GET_USER_BY_OPENID_URL,
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

    static async baseUserGetMUserMByMUnionidPost(input: BaseUserDefinition.UserQueryInput):Promise<ApiResponse<BaseUserDefinition.UserQueryOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserQueryOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserQueryOutput>>(
        BaseUserUrlConstant.BASE_USER_GET_USER_BY_UNIONID_URL,
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

    static async baseUserGetuserinfoPost():Promise<ApiResponse<BaseUserDefinition.UserInfoOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserInfoOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserInfoOutput>>(
        BaseUserUrlConstant.BASE_USER_GET_USER_INFO,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseUserGetusersimplePost(userId: number):Promise<ApiResponse<BaseUserDefinition.UserOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserOutput>>(
        BaseUserUrlConstant.BASE_USER_GET_USER_SIMPLE,
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

    static async baseUserSharecodePost(ip: string, userId: number):Promise<ApiResponse<BaseUserDefinition.UserShareCodeOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserShareCodeOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserShareCodeOutput>>(
        BaseUserUrlConstant.BASE_USER_SHARECODE,
        {
        },
        {
            "ip": ip,
        },
        {
            "user_id": userId
        },
      );

      return res;
    }

    static async baseUserUpdateMOpenidMByMIdPost(input: BaseUserDefinition.UserQueryInput):Promise<ApiResponse<BaseUserDefinition.UserQueryOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserQueryOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserQueryOutput>>(
        BaseUserUrlConstant.BASE_USER_UPDATE_OPENID_BY_ID_URL,
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

    static async baseUserUpdateMOpenidMByMIdMSgxPost(input: BaseUserDefinition.UserQueryInput):Promise<ApiResponse<BaseUserDefinition.UserQueryOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserQueryOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserQueryOutput>>(
        BaseUserUrlConstant.BASE_USER_UPDATE_OPENID_BY_ID_SGX_URL,
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

    static async baseUserUpdateimagePost(input: BaseUserDefinition.UpdateImageInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_UPDATE_IMAGE,
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

    static async baseUserUpdateuserinfoPost(input: BaseUserDefinition.UpdateUserInfoInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_UPDATE_USER_INFO,
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

    static async baseUserV1HistorydatacountPost(userId: number):Promise<ApiResponse<Map<string, number>> | null | undefined> {
      let res: ApiResponse<Map<string, number>> | null | undefined = await post<ApiResponse<Map<string, number>>>(
        BaseUserUrlConstant.BASE_USER_V1_HISTORY_DATA_COUNT,
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

    static async nativeBaseUserGetuseranddevicePost(input: BaseUserDefinition.UserCollectionInput):Promise<RowResponse<Array<BaseUserDefinition.UserAndDeviceOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseUserDefinition.UserAndDeviceOutput>> | null | undefined = await post<RowResponse<Array<BaseUserDefinition.UserAndDeviceOutput>>>(
        BaseUserUrlConstant.NATIVE_BASE_USER_GET_USER_AND_DEVICE,
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

    static async nativeBaseUserGetusersbyidsPost(input: BaseUserDefinition.UserCollectionInput):Promise<RowResponse<Array<BaseUserDefinition.UserOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseUserDefinition.UserOutput>> | null | undefined = await post<RowResponse<Array<BaseUserDefinition.UserOutput>>>(
        BaseUserUrlConstant.NATIVE_BASE_USER_GET_USERS_BY_IDS,
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


  export class UserProductOrderController {
    static async baseUserV1OrderItemAddinvoicePost(input: BaseUserDefinition.UserInvoiceDto, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_V1_ORDER_ITEM_ADD_INVOICE,
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

    static async baseUserV1OrderItemAftersalesPost(input: BaseUserDefinition.AfterSalesInput, userId: number):Promise<ApiResponse<BaseUserDefinition.ItemOrderOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.ItemOrderOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.ItemOrderOutput>>(
        BaseUserUrlConstant.BASE_USER_V1_ORDER_ITEM_AFTER_SALES,
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

    static async baseUserV1OrderItemCancelaftersalesPost(input: BaseUserDefinition.IdRequest, userId: number):Promise<ApiResponse<BaseUserDefinition.ItemOrderOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.ItemOrderOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.ItemOrderOutput>>(
        BaseUserUrlConstant.BASE_USER_V1_ORDER_ITEM_CANCEL_AFTER_SALES,
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

    static async baseUserV1OrderItemDetailPost(input: BaseUserDefinition.IdRequest, userId: number):Promise<ApiResponse<BaseUserDefinition.ItemOrderOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.ItemOrderOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.ItemOrderOutput>>(
        BaseUserUrlConstant.BASE_USER_V1_ORDER_ITEM_DETAIL,
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

    static async baseUserV1OrderItemListPost(input: BaseUserDefinition.PaginableRequest, userId: number):Promise<PaginableResponse<Array<BaseUserDefinition.ItemOrderOutput>> | null | undefined> {
      let res: PaginableResponse<Array<BaseUserDefinition.ItemOrderOutput>> | null | undefined = await post<PaginableResponse<Array<BaseUserDefinition.ItemOrderOutput>>>(
        BaseUserUrlConstant.BASE_USER_V1_ORDER_ITEM_LIST,
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

    static async baseUserV1OrderItemQueryinvoicePost(input: BaseUserDefinition.IdRequest, ip: string, userId: number):Promise<ApiResponse<BaseUserDefinition.UserInvoiceDto> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserInvoiceDto> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserInvoiceDto>>(
        BaseUserUrlConstant.BASE_USER_V1_ORDER_ITEM_QUERY_INVOICE,
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

    static async baseUserV1OrderItemReserveitemPost(input: BaseUserDefinition.ReserveItemInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_V1_ORDER_ITEM_RESERVE_ITEM,
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

    static async baseUserV1OrderItemUpdatebackexpressnumPost(input: BaseUserDefinition.UpdateBackExpressNumInput, userId: number):Promise<ApiResponse<BaseUserDefinition.ItemOrderOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.ItemOrderOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.ItemOrderOutput>>(
        BaseUserUrlConstant.BASE_USER_V1_ORDER_ITEM_UPDATE_BACK_EXPRESS_NUM,
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


  export class TestUserOperController {
    static async baseUserTestMClearMDataPost():Promise<void | null | undefined> {
      let res: void | null | undefined = await post<void>(
        BaseUserUrlConstant.BASE_USER_TEST_CLEAR_DATA_URL,
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


  export class UserSecurityControllerV2 {
    static async baseUserV1ResetpasswordbyemailPost(channelType: string, input: BaseUserDefinition.ResetPasswordByEmailInput, ip: string):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_V1_RESET_PASSWORD_BY_EMAIL,
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

    static async baseUserV2ChangeemailPost(input: BaseUserDefinition.ChangeEmailInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_V2_CHANGE_EMAIL,
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

    static async baseUserV2ChangemobilePost(channelType: string, input: BaseUserDefinition.ChangeMobileInput, ip: string, userId: number):Promise<ApiResponse<BaseUserDefinition.UserChangeMobileOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserChangeMobileOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserChangeMobileOutput>>(
        BaseUserUrlConstant.BASE_USER_V2_CHANGE_MOBILE,
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

    static async baseUserV2ResetpasswordPost(channelType: string, input: BaseUserDefinition.ResetPasswordInput, ip: string):Promise<ApiResponse<BaseUserDefinition.UserResetPasswordOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserResetPasswordOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserResetPasswordOutput>>(
        BaseUserUrlConstant.BASE_USER_V2_RESET_PASSWORD,
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
  }


  export class UserActionController {
    static async baseUserAddMUserMActionPost(input: BaseUserDefinition.AddUserActionInput, ip: string, userId: number):Promise<ApiResponse<BaseUserDefinition.AddUserActionOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.AddUserActionOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.AddUserActionOutput>>(
        BaseUserUrlConstant.BASE_USER_ADD_USER_ACTION_URL,
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


  export class UserSecurityControllerV3 {
    static async baseUserV3ChangeemailPost(input: BaseUserDefinition.ChangeEmailInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_V3_CHANGE_EMAIL,
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

    static async baseUserV3ChangemobilePost(input: BaseUserDefinition.ChangeMobileInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_V3_CHANGE_MOBILE,
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

    static async baseUserV3CodevalidPost(channelType: string, input: BaseUserDefinition.CodeInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_V3_CODE_VALID,
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

    static async baseUserV3UnbindemailPost(input: BaseUserDefinition.CodeInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_V3_UN_BIND_EMAIL,
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

    static async baseUserV3UnbindmobilePost(channelType: string, input: BaseUserDefinition.CodeInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_V3_UN_BIND_MOBILE,
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

    static async baseUserV3WxorqqvalidPost(channelType: string, input: BaseUserDefinition.WxOrQqValidInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_V3_WX_OR_QQ_VALID,
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


  export class UserValidateController {
    static async baseUserV2ValidateuserneworoldPost(input: BaseUserDefinition.ValidateUserNewOrOldInput):Promise<ApiResponse<BaseUserDefinition.ValidateUserNewOrOldOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.ValidateUserNewOrOldOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.ValidateUserNewOrOldOutput>>(
        BaseUserUrlConstant.BASE_USER_V2_VALIDATE_USER_NEW_OR_OLD,
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

    static async baseUserValidatebyemailPost(input: BaseUserDefinition.ValidateEmailInput):Promise<ApiResponse<BaseUserDefinition.ValidateUserNewOrOldOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.ValidateUserNewOrOldOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.ValidateUserNewOrOldOutput>>(
        BaseUserUrlConstant.BASE_USER_VALIDATE_BY_EMAIL,
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

    static async baseUserValidatediarymessagecodePost(input: BaseUserDefinition.ValidateMessageCodeInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_VALIDATE_DIARY_MESSAGE_CODE,
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

    static async baseUserValidatesmscodePost(input: BaseUserDefinition.ValidateSmsCodeInput):Promise<ApiResponse<BaseUserDefinition.ValidateSmsCodeOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.ValidateSmsCodeOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.ValidateSmsCodeOutput>>(
        BaseUserUrlConstant.BASE_USER_VALIDATE_SMS_CODE,
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

    static async baseUserValidatesmscodeonlyPost(input: BaseUserDefinition.ValidateSmsCodeInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_VALIDATE_SMS_CODE_ONLY,
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

    static async baseUserValidatesummarymessagecodePost(input: BaseUserDefinition.ValidateMessageCodeInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_VALIDATE_SUMMARY_MESSAGE_CODE,
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

    static async baseUserValidatetransfermessagecodePost(input: BaseUserDefinition.ValidateMessageCodeInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_VALIDATE_TRANSFER_MESSAGE_CODE,
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

    static async baseUserValidateuserneworoldPost(input: BaseUserDefinition.ValidateUserNewOrOldInput):Promise<ApiResponse<BaseUserDefinition.ValidateUserNewOrOldOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.ValidateUserNewOrOldOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.ValidateUserNewOrOldOutput>>(
        BaseUserUrlConstant.BASE_USER_VALIDATE_USER_NEW_OR_OLD,
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


  export class IntentController {
    static async baseUserV1IntentAddPost(input: BaseUserDefinition.AddIntentInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_V1_INTENT_ADD,
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
    static async baseUserClickMAppletPost(dto: BaseUserDefinition.UserAppManageClickInput, ip: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BaseUserUrlConstant.BASE_USER_CLICK_APPLET_URL,
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

    static async baseUserSaveMAppletMListPost(dto: BaseUserDefinition.UserAppletInput, ip: string, userId: number):Promise<void | null | undefined> {
      let res: void | null | undefined = await post<void>(
        BaseUserUrlConstant.BASE_USER_SAVE_APPLET_LIST_URL,
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


  export class UserTransferController {
    static async baseUserV1ExportPost(input: BaseUserDefinition.UserTransferCondition, userId: number):Promise<ApiResponse<BaseUserDefinition.UserTransferData> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserTransferData> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserTransferData>>(
        BaseUserUrlConstant.BASE_USER_V1_EXPORT,
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

    static async baseUserV1ImportPost(input: BaseUserDefinition.UserTransferData, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_V1_IMPORT,
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


  export class UserHouseStateController {
    static async baseUserV1HouseStateUpdatePost(input: BaseUserDefinition.UserHouseStateUpdateInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_V1_HOUSE_STATE_UPDATE,
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


  export class UserThirthController {
    static async baseUserGetqquserPost(channelType: string, input: BaseUserDefinition.QQWebLoginInput):Promise<ApiResponse<BaseUserDefinition.QQUserInfoOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.QQUserInfoOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.QQUserInfoOutput>>(
        BaseUserUrlConstant.BASE_USER_GET_QQUSER,
        {
        },
        {
        },
        {
            "channel_type": channelType,
        },
        input
      );

      return res;
    }

    static async baseUserGetwxuserPost(channelType: string, input: BaseUserDefinition.WxWebLoginInput):Promise<ApiResponse<BaseUserDefinition.WxUserInfoOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.WxUserInfoOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.WxUserInfoOutput>>(
        BaseUserUrlConstant.BASE_USER_GET_WX_USER,
        {
        },
        {
        },
        {
            "channel_type": channelType,
        },
        input
      );

      return res;
    }
  }


  export class UserVersionUpdateController {
    static async baseUserV1VersionupdateLogAddPost(input: BaseUserDefinition.VersionUpdateLogInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_V1_VERSION_UPDATE_LOG_ADD,
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

    static async baseUserVersionUUpdatePost(channelType: string, input: BaseUserDefinition.UpdateVersionInput, ip: string, channel?: string, userId?: number):Promise<ApiResponse<BaseUserDefinition.UserVersionUpdateOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserVersionUpdateOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserVersionUpdateOutput>>(
        BaseUserUrlConstant.BASE_USER_VERSION_UPDATE_URL,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "channel": channel,
            "user_id": userId
        },
        input
      );

      return res;
    }
  }


  export class UserGuidanceLogController {
    static async baseUserInsertuserguidancelogPost(ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_INSERTUSERGUIDANCELOG,
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
  }


  export class UserDeviceController {
    static async baseUserGetuserdevicePost(userId: number):Promise<ApiResponse<BaseUserDefinition.UserDeviceOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserDeviceOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserDeviceOutput>>(
        BaseUserUrlConstant.BASE_USER_GET_USER_DEVICE,
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
  }


  export class UserProuctController {
    static async baseUserV1OrderListPost(input: BaseUserDefinition.UserProductPageInput):Promise<RowResponse<Array<BaseUserDefinition.UserProductOrderLogOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseUserDefinition.UserProductOrderLogOutput>> | null | undefined = await post<RowResponse<Array<BaseUserDefinition.UserProductOrderLogOutput>>>(
        BaseUserUrlConstant.BASE_USER_V1_ORDER_LIST,
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

    static async baseUserV1ProductListPost(input: BaseUserDefinition.UserProductInput):Promise<RowResponse<Array<BaseUserDefinition.UserProductOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseUserDefinition.UserProductOutput>> | null | undefined = await post<RowResponse<Array<BaseUserDefinition.UserProductOutput>>>(
        BaseUserUrlConstant.BASE_USER_V1_PRODUCT_LIST,
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


  export class UserVipController {
    static async baseUserVipCheckuservipPost(channelType: string, userId: number):Promise<ApiResponse<BaseUserDefinition.CheckUserVipOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.CheckUserVipOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.CheckUserVipOutput>>(
        BaseUserUrlConstant.BASE_USER_VIP_CHECK_USER_VIP,
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

    static async baseUserVipCreatedvipidPost(input: BaseUserDefinition.UserVipIdInput):Promise<ApiResponse<BaseUserDefinition.UserVipIdCreateOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserVipIdCreateOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserVipIdCreateOutput>>(
        BaseUserUrlConstant.BASE_USER_VIP_CREATED_VIP_ID,
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

    static async baseUserVipGetuservipPost():Promise<ApiResponse<BaseUserDefinition.UserVipOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserVipOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserVipOutput>>(
        BaseUserUrlConstant.BASE_USER_VIP_GET_USER_VIP,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseUserVipGetvipidlistPost(input: BaseUserDefinition.UserVipIdListInput):Promise<ApiResponse<RowData<Array<BaseUserDefinition.UserVipIdOutput>>> | null | undefined> {
      let res: ApiResponse<RowData<Array<BaseUserDefinition.UserVipIdOutput>>> | null | undefined = await post<ApiResponse<RowData <Array<BaseUserDefinition.UserVipIdOutput>>>>(
        BaseUserUrlConstant.BASE_USER_VIP_GET_VIP_ID_LIST,
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


  export class MemberCenterController {
    static async baseUserMemberCenterPost(channelType: string, deviceType: string, input: BaseUserDefinition.MemberCenterInput, ip: string, userId: number):Promise<ApiResponse<BaseUserDefinition.MemberCenterOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.MemberCenterOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.MemberCenterOutput>>(
        BaseUserUrlConstant.BASE_USER_MEMBER_CENTER,
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

    static async baseUserMemberPrerogativePost(channelType: string, deviceType: string):Promise<ApiResponse<BaseUserDefinition.MemberPrerogativeOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.MemberPrerogativeOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.MemberPrerogativeOutput>>(
        BaseUserUrlConstant.BASE_USER_MEMBER_PREROGATIVE,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "device_type": deviceType
        },
      );

      return res;
    }
  }


  export class UserMsgListCheckController {
    static async baseUserAddusermsglistcheckPost(input: BaseUserDefinition.MsgListCheckInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_ADD_USER_MSG_LIST_CHECK,
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

    static async baseUserGetmsglistchecklistPost(input: BaseUserDefinition.UserMsgListCheckInput, userId: number):Promise<RowResponse<Array<BaseUserDefinition.GetMsgListCheckListUsingPOSTRsp>> | null | undefined> {
      let res: RowResponse<Array<BaseUserDefinition.GetMsgListCheckListUsingPOSTRsp>> | null | undefined = await post<RowResponse<Array<BaseUserDefinition.GetMsgListCheckListUsingPOSTRsp>>>(
        BaseUserUrlConstant.BASE_USER_GET_MSG_LIST_CHECK_LIST,
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


  export class GeneralProfileController {
    static async baseUserGeneralProfilePost(userId: number):Promise<ApiResponse<BaseUserDefinition.GeneralProfile> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.GeneralProfile> | null | undefined = await post<ApiResponse<BaseUserDefinition.GeneralProfile>>(
        BaseUserUrlConstant.BASE_USER_GENERAL_PROFILE,
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

    static async baseUserGeneralProfileSetPost(profile: BaseUserDefinition.GeneralProfile, userId: number):Promise<ApiResponse<BaseUserDefinition.GeneralProfile> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.GeneralProfile> | null | undefined = await post<ApiResponse<BaseUserDefinition.GeneralProfile>>(
        BaseUserUrlConstant.BASE_USER_GENERAL_PROFILE_SET,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        profile
      );

      return res;
    }
  }


  export class UserConfigPushController {
    static async baseUserSaveUOrUUpdateUUserUConfigUPushPost(input: BaseUserDefinition.SaveOrUpdateUserConfigPushInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_SAVE_OR_UPDATE_USER_CONFIG_PUSH_URL,
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

    static async baseUserUserUConfigUPushUByUTypePost(input: BaseUserDefinition.UserConfigPushInput, ip: string, userId: number):Promise<ApiResponse<BaseUserDefinition.UserConfigPushOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserConfigPushOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserConfigPushOutput>>(
        BaseUserUrlConstant.BASE_USER_USER_CONFIG_PUSH_BY_TYPE_URL,
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


  export class UserSettingController {
    static async baseUserGettimezonePost(userId: number):Promise<ApiResponse<BaseUserDefinition.UserTimeZone> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserTimeZone> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserTimeZone>>(
        BaseUserUrlConstant.BASE_USER_GET_TIME_ZONE,
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

    static async baseUserLogoutPost(input: BaseUserDefinition.LogoutInput, userId?: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BaseUserUrlConstant.BASE_USER_LOGOUT,
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

    static async baseUserSettimezonePost(input: BaseUserDefinition.UserSettingInput, ip: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BaseUserUrlConstant.BASE_USER_SET_TIME_ZONE,
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

    static async baseUserTimezonelistPost(input: BaseUserDefinition.PaginableRequest, userId: number):Promise<PaginableResponse<Array<BaseUserDefinition.UserTimeZone>> | null | undefined> {
      let res: PaginableResponse<Array<BaseUserDefinition.UserTimeZone>> | null | undefined = await post<PaginableResponse<Array<BaseUserDefinition.UserTimeZone>>>(
        BaseUserUrlConstant.BASE_USER_TIME_ZONE_LIST,
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

    static async baseUserV1LogoutpcPost():Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BaseUserUrlConstant.BASE_USER_V1_LOGOUT_PC,
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


  export class RedPackageLotteryController {
    static async baseUserV1RedpackageAddlotterycodePost(channelType: string, input: BaseUserDefinition.RedPackageLotteryInput, ip: string, userId: number):Promise<ApiResponse<BaseUserDefinition.RedPackageLotteryOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.RedPackageLotteryOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.RedPackageLotteryOutput>>(
        BaseUserUrlConstant.BASE_USER_V1_RED_PACKAGE_ADD_LOTTERY_CODE,
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

    static async baseUserV1RedpackageGetrecentlotteryPost(channelType: string, input: BaseUserDefinition.RedPackageLotteryInput, ip: string, userId: number):Promise<ApiResponse<BaseUserDefinition.RedPackageLotteryOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.RedPackageLotteryOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.RedPackageLotteryOutput>>(
        BaseUserUrlConstant.BASE_USER_V1_RED_PACKAGE_GET_RECENT_LOTTERY,
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

    static async baseUserV1RedpackageGetvalidlotteryPost(channelType: string, input: BaseUserDefinition.RedPackageLotteryInput, ip: string, userId: number):Promise<ApiResponse<BaseUserDefinition.RedPackageLotteryOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.RedPackageLotteryOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.RedPackageLotteryOutput>>(
        BaseUserUrlConstant.BASE_USER_V1_RED_PACKAGE_GET_VALID_LOTTERY,
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

    static async baseUserV1RedpackageLotterydetailPost(channelType: string, input: BaseUserDefinition.RedPackageLotteryIdInput, ip: string, userId: number):Promise<ApiResponse<BaseUserDefinition.RedPackageLotteryDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.RedPackageLotteryDetailOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.RedPackageLotteryDetailOutput>>(
        BaseUserUrlConstant.BASE_USER_V1_RED_PACKAGE_LOTTERY_DETAIL,
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

    static async baseUserV1RedpackageRecentlotterylistPost(channelType: string, input: BaseUserDefinition.RedPackageLotteryPageInput, ip: string, userId: number):Promise<RowResponse<Array<BaseUserDefinition.RedPackageLotteryOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseUserDefinition.RedPackageLotteryOutput>> | null | undefined = await post<RowResponse<Array<BaseUserDefinition.RedPackageLotteryOutput>>>(
        BaseUserUrlConstant.BASE_USER_V1_RED_PACKAGE_RECENT_LOTTERY_LIST,
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

    static async baseUserV1RedpackageRecentlotteryloglistPost(channelType: string, input: BaseUserDefinition.RedPackageLotteryIdInput, ip: string, userId: number):Promise<RowResponse<Array<BaseUserDefinition.RedPackageLotteryLogOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseUserDefinition.RedPackageLotteryLogOutput>> | null | undefined = await post<RowResponse<Array<BaseUserDefinition.RedPackageLotteryLogOutput>>>(
        BaseUserUrlConstant.BASE_USER_V1_RED_PACKAGE_RECENT_LOTTERY_LOG_LIST,
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

    static async baseUserV1RedpackageUserlotteryloglistPost(channelType: string, input: BaseUserDefinition.RedPackageLotteryInput, ip: string, userId: number):Promise<RowResponse<Array<BaseUserDefinition.RedPackageLotteryLogOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseUserDefinition.RedPackageLotteryLogOutput>> | null | undefined = await post<RowResponse<Array<BaseUserDefinition.RedPackageLotteryLogOutput>>>(
        BaseUserUrlConstant.BASE_USER_V1_RED_PACKAGE_USER_LOTTERY_LOG_LIST,
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

    static async baseUserV1RedpackageWxstatusPost(channelType: string, ip: string, userId: number):Promise<ApiResponse<BaseUserDefinition.WxBindStatusOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.WxBindStatusOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.WxBindStatusOutput>>(
        BaseUserUrlConstant.BASE_USER_V1_RED_PACKAGE_WX_STATUS,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
      );

      return res;
    }
  }


  export class MemberCenterControllerV2 {
    static async baseUserV2MemberApptipPost(channelType: string, deviceType: string):Promise<ApiResponse<BaseUserDefinition.MemberAppTipOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.MemberAppTipOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.MemberAppTipOutput>>(
        BaseUserUrlConstant.BASE_USER_V2_MEMBER_APP_TIP,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "device_type": deviceType
        },
      );

      return res;
    }

    static async baseUserV2MemberCenterPost(input: BaseUserDefinition.MemberCenterInput,):Promise<ApiResponse<BaseUserDefinition.MemberCenterOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.MemberCenterOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.MemberCenterOutput>>(
        BaseUserUrlConstant.BASE_USER_V2_MEMBER_CENTER,
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

    static async baseUserV2MemberPrerogativePost(channelType: string, deviceType: string):Promise<ApiResponse<BaseUserDefinition.MemberPrerogativeOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.MemberPrerogativeOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.MemberPrerogativeOutput>>(
        BaseUserUrlConstant.BASE_USER_V2_MEMBER_PREROGATIVE,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "device_type": deviceType
        },
      );

      return res;
    }
  }


  export class UserQqBindController {
    static async baseUserQqMBindPost(channelType: string, qqBindInput: BaseUserDefinition.QQbindInput):Promise<ApiResponse<BaseUserDefinition.QQBindOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.QQBindOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.QQBindOutput>>(
        BaseUserUrlConstant.BASE_USER_QQ_BIND_URL,
        {
        },
        {
        },
        {
            "channel_type": channelType,
        },
        qqBindInput
      );

      return res;
    }

    static async baseUserQqMUnbindPost():Promise<ApiResponse<BaseUserDefinition.QQUnbindOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.QQUnbindOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.QQUnbindOutput>>(
        BaseUserUrlConstant.BASE_USER_QQ_UNBIND_URL,
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


  export class UserVipLotteryController {
    static async baseUserVipGetlotteryPost(channelType: string, deviceType: string, input: BaseUserDefinition.IdRequest, ip: string, userId: number):Promise<ApiResponse<BaseUserDefinition.LotteryOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.LotteryOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.LotteryOutput>>(
        BaseUserUrlConstant.BASE_USER_VIP_GET_LOTTERY,
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

    static async baseUserVipGetlotterypopPost():Promise<ApiResponse<BaseUserDefinition.LotteryPopOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.LotteryPopOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.LotteryPopOutput>>(
        BaseUserUrlConstant.BASE_USER_VIP_GET_LOTTERY_POP,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseUserVipGettobeendlotteryPost(channelType: string, deviceType: string, ip: string, userId: number):Promise<ApiResponse<BaseUserDefinition.ToBeEndLotteryOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.ToBeEndLotteryOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.ToBeEndLotteryOutput>>(
        BaseUserUrlConstant.BASE_USER_VIP_GET_TOBE_END_LOTTERY,
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
      );

      return res;
    }
  }


  export class UserGoodDeedController {
    static async baseUserV1GooddeedAddgooddeedPost(channelType: string, deviceType: string, input: BaseUserDefinition.UserGoodDeedDto, ip: string, userId: number, version: string):Promise<ApiResponse<BaseUserDefinition.UserGoodDeedOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserGoodDeedOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserGoodDeedOutput>>(
        BaseUserUrlConstant.BASE_USER_V1_GOOD_DEED_ADD_GOOD_DEED,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "device_type": deviceType,
            "ip": ip,
            "user_id": userId,
            "version": version
        },
        input
      );

      return res;
    }

    static async baseUserV1GooddeedGooddeedlistPost(userId: number):Promise<RowResponse<Array<BaseUserDefinition.UserGoodDeedOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseUserDefinition.UserGoodDeedOutput>> | null | undefined = await post<RowResponse<Array<BaseUserDefinition.UserGoodDeedOutput>>>(
        BaseUserUrlConstant.BASE_USER_V1_GOOD_DEED_GOOD_DEED_LIST,
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

    static async baseUserV1GooddeedTemplatelistPost(userId: number):Promise<RowResponse<Array<BaseUserDefinition.UserGoodDeedDto>> | null | undefined> {
      let res: RowResponse<Array<BaseUserDefinition.UserGoodDeedDto>> | null | undefined = await post<RowResponse<Array<BaseUserDefinition.UserGoodDeedDto>>>(
        BaseUserUrlConstant.BASE_USER_V1_GOOD_DEED_TEMPLATELIST,
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
  }


  export class UserExportController {
    static async baseUserDataExportApplyaddPost(channelType: string, input: BaseUserDefinition.UserDataExportApplyAddInput, ip: string, userId: number):Promise<ApiResponse<BaseUserDefinition.UserDataExportApplyOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserDataExportApplyOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserDataExportApplyOutput>>(
        BaseUserUrlConstant.BASE_USER_DATA_EXPORT_APPLYADD,
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

    static async baseUserDataExportApplyupdatePost(input: BaseUserDefinition.UserDataExportApplyUpdateInput, userId: number):Promise<ApiResponse<BaseUserDefinition.UserDataExportApplyOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserDataExportApplyOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserDataExportApplyOutput>>(
        BaseUserUrlConstant.BASE_USER_DATA_EXPORT_APPLYUPDATE,
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

    static async baseUserDataExportButtonPost(channelType: string, userId: number):Promise<RowResponse<Array<BaseUserDefinition.UseableTypeButtonOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseUserDefinition.UseableTypeButtonOutput>> | null | undefined = await post<RowResponse<Array<BaseUserDefinition.UseableTypeButtonOutput>>>(
        BaseUserUrlConstant.BASE_USER_DATA_EXPORT_BUTTON,
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

    static async baseUserDataExportButtonU2U0Post(channelType: string, userId: number):Promise<RowResponse<Array<BaseUserDefinition.UseableTypeButtonOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseUserDefinition.UseableTypeButtonOutput>> | null | undefined = await post<RowResponse<Array<BaseUserDefinition.UseableTypeButtonOutput>>>(
        BaseUserUrlConstant.BASE_USER_DATA_EXPORT_BUTTON_2_0_URL,
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

    static async baseUserDataExportButtonU3U0Post(channelType: string, userId?: number):Promise<RowResponse<Array<BaseUserDefinition.UseableTypeButtonOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseUserDefinition.UseableTypeButtonOutput>> | null | undefined = await post<RowResponse<Array<BaseUserDefinition.UseableTypeButtonOutput>>>(
        BaseUserUrlConstant.BASE_USER_DATA_EXPORT_BUTTON_3_0_URL,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            // "user_id": userId
        },
      );

      return res;
    }

    static async baseUserDataExportGetPost(input: BaseUserDefinition.IdRequest, ip: string, userId: number):Promise<ApiResponse<BaseUserDefinition.UserDataExportApplyOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserDataExportApplyOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserDataExportApplyOutput>>(
        BaseUserUrlConstant.BASE_USER_DATA_EXPORT_GET,
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

    static async baseUserDataExportHistoryPost(channelType: string, userId?: number):Promise<RowResponse<Array<BaseUserDefinition.DataExportApplyOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseUserDefinition.DataExportApplyOutput>> | null | undefined = await post<RowResponse<Array<BaseUserDefinition.DataExportApplyOutput>>>(
        BaseUserUrlConstant.BASE_USER_DATA_EXPORT_HISTORY,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            // "user_id": userId
        },
      );

      return res;
    }
  }


  export class UserOauthController {
    static async baseUserOauthGettokenGet(ip: string, clientId?: string, code?: string, grantType?: string, redirectUri?: string):Promise<BaseUserDefinition.UserAuthGetTokenOutput | null | undefined> {
      let res: BaseUserDefinition.UserAuthGetTokenOutput | null | undefined = await get<BaseUserDefinition.UserAuthGetTokenOutput>(
        BaseUserUrlConstant.BASE_USER_OAUTH_GET_TOKEN,
        {
        },
        {
            "client_id": clientId,
            "code": code,
            "grant_type": grantType,
            "redirect_uri": redirectUri
        },
        {
            "ip": ip,
        },
      );

      return res;
    }

    static async baseUserOauthGettokenPost(ip: string, clientId?: string, code?: string, grantType?: string, redirectUri?: string):Promise<BaseUserDefinition.UserAuthGetTokenOutput | null | undefined> {
      let res: BaseUserDefinition.UserAuthGetTokenOutput | null | undefined = await post<BaseUserDefinition.UserAuthGetTokenOutput>(
        BaseUserUrlConstant.BASE_USER_OAUTH_GET_TOKEN,
        {
        },
        {
            "client_id": clientId,
            "code": code,
            "grant_type": grantType,
            "redirect_uri": redirectUri
        },
        {
            "ip": ip,
        },
      );

      return res;
    }

    static async baseUserOauthGettokenHead(ip: string, clientId?: string, code?: string, grantType?: string, redirectUri?: string):Promise<BaseUserDefinition.UserAuthGetTokenOutput | null | undefined> {
      let res: BaseUserDefinition.UserAuthGetTokenOutput | null | undefined = await head<BaseUserDefinition.UserAuthGetTokenOutput>(
        BaseUserUrlConstant.BASE_USER_OAUTH_GET_TOKEN,
        {
        },
        {
            "client_id": clientId,
            "code": code,
            "grant_type": grantType,
            "redirect_uri": redirectUri
        },
        {
            "ip": ip,
        },
      );

      return res;
    }

    static async baseUserOauthGettokenRemove(ip: string, clientId?: string, code?: string, grantType?: string, redirectUri?: string):Promise<BaseUserDefinition.UserAuthGetTokenOutput | null | undefined> {
      let res: BaseUserDefinition.UserAuthGetTokenOutput | null | undefined = await remove<BaseUserDefinition.UserAuthGetTokenOutput>(
        BaseUserUrlConstant.BASE_USER_OAUTH_GET_TOKEN,
        {
        },
        {
            "client_id": clientId,
            "code": code,
            "grant_type": grantType,
            "redirect_uri": redirectUri
        },
        {
            "ip": ip,
        },
      );

      return res;
    }

    static async baseUserOauthGettokenPut(ip: string, clientId?: string, code?: string, grantType?: string, redirectUri?: string):Promise<BaseUserDefinition.UserAuthGetTokenOutput | null | undefined> {
      let res: BaseUserDefinition.UserAuthGetTokenOutput | null | undefined = await put<BaseUserDefinition.UserAuthGetTokenOutput>(
        BaseUserUrlConstant.BASE_USER_OAUTH_GET_TOKEN,
        {
        },
        {
            "client_id": clientId,
            "code": code,
            "grant_type": grantType,
            "redirect_uri": redirectUri
        },
        {
            "ip": ip,
        },
      );

      return res;
    }

    static async baseUserOauthGettokenOptions(ip: string, clientId?: string, code?: string, grantType?: string, redirectUri?: string):Promise<BaseUserDefinition.UserAuthGetTokenOutput | null | undefined> {
      let res: BaseUserDefinition.UserAuthGetTokenOutput | null | undefined = await options<BaseUserDefinition.UserAuthGetTokenOutput>(
        BaseUserUrlConstant.BASE_USER_OAUTH_GET_TOKEN,
        {
        },
        {
            "client_id": clientId,
            "code": code,
            "grant_type": grantType,
            "redirect_uri": redirectUri
        },
        {
            "ip": ip,
        },
      );

      return res;
    }

    static async baseUserOauthGettokenPatch(ip: string, clientId?: string, code?: string, grantType?: string, redirectUri?: string):Promise<BaseUserDefinition.UserAuthGetTokenOutput | null | undefined> {
      let res: BaseUserDefinition.UserAuthGetTokenOutput | null | undefined = await patch<BaseUserDefinition.UserAuthGetTokenOutput>(
        BaseUserUrlConstant.BASE_USER_OAUTH_GET_TOKEN,
        {
        },
        {
            "client_id": clientId,
            "code": code,
            "grant_type": grantType,
            "redirect_uri": redirectUri
        },
        {
            "ip": ip,
        },
      );

      return res;
    }

    static async baseUserV1OauthGetqrcodePost(input: BaseUserDefinition.UserOauthGetQrCodeInput):Promise<ApiResponse<BaseUserDefinition.UserAuthGetQrCodeOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserAuthGetQrCodeOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserAuthGetQrCodeOutput>>(
        BaseUserUrlConstant.BASE_USER_V1_OAUTH_GET_QR_CODE,
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

    static async baseUserV1OauthQrcodeResultPost(input: BaseUserDefinition.UserOauthQrCodeResultInput):Promise<ApiResponse<BaseUserDefinition.UserAuthQrCodeResultOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserAuthQrCodeResultOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserAuthQrCodeResultOutput>>(
        BaseUserUrlConstant.BASE_USER_V1_OAUTH_QR_CODE_RESULT,
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

    static async baseUserV1OauthQrcodeScanPost(input: BaseUserDefinition.UserOauthQrCodeScanInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_V1_OAUTH_QR_CODE_SCAN,
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


  export class UserActivitiesController {
    static async baseUserV1ActivitiesGetPost(channelType: string, deviceType: string, ip: string, userId: number, version: string, channel?: string):Promise<ApiResponse<BaseUserDefinition.UserActivitiesOutput> | null | undefined> {
      let res: ApiResponse<BaseUserDefinition.UserActivitiesOutput> | null | undefined = await post<ApiResponse<BaseUserDefinition.UserActivitiesOutput>>(
        BaseUserUrlConstant.BASE_USER_V1_ACTIVITIES_GET,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "device_type": deviceType,
            "ip": ip,
            "user_id": userId,
            "version": version,
            "channel": channel
        },
      );

      return res;
    }

    static async baseUserV1ActivitiesLogAddPost(input: BaseUserDefinition.UserActivitiesLogInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseUserUrlConstant.BASE_USER_V1_ACTIVITIES_LOG_ADD,
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
}
