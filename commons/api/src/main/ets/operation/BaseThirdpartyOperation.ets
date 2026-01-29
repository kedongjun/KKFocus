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
import { BaseThirdpartyDefinition } from './../definition/BaseThirdpartyDefinition';
import { BaseThirdpartyUrlConstant } from './../constant/BaseThirdpartyUrlConstant';

export namespace BaseThirdpartyOperation {
  export class ThirdPartyShortUrlController {
    static async baseThirdpartyShorturlPost(shortUrl: BaseThirdpartyDefinition.ShortUrlInput, userId?: number):Promise<ApiResponse<BaseThirdpartyDefinition.ShortUrlOutput> | null | undefined> {
      let res: ApiResponse<BaseThirdpartyDefinition.ShortUrlOutput> | null | undefined = await post<ApiResponse<BaseThirdpartyDefinition.ShortUrlOutput>>(
        BaseThirdpartyUrlConstant.BASE_THIRDPARTY_SHORTURL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        shortUrl
      );

      return res;
    }

    static async baseThirdpartyUrlKeyGet(key: string):Promise<void | null | undefined> {
      let res: void | null | undefined = await get<void>(
        BaseThirdpartyUrlConstant.BASE_THIRDPARTY_URL__KEY,
        {
            "key": key
        },
        {
        },
        {
        },
      );

      return res;
    }
  }


  export class ThirdPartyVoiceRemindController {
    static async baseThirdpartyVoiceremindPost(voiceRemindInput: BaseThirdpartyDefinition.VoiceRemindInput):Promise<ApiResponse<BaseThirdpartyDefinition.VoiceRemindOutput> | null | undefined> {
      let res: ApiResponse<BaseThirdpartyDefinition.VoiceRemindOutput> | null | undefined = await post<ApiResponse<BaseThirdpartyDefinition.VoiceRemindOutput>>(
        BaseThirdpartyUrlConstant.BASE_THIRDPARTY_VOICE_REMIND,
        {
        },
        {
        },
        {
        },
        voiceRemindInput
      );

      return res;
    }
  }


  export class ThirdPartySendSmsMessageController {
    static async baseThirdpartySendsmsmessagePost(channelType: string, sendSmsMessageInput: BaseThirdpartyDefinition.SendSmsMessageInput, ip?: string):Promise<ApiResponse<BaseThirdpartyDefinition.SendSmsMessageOutput> | null | undefined> {
      let res: ApiResponse<BaseThirdpartyDefinition.SendSmsMessageOutput> | null | undefined = await post<ApiResponse<BaseThirdpartyDefinition.SendSmsMessageOutput>>(
        BaseThirdpartyUrlConstant.BASE_THIRDPARTY_SEND_SMS_MESSAGE,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip
        },
        sendSmsMessageInput
      );

