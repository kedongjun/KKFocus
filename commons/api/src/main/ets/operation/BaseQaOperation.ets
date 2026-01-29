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
import { BaseQaDefinition } from './../definition/BaseQaDefinition';
import { BaseQaUrlConstant } from './../constant/BaseQaUrlConstant';

export namespace BaseQaOperation {
  export class UserIntentionController {
    static async baseQaIntentionAdduserintentionadvicePost(input: BaseQaDefinition.AddUserIntentionAdviceInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseQaUrlConstant.BASE_QA_INTENTION_ADD_USER_INTENTION_ADVICE,
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


  export class HelpCenterControllerV2 {
    static async baseQaV2HelpcenterDetailPost(input: BaseQaDefinition.IdRequest):Promise<BaseQaDefinition.HelpCenterDataDetailOutput | null | undefined> {
      let res: BaseQaDefinition.HelpCenterDataDetailOutput | null | undefined = await post<BaseQaDefinition.HelpCenterDataDetailOutput>(
        BaseQaUrlConstant.BASE_QA_V2_HELP_CENTER_DETAIL,
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

    static async baseQaV2HelpcenterGetdatalistbysecondmoduleidPost(input: BaseQaDefinition.IdRequest):Promise<Array<BaseQaDefinition.HelpCenterDataOutput> | null | undefined> {
      let res: Array<BaseQaDefinition.HelpCenterDataOutput> | null | undefined = await post<Array<BaseQaDefinition.HelpCenterDataOutput>>(
        BaseQaUrlConstant.BASE_QA_V2_HELP_CENTER_GET_DATA_LIST_BY_SECOND_MODULE_ID,
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

    static async baseQaV2HelpcenterGethomePost():Promise<BaseQaDefinition.HelpCenterDataHomeOutput | null | undefined> {
      let res: BaseQaDefinition.HelpCenterDataHomeOutput | null | undefined = await post<BaseQaDefinition.HelpCenterDataHomeOutput>(
        BaseQaUrlConstant.BASE_QA_V2_HELP_CENTER_GET_HOME,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseQaV2HelpcenterGetnewuserdatalistbysecondmoduleidPost(input: BaseQaDefinition.IdRequest):Promise<BaseQaDefinition.HelpCenterAppletDetailOutput | null | undefined> {
      let res: BaseQaDefinition.HelpCenterAppletDetailOutput | null | undefined = await post<BaseQaDefinition.HelpCenterAppletDetailOutput>(
        BaseQaUrlConstant.BASE_QA_V2_HELP_CENTER_GET_NEW_USER_DATA_LIST_BY_SECOND_MODULE_ID,
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

    static async baseQaV2HelpcenterListbytypeidPost(input: BaseQaDefinition.IdRequest):Promise<Array<BaseQaDefinition.HelpCenterDataOutput> | null | undefined> {
      let res: Array<BaseQaDefinition.HelpCenterDataOutput> | null | undefined = await post<Array<BaseQaDefinition.HelpCenterDataOutput>>(
        BaseQaUrlConstant.BASE_QA_V2_HELP_CENTER_LIST_BY_TYPE_ID,
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

    static async baseQaV2HelpcenterSearchPost(input: BaseQaDefinition.KeywordRequest):Promise<Array<BaseQaDefinition.HelpCenterDataListOutput> | null | undefined> {
      let res: Array<BaseQaDefinition.HelpCenterDataListOutput> | null | undefined = await post<Array<BaseQaDefinition.HelpCenterDataListOutput>>(
        BaseQaUrlConstant.BASE_QA_V2_HELP_CENTER_SEARCH,
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
        BaseQaUrlConstant.CHECKALIVE,
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


  export class HelpCenterController {
    static async baseQaHelpcenterAddpicturecommentPost(input: BaseQaDefinition.HelpCenterCommentInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseQaUrlConstant.BASE_QA_HELP_CENTER_ADD_PICTURE_COMMENT,
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

    static async baseQaHelpcenterAddvideocommentPost(input: BaseQaDefinition.HelpCenterCommentInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseQaUrlConstant.BASE_QA_HELP_CENTER_ADD_VIDEO_COMMENT,
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

    static async baseQaHelpcenterGethelpcenternoticedetailPost(input: BaseQaDefinition.IdRequest):Promise<ApiResponse<BaseQaDefinition.HelpCenterNoticeOutput> | null | undefined> {
      let res: ApiResponse<BaseQaDefinition.HelpCenterNoticeOutput> | null | undefined = await post<ApiResponse<BaseQaDefinition.HelpCenterNoticeOutput>>(
        BaseQaUrlConstant.BASE_QA_HELP_CENTER_GET_HELP_CENTER_NOTICE_DETAIL,
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

    static async baseQaHelpcenterGethelpcenternoticelistPost():Promise<RowResponse<Array<BaseQaDefinition.HelpCenterNoticeOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseQaDefinition.HelpCenterNoticeOutput>> | null | undefined = await post<RowResponse<Array<BaseQaDefinition.HelpCenterNoticeOutput>>>(
        BaseQaUrlConstant.BASE_QA_HELP_CENTER_GET_HELP_CENTER_NOTICE_LIST,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseQaHelpcenterGethelpcenterpictureappletlistPost(input: BaseQaDefinition.IdRequest, userId: number):Promise<RowResponse<Array<BaseQaDefinition.HelpCenterPictureAppletOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseQaDefinition.HelpCenterPictureAppletOutput>> | null | undefined = await post<RowResponse<Array<BaseQaDefinition.HelpCenterPictureAppletOutput>>>(
        BaseQaUrlConstant.BASE_QA_HELP_CENTER_GET_HELP_CENTER_PICTURE_APPLET_LIST,
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

    static async baseQaHelpcenterGethelpcenterpicturelistPost():Promise<RowResponse<Array<BaseQaDefinition.HelpCenterPictureOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseQaDefinition.HelpCenterPictureOutput>> | null | undefined = await post<RowResponse<Array<BaseQaDefinition.HelpCenterPictureOutput>>>(
        BaseQaUrlConstant.BASE_QA_HELP_CENTER_GET_HELP_CENTER_PICTURE_LIST,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseQaHelpcenterGethelpcentervideodetailPost(input: BaseQaDefinition.IdRequest, userId?: number):Promise<ApiResponse<BaseQaDefinition.HelpCenterVideoOutput> | null | undefined> {
      let res: ApiResponse<BaseQaDefinition.HelpCenterVideoOutput> | null | undefined = await post<ApiResponse<BaseQaDefinition.HelpCenterVideoOutput>>(
        BaseQaUrlConstant.BASE_QA_HELP_CENTER_GET_HELP_CENTER_VIDEO_DETAIL,
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

    static async baseQaHelpcenterGethelpcentervideolistPost(input: BaseQaDefinition.HelpCenterVideoListInput, userId: number):Promise<PaginableResponse<Array<BaseQaDefinition.HelpCenterVideoOutput>> | null | undefined> {
      let res: PaginableResponse<Array<BaseQaDefinition.HelpCenterVideoOutput>> | null | undefined = await post<PaginableResponse<Array<BaseQaDefinition.HelpCenterVideoOutput>>>(
        BaseQaUrlConstant.BASE_QA_HELP_CENTER_GET_HELP_CENTER_VIDEO_LIST,
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

    static async baseQaHelpcenterGetuserlikehelpcentervideolistPost(input: BaseQaDefinition.HelpCenterVideoListInput, userId: number):Promise<PaginableResponse<Array<BaseQaDefinition.HelpCenterVideoOutput>> | null | undefined> {
      let res: PaginableResponse<Array<BaseQaDefinition.HelpCenterVideoOutput>> | null | undefined = await post<PaginableResponse<Array<BaseQaDefinition.HelpCenterVideoOutput>>>(
        BaseQaUrlConstant.BASE_QA_HELP_CENTER_GET_USER_LIKE_HELP_CENTER_VIDEO_LIST,
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

    static async baseQaHelpcenterLikeorunlikepicturePost(input: BaseQaDefinition.HelpCenterPictureAppletLikeInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseQaUrlConstant.BASE_QA_HELP_CENTER_LIKE_OR_UNLIKE_PICTURE,
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

    static async baseQaHelpcenterLikeorunlikevideoPost(input: BaseQaDefinition.HelpCenterVideoLikeInput, ip: string, userId: number):Promise<ApiResponse<BaseQaDefinition.HelpCenterVideoLikeOutput> | null | undefined> {
      let res: ApiResponse<BaseQaDefinition.HelpCenterVideoLikeOutput> | null | undefined = await post<ApiResponse<BaseQaDefinition.HelpCenterVideoLikeOutput>>(
        BaseQaUrlConstant.BASE_QA_HELP_CENTER_LIKE_OR_UNLIKE_VIDEO,
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


  export class UserAdviceController {
    static async baseQaAdviceAdduseradvicePost(channelType: string, input: BaseQaDefinition.AddUserAdviceInput, ip?: string, userId?: number):Promise<ApiResponse<BaseQaDefinition.AddUserAdviceOutput> | null | undefined> {
      let res: ApiResponse<BaseQaDefinition.AddUserAdviceOutput> | null | undefined = await post<ApiResponse<BaseQaDefinition.AddUserAdviceOutput>>(
        BaseQaUrlConstant.BASE_QA_ADVICE_ADD_USER_ADVICE,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            // "ip": ip,
            // "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseQaAdviceCleanuseradvicePost(channelType: string, input: BaseQaDefinition.AdviceTypeInput, ip?: string, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseQaUrlConstant.BASE_QA_ADVICE_CLEAN_USER_ADVICE,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            // "ip": ip,
            // "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseQaAdviceDeluseradvicePost(input: BaseQaDefinition.IdRequest, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseQaUrlConstant.BASE_QA_ADVICE_DEL_USER_ADVICE,
        {
        },
        {
        },
        {
            // "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseQaAdviceGetadvicechatlistPost(channelType: string, input: BaseQaDefinition.GetAdviceChatListInput, ip?: string, userId?: number):Promise<ApiResponse<BaseQaDefinition.AdviceChatListOutput> | null | undefined> {
      let res: ApiResponse<BaseQaDefinition.AdviceChatListOutput> | null | undefined = await post<ApiResponse<BaseQaDefinition.AdviceChatListOutput>>(
        BaseQaUrlConstant.BASE_QA_ADVICE_GET_ADVICE_CHAT_LIST,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            // "ip": ip,
            // "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseQaAdviceGethotmsgPost(channelType: string, input: BaseQaDefinition.GetHotMsgInput, userId?: number):Promise<ApiResponse<BaseQaDefinition.AdviceOutput> | null | undefined> {
      let res: ApiResponse<BaseQaDefinition.AdviceOutput> | null | undefined = await post<ApiResponse<BaseQaDefinition.AdviceOutput>>(
        BaseQaUrlConstant.BASE_QA_ADVICE_GET_HOT_MSG,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            // "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseQaAdviceGetlatestadvicereplylistPost(channelType: string, input: BaseQaDefinition.GetLatestAdviceReplyListInput, userId: number):Promise<ApiResponse<BaseQaDefinition.AdviceChatListOutput> | null | undefined> {
      let res: ApiResponse<BaseQaDefinition.AdviceChatListOutput> | null | undefined = await post<ApiResponse<BaseQaDefinition.AdviceChatListOutput>>(
        BaseQaUrlConstant.BASE_QA_ADVICE_GET_LATEST_ADVICE_REPLY_LIST,
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

    static async baseQaAdviceGetunreadcountPost(channelType: string, ip: string, userId: number):Promise<ApiResponse<BaseQaDefinition.CountOutput> | null | undefined> {
      let res: ApiResponse<BaseQaDefinition.CountOutput> | null | undefined = await post<ApiResponse<BaseQaDefinition.CountOutput>>(
        BaseQaUrlConstant.BASE_QA_ADVICE_GET_UNREAD_COUNT,
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

    static async baseQaAdviceGetuseradviceconfigPost(userId?: number):Promise<ApiResponse<BaseQaDefinition.UserAdviceConfigOutput> | null | undefined> {
      let res: ApiResponse<BaseQaDefinition.UserAdviceConfigOutput> | null | undefined = await post<ApiResponse<BaseQaDefinition.UserAdviceConfigOutput>>(
        BaseQaUrlConstant.BASE_QA_ADVICE_GET_USER_ADVICE_CONFIG,
        {
        },
        {
        },
        {
            // "user_id": userId
        },
      );

      return res;
    }

    static async baseQaAdviceUpdateisjoinvotePost(input: BaseQaDefinition.UpdateIsJoinVoteInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseQaUrlConstant.BASE_QA_ADVICE_UPDATE_IS_JOIN_VOTE,
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
