import { get, post, put, remove, options, head, patch ,CustomEventSource} from 'utils';
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
import { BaseChatDefinition } from './../definition/BaseChatDefinition';
import { BaseChatUrlConstant } from './../constant/BaseChatUrlConstant';

export namespace BaseChatOperation {
  export class DrawController {
    static async baseChatV1DrawPost(input: object, ip: string, userId: number):Promise<object | null | undefined> {
      let res: object | null | undefined = await post<object>(
        BaseChatUrlConstant.BASE_CHAT_V1_DRAW,
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

    static async baseChatV1DrawHistoryPost(input: BaseChatDefinition.PaginableRequest, ip: string, userId: number):Promise<PaginableResponse<Array<BaseChatDefinition.UserImageOutput>> | null | undefined> {
      let res: PaginableResponse<Array<BaseChatDefinition.UserImageOutput>> | null | undefined = await post<PaginableResponse<Array<BaseChatDefinition.UserImageOutput>>>(
        BaseChatUrlConstant.BASE_CHAT_V1_DRAW_HISTORY,
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


  export class UseCountController {
    static async baseChatV1UseCountOpenaitipPost():Promise<ApiResponse<BaseChatDefinition.UserCountTipOutput> | null | undefined> {
      let res: ApiResponse<BaseChatDefinition.UserCountTipOutput> | null | undefined = await post<ApiResponse<BaseChatDefinition.UserCountTipOutput>>(
        BaseChatUrlConstant.BASE_CHAT_V1_USE_COUNT_OPENAI_TIP,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseChatV1UseCountXiaoxutipPost(userId: number):Promise<ApiResponse<BaseChatDefinition.UserCountTipOutput> | null | undefined> {
      let res: ApiResponse<BaseChatDefinition.UserCountTipOutput> | null | undefined = await post<ApiResponse<BaseChatDefinition.UserCountTipOutput>>(
        BaseChatUrlConstant.BASE_CHAT_V1_USE_COUNT_XIAOXU_TIP,
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


  export class SyncMessageController {
    static async baseChatV1MessageSyncPost(dto: BaseChatDefinition.SyncDataRequest, userId: number):Promise<SyncRowResponse<Array<BaseChatDefinition.MessageOutput>> | null | undefined> {
      let res: SyncRowResponse<Array<BaseChatDefinition.MessageOutput>> | null | undefined = await post<SyncRowResponse<Array<BaseChatDefinition.MessageOutput>>>(
        BaseChatUrlConstant.BASE_CHAT_V1_MESSAGE_SYNC,
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


  export class MessageController {
    static async baseChatV1MessageDeletePost(input: BaseChatDefinition.AutoIdInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseChatUrlConstant.BASE_CHAT_V1_MESSAGE_DELETE,
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

    static async baseChatV1MessageDetailPost(input: BaseChatDefinition.AutoIdInput, userId: number):Promise<ApiResponse<BaseChatDefinition.MessageOutput> | null | undefined> {
      let res: ApiResponse<BaseChatDefinition.MessageOutput> | null | undefined = await post<ApiResponse<BaseChatDefinition.MessageOutput>>(
        BaseChatUrlConstant.BASE_CHAT_V1_MESSAGE_DETAIL,
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

    static async baseChatV1MessageListPost(input: BaseChatDefinition.MessageListInput):Promise<ApiResponse<BaseChatDefinition.MessageListOutput> | null | undefined> {
      let res: ApiResponse<BaseChatDefinition.MessageListOutput> | null | undefined = await post<ApiResponse<BaseChatDefinition.MessageListOutput>>(
        BaseChatUrlConstant.BASE_CHAT_V1_MESSAGE_LIST,
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

    static async baseChatV1MessageParseintentionPost(input: BaseChatDefinition.IntentionInput):Promise<RowResponse<object> | null | undefined> {
        let res: RowResponse<RowData<BaseChatDefinition.ParseIntentionOutPut[]>> | null | undefined = await post<RowResponse<RowData<BaseChatDefinition.ParseIntentionOutPut[]>>>(
        BaseChatUrlConstant.BASE_CHAT_V1_MESSAGE_PARSE_INTENTION,
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

    static async baseChatV1MessagePolishPost(deviceType: string, input: BaseChatDefinition.PolishInput, ip: string, userId: number):Promise<ApiResponse<BaseChatDefinition.PolishOutput> | null | undefined> {
      let res: ApiResponse<BaseChatDefinition.PolishOutput> | null | undefined = await post<ApiResponse<BaseChatDefinition.PolishOutput>>(
        BaseChatUrlConstant.BASE_CHAT_V1_MESSAGE_POLISH,
        {
        },
        {
        },
        {
            "device_type": deviceType,
            "ip": ip,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseChatV1MessageUpdatexiaoxumessagePost(input: BaseChatDefinition.UpdateXiaoxuMessageInput):Promise<ApiResponse<BaseChatDefinition.MessageOutput> | null | undefined> {
      let res: ApiResponse<BaseChatDefinition.MessageOutput> | null | undefined = await post<ApiResponse<BaseChatDefinition.MessageOutput>>(
        BaseChatUrlConstant.BASE_CHAT_V1_MESSAGE_UPDATE_XIAOXU_MESSAGE,
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

    static baseChatV2MessageQuestion(input: BaseChatDefinition.MessageQuestionInput) {
      return new CustomEventSource(BaseChatUrlConstant.BASE_CHAT_V2_MESSAGE_QUESTION, {
        body: JSON.stringify(input)
      })
    }


  }


  export class CheckAliveController {
    static async checkaliveGet():Promise<number | null | undefined> {
      let res: number | null | undefined = await get<number>(
        BaseChatUrlConstant.CHECKALIVE,
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