      return res;
    }
  }


  export class ThirdPartyActivitePushRemindController {
    static async baseThirdpartyActivitepushdirectremindPost(input: BaseThirdpartyDefinition.DeviceInfoInput, channelType?: string, deviceModel?: string, deviceTag?: string, userId?: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BaseThirdpartyUrlConstant.BASE_THIRDPARTY_ACTIVITE_PUSH_DIRECT_REMIND,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "device_model": deviceModel,
            "device_tag": deviceTag,
            "user_id": userId
        },
        input
      );

      return res;
    }
  }


  export class ThirdPartySmsRemindController {
    static async baseThirdpartySmsremindPost(smsRemindInput: BaseThirdpartyDefinition.SmsRemindInput):Promise<ApiResponse<BaseThirdpartyDefinition.SmsRemindOutput> | null | undefined> {
      let res: ApiResponse<BaseThirdpartyDefinition.SmsRemindOutput> | null | undefined = await post<ApiResponse<BaseThirdpartyDefinition.SmsRemindOutput>>(
        BaseThirdpartyUrlConstant.BASE_THIRDPARTY_SMS_REMIND,
        {
        },
        {
        },
        {
        },
        smsRemindInput
      );

      return res;
    }
  }


  export class CheckAliveController {
    static async checkaliveGet():Promise<number | null | undefined> {
      let res: number | null | undefined = await get<number>(
        BaseThirdpartyUrlConstant.CHECKALIVE,
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


  export class ThirdPartyJgInfoController {
    static async baseThirdpartyInsertJgRegisterPost(ip: string, jpushRegisterInfoInput: BaseThirdpartyDefinition.JpushRegisterInfoInput, userId?: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BaseThirdpartyUrlConstant.BASE_THIRDPARTY_INSERT_JG_REGISTER,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        jpushRegisterInfoInput
      );

      return res;
    }
  }


  export class ThirdPartyWxRemindController {
    static async baseThirdpartyWxremindPost(wxRemindInput: BaseThirdpartyDefinition.WxRemindInput):Promise<ApiResponse<BaseThirdpartyDefinition.WxRemindOutput> | null | undefined> {
      let res: ApiResponse<BaseThirdpartyDefinition.WxRemindOutput> | null | undefined = await post<ApiResponse<BaseThirdpartyDefinition.WxRemindOutput>>(
        BaseThirdpartyUrlConstant.BASE_THIRDPARTY_WX_REMIND,
        {
        },
        {
        },
        {
        },
        wxRemindInput
      );

      return res;
    }

    static async baseThirdpartyWxremindmonitorPost():Promise<ApiResponse<BaseThirdpartyDefinition.WxRemindOutput> | null | undefined> {
      let res: ApiResponse<BaseThirdpartyDefinition.WxRemindOutput> | null | undefined = await post<ApiResponse<BaseThirdpartyDefinition.WxRemindOutput>>(
        BaseThirdpartyUrlConstant.BASE_THIRDPARTY_WX_REMIND_MONITOR,
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


  export class ThirdPartySendVoiceMessageController {
    static async baseThirdpartySendvoicemessagePost(channelType: string, ip: string, sendVoiceMessageInput: BaseThirdpartyDefinition.SendVoiceMessageInput):Promise<ApiResponse<BaseThirdpartyDefinition.SendVoiceMessageOutput> | null | undefined> {
      let res: ApiResponse<BaseThirdpartyDefinition.SendVoiceMessageOutput> | null | undefined = await post<ApiResponse<BaseThirdpartyDefinition.SendVoiceMessageOutput>>(
        BaseThirdpartyUrlConstant.BASE_THIRDPARTY_SEND_VOICE_MESSAGE,
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
  }


  export class ThirdPartyPushRemindController {
    static async baseThirdpartyPushdirectremindPost(content?: string, devicemodelinfoActivetime?: string, devicemodelinfoChanneltype?: string, devicemodelinfoDevicemodel?: string, devicemodelinfoDevicetag?: string, devicemodelinfoDevicetype?: string, devicemodelinfoDirectpushchannelbydevicemodel?: string, devicemodelinfoDirectpushsupplier?: string, devicemodelinfoOsversion?: string, devicemodelinfoPushkey?: string, devicemodelinfoSessiontag?: string, devicemodelinfoSupportpush?: boolean, devicemodelinfoVersion?: string, extendData?: string, offset?: number, pushChannel?: string, pushCode?: string, pushMode?: string, pushTime?: string, pushType?: string, recordId?: number, ruleId?: number, section?: number, soundFile?: string, taskId?: number, title?: string, todoTime?: string, userId?: number):Promise<ApiResponse<BaseThirdpartyDefinition.PushRemindOutput> | null | undefined> {
      let res: ApiResponse<BaseThirdpartyDefinition.PushRemindOutput> | null | undefined = await post<ApiResponse<BaseThirdpartyDefinition.PushRemindOutput>>(
        BaseThirdpartyUrlConstant.BASE_THIRDPARTY_PUSH_DIRECT_REMIND,
        {
        },
        {
            "content": content,
            "deviceModelInfo.activeTime": devicemodelinfoActivetime,
            "deviceModelInfo.channelType": devicemodelinfoChanneltype,
            "deviceModelInfo.deviceModel": devicemodelinfoDevicemodel,
            "deviceModelInfo.deviceTag": devicemodelinfoDevicetag,
            "deviceModelInfo.deviceType": devicemodelinfoDevicetype,
            "deviceModelInfo.directPushChannelByDeviceModel": devicemodelinfoDirectpushchannelbydevicemodel,
            "deviceModelInfo.directPushSupplier": devicemodelinfoDirectpushsupplier,
            "deviceModelInfo.osVersion": devicemodelinfoOsversion,
            "deviceModelInfo.pushKey": devicemodelinfoPushkey,
            "deviceModelInfo.sessionTag": devicemodelinfoSessiontag,
            "deviceModelInfo.supportPush": devicemodelinfoSupportpush,
            "deviceModelInfo.version": devicemodelinfoVersion,
            "extendData": extendData,
            "offset": offset,
            "pushChannel": pushChannel,
            "pushCode": pushCode,
            "pushMode": pushMode,
            "pushTime": pushTime,
            "pushType": pushType,
            "recordId": recordId,
            "ruleId": ruleId,
            "section": section,
            "soundFile": soundFile,
            "taskId": taskId,
            "title": title,
            "todoTime": todoTime,
            "userId": userId
        },
        {
        },
      );

      return res;
    }

    static async baseThirdpartyPushremindPost(pushRemindInput: BaseThirdpartyDefinition.PushRemindInput):Promise<ApiResponse<BaseThirdpartyDefinition.PushRemindOutput> | null | undefined> {
      let res: ApiResponse<BaseThirdpartyDefinition.PushRemindOutput> | null | undefined = await post<ApiResponse<BaseThirdpartyDefinition.PushRemindOutput>>(
        BaseThirdpartyUrlConstant.BASE_THIRDPARTY_PUSH_REMIND,
        {
        },
        {
        },
        {
        },
        pushRemindInput
      );

      return res;
    }
  }


  export class ThirdPartyBaiduController {
    static async baseThirdpartyV1BaiduGetocrtimesPost(ip?: string, userId?: number):Promise<ApiResponse<BaseThirdpartyDefinition.OcrTimesOutput> | null | undefined> {
      let res: ApiResponse<BaseThirdpartyDefinition.OcrTimesOutput> | null | undefined = await post<ApiResponse<BaseThirdpartyDefinition.OcrTimesOutput>>(
        BaseThirdpartyUrlConstant.BASE_THIRDPARTY_V1_BAIDU_GET_OCR_TIMES,
        {
        },
        {
        },
        {
            // "ip": ip,
            // "user_id": userId
        },
      );

      return res;
    }

    static async baseThirdpartyV1BaiduOcrPost(input: BaseThirdpartyDefinition.OcrInput, ip?: string, userId?: number):Promise<ApiResponse<BaseThirdpartyDefinition.OcrOutput> | null | undefined> {
      let res: ApiResponse<BaseThirdpartyDefinition.OcrOutput> | null | undefined = await post<ApiResponse<BaseThirdpartyDefinition.OcrOutput>>(
        BaseThirdpartyUrlConstant.BASE_THIRDPARTY_V1_BAIDU_OCR,
        {
        },
        {
        },
        {
            // "ip": ip,
            // "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseThirdpartyV1BaiduSpeechrecGetaccesstokenPost(input: BaseThirdpartyDefinition.SpeechRecAuthInput, ip: string, userId: number):Promise<ApiResponse<BaseThirdpartyDefinition.AccessTokenOutput> | null | undefined> {
      let res: ApiResponse<BaseThirdpartyDefinition.AccessTokenOutput> | null | undefined = await post<ApiResponse<BaseThirdpartyDefinition.AccessTokenOutput>>(
        BaseThirdpartyUrlConstant.BASE_THIRDPARTY_V1_BAIDU_SPEECH_REC_GET_ACCESS_TOKEN,
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


  export class ThirdPartySendEmailMessageController {
    static async baseThirdpartySendemailcodePost(channelType: string, input: BaseThirdpartyDefinition.SendEmailCodeInput, ip: string):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BaseThirdpartyUrlConstant.BASE_THIRDPARTY_SEND_EMAIL_CODE,
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

    static async baseThirdpartySendexportdataPost(channelType: string, input: BaseThirdpartyDefinition.SendEmailExportDataInput):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BaseThirdpartyUrlConstant.BASE_THIRDPARTY_SENDEXPORTDATA,
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
}
