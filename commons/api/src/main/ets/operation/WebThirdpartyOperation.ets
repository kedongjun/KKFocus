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
import { WebThirdpartyDefinition } from './../definition/WebThirdpartyDefinition';
import { WebThirdpartyUrlConstant } from './../constant/WebThirdpartyUrlConstant';

export namespace WebThirdpartyOperation {
  export class WebThirdPartyForLoginUserController {
    static async webThirdpartyV2LoggedinSendsmsmessagePost(input: WebThirdpartyDefinition.SendCodeInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        WebThirdpartyUrlConstant.WEB_THIRDPARTY_V2_LOGGED_IN_SEND_SMS_MESSAGE,
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


  export class WebThirdPartyController {
    static async webThirdpartySendemailcodePost(input: WebThirdpartyDefinition.WebSendEmailCodeInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        WebThirdpartyUrlConstant.WEB_THIRDPARTY_SEND_EMAIL_CODE,
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

    static async webThirdpartySendsmsmessagePost(sendSmsMessageInput: WebThirdpartyDefinition.SendSmsMessageInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        WebThirdpartyUrlConstant.WEB_THIRDPARTY_SEND_SMS_MESSAGE,
        {
        },
        {
        },
        {
        },
        sendSmsMessageInput
      );

      return res;
    }

    static async webThirdpartySendvoicemessagePost(channelType: string, ip: string, sendVoiceMessageInput: WebThirdpartyDefinition.SendVoiceMessageInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        WebThirdpartyUrlConstant.WEB_THIRDPARTY_SEND_VOICE_MESSAGE,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
        },
        sendVoiceMessageInput
      );

      return res;
    }

    static async webThirdpartyV1ResetSendemailcodePost(channelType: string, input: WebThirdpartyDefinition.WebSendEmailCodeInput, ip: string):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        WebThirdpartyUrlConstant.WEB_THIRDPARTY_V1_RESET_SEND_EMAIL_CODE,
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


  export class CheckAliveController {
    static async checkaliveGet():Promise<number | null | undefined> {
      let res: number | null | undefined = await get<number>(
        WebThirdpartyUrlConstant.CHECKALIVE,
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
