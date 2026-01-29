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
import { BaseForumDefinition } from './../definition/BaseForumDefinition';
import { BaseForumUrlConstant } from './../constant/BaseForumUrlConstant';

export namespace BaseForumOperation {
  export class DiUserFollowController {
    static async baseForumDiV1UserFanslistPost(input: BaseForumDefinition.ListOtherUserInput, ip: string, userId: number):Promise<PaginableResponse<Array<BaseForumDefinition.DiUserFansOutput>> | null | undefined> {
      let res: PaginableResponse<Array<BaseForumDefinition.DiUserFansOutput>> | null | undefined = await post<PaginableResponse<Array<BaseForumDefinition.DiUserFansOutput>>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_USER_FANS_LIST,
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

    static async baseForumDiV1UserFollowPost(input: BaseForumDefinition.UserFollowUpdateInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_USER_FOLLOW,
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

    static async baseForumDiV1UserFollowlistPost(input: BaseForumDefinition.ListOtherUserInput, ip: string, userId: number):Promise<PaginableResponse<Array<BaseForumDefinition.DiUserFollowOutput>> | null | undefined> {
      let res: PaginableResponse<Array<BaseForumDefinition.DiUserFollowOutput>> | null | undefined = await post<PaginableResponse<Array<BaseForumDefinition.DiUserFollowOutput>>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_USER_FOLLOW_LIST,
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

    static async baseForumDiV1UserInfoPost(input: BaseForumDefinition.UserFollowInput, userId: number):Promise<ApiResponse<BaseForumDefinition.DiPostUserOutput> | null | undefined> {
      let res: ApiResponse<BaseForumDefinition.DiPostUserOutput> | null | undefined = await post<ApiResponse<BaseForumDefinition.DiPostUserOutput>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_USER_INFO,
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

    static async baseForumDiV1UserRemovefansPost(input: BaseForumDefinition.FansUserIdInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_USER_REMOVE_FANS,
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


  export class PostController {
    static async baseForumV1AddpostPost(input: BaseForumDefinition.AddPostInput, ip: string, userId: number):Promise<ApiResponse<BaseForumDefinition.PostOutput> | null | undefined> {
      let res: ApiResponse<BaseForumDefinition.PostOutput> | null | undefined = await post<ApiResponse<BaseForumDefinition.PostOutput>>(
        BaseForumUrlConstant.BASE_FORUM_V1_ADD_POST,
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

    static async baseForumV1DelpostPost(input: BaseForumDefinition.DelPostInput, userId: number):Promise<ApiResponse<void> | null | undefined> {
      let res: ApiResponse<void> | null | undefined = await post<ApiResponse<void>>(
        BaseForumUrlConstant.BASE_FORUM_V1_DEL_POST,
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

    static async baseForumV1DelpostbyuserPost(userId: number):Promise<ApiResponse<void> | null | undefined> {
      let res: ApiResponse<void> | null | undefined = await post<ApiResponse<void>>(
        BaseForumUrlConstant.BASE_FORUM_V1_DEL_POST_BY_USER,
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

    static async baseForumV1GetpostPost(input: BaseForumDefinition.GetPostInput, ip: string, userId: number):Promise<ApiResponse<BaseForumDefinition.PostOutput> | null | undefined> {
      let res: ApiResponse<BaseForumDefinition.PostOutput> | null | undefined = await post<ApiResponse<BaseForumDefinition.PostOutput>>(
        BaseForumUrlConstant.BASE_FORUM_V1_GET_POST,
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

    static async baseForumV1GetpostsimpleinfoPost(input: BaseForumDefinition.GetPostInput):Promise<ApiResponse<BaseForumDefinition.PostSimpleInfoOutput> | null | undefined> {
      let res: ApiResponse<BaseForumDefinition.PostSimpleInfoOutput> | null | undefined = await post<ApiResponse<BaseForumDefinition.PostSimpleInfoOutput>>(
        BaseForumUrlConstant.BASE_FORUM_V1_GET_POST_SIMPLE_INFO,
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

    static async baseForumV1ListpostbyuserPost(input: BaseForumDefinition.ListPostByUserInput, userId: number):Promise<ApiResponse<Page<BaseForumDefinition.PostOutput>> | null | undefined> {
      let res: ApiResponse<Page<BaseForumDefinition.PostOutput>> | null | undefined = await post<ApiResponse<Page<BaseForumDefinition.PostOutput>>>(
        BaseForumUrlConstant.BASE_FORUM_V1_LIST_POST_BY_USER,
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

    static async baseForumV1QueryhomepostPost(userId: number):Promise<RowResponse<Array<BaseForumDefinition.PostOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseForumDefinition.PostOutput>> | null | undefined = await post<RowResponse<Array<BaseForumDefinition.PostOutput>>>(
        BaseForumUrlConstant.BASE_FORUM_V1_QUERY_HOME_POST,
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

    static async baseForumV1QuerypostbytypePost(input: BaseForumDefinition.PostQueryByTypeInput, userId: number):Promise<ApiResponse<Page<BaseForumDefinition.PostOutput>> | null | undefined> {
      let res: ApiResponse<Page<BaseForumDefinition.PostOutput>> | null | undefined = await post<ApiResponse<Page<BaseForumDefinition.PostOutput>>>(
        BaseForumUrlConstant.BASE_FORUM_V1_QUERY_POST_BY_TYPE,
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


  export class MessageController {
    static async baseForumV1GetmessagePost(input: BaseForumDefinition.GetMessageInput, userId: number):Promise<ApiResponse<Page<BaseForumDefinition.MessageOutput>> | null | undefined> {
      let res: ApiResponse<Page<BaseForumDefinition.MessageOutput>> | null | undefined = await post<ApiResponse<Page<BaseForumDefinition.MessageOutput>>>(
        BaseForumUrlConstant.BASE_FORUM_V1_GET_MESSAGE,
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

    static async baseForumV1GetunreadmessagecountPost(userId: number):Promise<ApiResponse<BaseForumDefinition.MessageCountOutput> | null | undefined> {
      let res: ApiResponse<BaseForumDefinition.MessageCountOutput> | null | undefined = await post<ApiResponse<BaseForumDefinition.MessageCountOutput>>(
        BaseForumUrlConstant.BASE_FORUM_V1_GET_UNREAD_MESSAGE_COUNT,
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

    static async baseForumV1ReadallmessagePost(userId: number):Promise<ApiResponse<void> | null | undefined> {
      let res: ApiResponse<void> | null | undefined = await post<ApiResponse<void>>(
        BaseForumUrlConstant.BASE_FORUM_V1_READ_ALL_MESSAGE,
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


  export class CheckAliveController {
    static async checkaliveGet():Promise<number | null | undefined> {
      let res: number | null | undefined = await get<number>(
        BaseForumUrlConstant.CHECKALIVE,
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


  export class NewTrailerController {
    static async baseForumV1NewtrailerDislikePost(input: BaseForumDefinition.NewTrailerInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseForumUrlConstant.BASE_FORUM_V1_NEW_TRAILER_DISLIKE,
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

    static async baseForumV1NewtrailerInfoPost(input: BaseForumDefinition.NewTrailerInput, userId: number):Promise<ApiResponse<BaseForumDefinition.NewTrailerInfoOutput> | null | undefined> {
      let res: ApiResponse<BaseForumDefinition.NewTrailerInfoOutput> | null | undefined = await post<ApiResponse<BaseForumDefinition.NewTrailerInfoOutput>>(
        BaseForumUrlConstant.BASE_FORUM_V1_NEW_TRAILER_INFO,
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

    static async baseForumV1NewtrailerLikePost(input: BaseForumDefinition.NewTrailerInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseForumUrlConstant.BASE_FORUM_V1_NEW_TRAILER_LIKE,
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

    static async baseForumV1NewtrailerSharePost(input: BaseForumDefinition.NewTrailerInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseForumUrlConstant.BASE_FORUM_V1_NEW_TRAILER_SHARE,
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


  export class ActivityController {
    static async baseForumV1AddactivityPost(input: BaseForumDefinition.AddActivityInput, ip: string, userId: number):Promise<ApiResponse<void> | null | undefined> {
      let res: ApiResponse<void> | null | undefined = await post<ApiResponse<void>>(
        BaseForumUrlConstant.BASE_FORUM_V1_ADD_ACTIVITY,
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

    static async baseForumV1GetactivityPost(input: BaseForumDefinition.GetActivityInput, userId: number):Promise<ApiResponse<Page<BaseForumDefinition.ActivityOutput>> | null | undefined> {
      let res: ApiResponse<Page<BaseForumDefinition.ActivityOutput>> | null | undefined = await post<ApiResponse<Page<BaseForumDefinition.ActivityOutput>>>(
        BaseForumUrlConstant.BASE_FORUM_V1_GET_ACTIVITY,
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


  export class DiLikeController {
    static async baseForumDiV1ClicklikePost(input: BaseForumDefinition.ClickLikeInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_CLICK_LIKE,
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


  export class DiActivityController {
    static async baseForumDiV1ActivityDeletePost(input: BaseForumDefinition.IdRequest, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_ACTIVITY_DELETE,
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

    static async baseForumDiV1ActivityDetailPost(input: BaseForumDefinition.IdRequest, userId: number):Promise<ApiResponse<BaseForumDefinition.DiLinkedOutput> | null | undefined> {
      let res: ApiResponse<BaseForumDefinition.DiLinkedOutput> | null | undefined = await post<ApiResponse<BaseForumDefinition.DiLinkedOutput>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_ACTIVITY_DETAIL,
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

    static async baseForumDiV1ActivityListPost(input: BaseForumDefinition.PageAndUserIdInput, userId: number):Promise<PaginableResponse<Array<BaseForumDefinition.DiLinkedOutput>> | null | undefined> {
      let res: PaginableResponse<Array<BaseForumDefinition.DiLinkedOutput>> | null | undefined = await post<PaginableResponse<Array<BaseForumDefinition.DiLinkedOutput>>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_ACTIVITY_LIST,
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


  export class LikeController {
    static async baseForumV1AddlikePost(input: BaseForumDefinition.AddLikeInput, ip: string, userId: number):Promise<ApiResponse<BaseForumDefinition.AddLikeOutput> | null | undefined> {
      let res: ApiResponse<BaseForumDefinition.AddLikeOutput> | null | undefined = await post<ApiResponse<BaseForumDefinition.AddLikeOutput>>(
        BaseForumUrlConstant.BASE_FORUM_V1_ADD_LIKE,
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

    static async baseForumV1DeletelikePost(input: BaseForumDefinition.DeleteLikeInput, userId: number):Promise<ApiResponse<void> | null | undefined> {
      let res: ApiResponse<void> | null | undefined = await post<ApiResponse<void>>(
        BaseForumUrlConstant.BASE_FORUM_V1_DELETE_LIKE,
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

    static async baseForumV1DeletelikebyidPost(input: BaseForumDefinition.DeleteLikeByIdInput, userId: number):Promise<ApiResponse<void> | null | undefined> {
      let res: ApiResponse<void> | null | undefined = await post<ApiResponse<void>>(
        BaseForumUrlConstant.BASE_FORUM_V1_DELETE_LIKE_BY_ID,
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


  export class DiTopicController {
    static async baseForumDiV1TopicDetailPost(input: BaseForumDefinition.IdRequest):Promise<ApiResponse<BaseForumDefinition.DetailUsingPOST_2Rsp> | null | undefined> {
      let res: ApiResponse<BaseForumDefinition.DetailUsingPOST_2Rsp> | null | undefined = await post<ApiResponse<BaseForumDefinition.DetailUsingPOST_2Rsp>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_TOPIC_DETAIL,
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

    static async baseForumDiV1TopicHotPost():Promise<RowResponse<BaseForumDefinition.DetailUsingPOSTRows> | null | undefined> {
      let res: RowResponse<BaseForumDefinition.DetailUsingPOSTRows> | null | undefined = await post<RowResponse<BaseForumDefinition.DetailUsingPOSTRows>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_TOPIC_HOT,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseForumDiV1TopicSearchPost(input: BaseForumDefinition.SearchInput, userId: number):Promise<RowResponse<Array<BaseForumDefinition.DetailUsingPOST_2Rsp>> | null | undefined> {
      let res: RowResponse<Array<BaseForumDefinition.DetailUsingPOST_2Rsp>> | null | undefined = await post<RowResponse<Array<BaseForumDefinition.DetailUsingPOST_2Rsp>>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_TOPIC_SEARCH,
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


  export class DiMessageController {
    static async baseForumDiV1CleanmessagecountPost(input: BaseForumDefinition.IdRequest, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_CLEAN_MESSAGE_COUNT,
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

    static async baseForumDiV1ClearallunreadPost(userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_CLEAR_ALL_UNREAD,
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

    static async baseForumDiV1GetmessagecountPost(ip: string, userId: number):Promise<ApiResponse<BaseForumDefinition.CountResponse> | null | undefined> {
      let res: ApiResponse<BaseForumDefinition.CountResponse> | null | undefined = await post<ApiResponse<BaseForumDefinition.CountResponse>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_GET_MESSAGE_COUNT,
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

    static async baseForumDiV1GetmessagegroupsPost(input: BaseForumDefinition.PaginableRequest, ip: string, userId: number):Promise<PaginableResponse<Array<BaseForumDefinition.DiMessageGroupOutput>> | null | undefined> {
      let res: PaginableResponse<Array<BaseForumDefinition.DiMessageGroupOutput>> | null | undefined = await post<PaginableResponse<Array<BaseForumDefinition.DiMessageGroupOutput>>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_GET_MESSAGE_GROUPS,
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


  export class CommentController {
    static async baseForumV1AddcommentPost(input: BaseForumDefinition.AddCommentInput, ip: string, userId: number):Promise<ApiResponse<BaseForumDefinition.AddCommentOutput> | null | undefined> {
      let res: ApiResponse<BaseForumDefinition.AddCommentOutput> | null | undefined = await post<ApiResponse<BaseForumDefinition.AddCommentOutput>>(
        BaseForumUrlConstant.BASE_FORUM_V1_ADD_COMMENT,
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

    static async baseForumV1DeletecommentPost(input: BaseForumDefinition.DeleteCommentInput, userId: number):Promise<ApiResponse<void> | null | undefined> {
      let res: ApiResponse<void> | null | undefined = await post<ApiResponse<void>>(
        BaseForumUrlConstant.BASE_FORUM_V1_DELETE_COMMENT,
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

    static async baseForumV1GetcommentPost(input: BaseForumDefinition.GetCommentInput, userId: number):Promise<ApiResponse<Page<BaseForumDefinition.CommentOutput>> | null | undefined> {
      let res: ApiResponse<Page<BaseForumDefinition.CommentOutput>> | null | undefined = await post<ApiResponse<Page<BaseForumDefinition.CommentOutput>>>(
        BaseForumUrlConstant.BASE_FORUM_V1_GET_COMMENT,
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

    static async baseForumV1GetonecommentPost(input: BaseForumDefinition.GetOneCommentInput, userId: number):Promise<ApiResponse<BaseForumDefinition.CommentOutput> | null | undefined> {
      let res: ApiResponse<BaseForumDefinition.CommentOutput> | null | undefined = await post<ApiResponse<BaseForumDefinition.CommentOutput>>(
        BaseForumUrlConstant.BASE_FORUM_V1_GET_ONE_COMMENT,
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


  export class DiGroupController {
    static async baseForumDiV1GroupAllPost(userId: number):Promise<ApiResponse<BaseForumDefinition.AllGroupOutput> | null | undefined> {
      let res: ApiResponse<BaseForumDefinition.AllGroupOutput> | null | undefined = await post<ApiResponse<BaseForumDefinition.AllGroupOutput>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_GROUP_ALL,
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

    static async baseForumDiV1GroupDetailPost(input: BaseForumDefinition.IdRequest, userId: number):Promise<ApiResponse<BaseForumDefinition.DiGroupDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseForumDefinition.DiGroupDetailOutput> | null | undefined = await post<ApiResponse<BaseForumDefinition.DiGroupDetailOutput>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_GROUP_DETAIL,
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

    static async baseForumDiV1GroupDiscoverytopPost(userId: number):Promise<RowResponse<Array<BaseForumDefinition.DiTopOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseForumDefinition.DiTopOutput>> | null | undefined = await post<RowResponse<Array<BaseForumDefinition.DiTopOutput>>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_GROUP_DISCOVERY_TOP,
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

    static async baseForumDiV1GroupRecommendPost(input: BaseForumDefinition.GroupRecommendInput, userId: number):Promise<RowResponse<Array<BaseForumDefinition.GroupDTO>> | null | undefined> {
      let res: RowResponse<Array<BaseForumDefinition.GroupDTO>> | null | undefined = await post<RowResponse<Array<BaseForumDefinition.GroupDTO>>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_GROUP_RECOMMEND,
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

    static async baseForumDiV1GroupSearchPost(input: BaseForumDefinition.SearchInput, userId: number):Promise<RowResponse<Array<BaseForumDefinition.GroupDTO>> | null | undefined> {
      let res: RowResponse<Array<BaseForumDefinition.GroupDTO>> | null | undefined = await post<RowResponse<Array<BaseForumDefinition.GroupDTO>>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_GROUP_SEARCH,
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

    static async baseForumDiV1GroupUpdatejoinedPost(input: BaseForumDefinition.JoinGroupInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_GROUP_UPDATE_JOINED,
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


  export class DiBanUserController {
    static async baseForumDiV1BanGetuserbanPost(userId: number):Promise<ApiResponse<BaseForumDefinition.BanOutput> | null | undefined> {
      let res: ApiResponse<BaseForumDefinition.BanOutput> | null | undefined = await post<ApiResponse<BaseForumDefinition.BanOutput>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_BAN_GET_USER_BAN,
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

    static async baseForumDiV1SystemmessageSystemmessagedetailPost(input: BaseForumDefinition.IdRequest, userId: number):Promise<ApiResponse<BaseForumDefinition.DiBanUserDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseForumDefinition.DiBanUserDetailOutput> | null | undefined = await post<ApiResponse<BaseForumDefinition.DiBanUserDetailOutput>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_SYSTEM_MESSAGE_SYSTEM_MESSAGE_DETAIL,
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


  export class ReplyController {
    static async baseForumV1AddreplyPost(input: BaseForumDefinition.AddReplyInput, ip: string, userId: number):Promise<ApiResponse<BaseForumDefinition.AddReplyOutput> | null | undefined> {
      let res: ApiResponse<BaseForumDefinition.AddReplyOutput> | null | undefined = await post<ApiResponse<BaseForumDefinition.AddReplyOutput>>(
        BaseForumUrlConstant.BASE_FORUM_V1_ADD_REPLY,
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

    static async baseForumV1DeletereplyPost(input: BaseForumDefinition.DeleteReplyInput, userId: number):Promise<ApiResponse<void> | null | undefined> {
      let res: ApiResponse<void> | null | undefined = await post<ApiResponse<void>>(
        BaseForumUrlConstant.BASE_FORUM_V1_DELETE_REPLY,
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

    static async baseForumV1GetonereplyPost(input: BaseForumDefinition.GetOneReplyInput, userId: number):Promise<ApiResponse<BaseForumDefinition.ReplyOutput> | null | undefined> {
      let res: ApiResponse<BaseForumDefinition.ReplyOutput> | null | undefined = await post<ApiResponse<BaseForumDefinition.ReplyOutput>>(
        BaseForumUrlConstant.BASE_FORUM_V1_GET_ONE_REPLY,
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

    static async baseForumV1GetreplyPost(input: BaseForumDefinition.GetReplyInput, userId: number):Promise<ApiResponse<Page<BaseForumDefinition.ReplyOutput>> | null | undefined> {
      let res: ApiResponse<Page<BaseForumDefinition.ReplyOutput>> | null | undefined = await post<ApiResponse<Page<BaseForumDefinition.ReplyOutput>>>(
        BaseForumUrlConstant.BASE_FORUM_V1_GET_REPLY,
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


  export class DiReportUserController {
    static async baseForumDiV1ReportReportuserPost(input: BaseForumDefinition.ReportUserUsingPOSTRequestBody, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_REPORT_REPORT_USER,
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


  export class DiSensitiveWordsController {
    static async baseForumDiV1SensitivewordsTestPost(input: BaseForumDefinition.SensitiveWordsInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_SENSITIVE_WORDS_TEST,
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


  export class DiCommentController {
    static async baseForumDiV1AddcommentPost(input: BaseForumDefinition.AddCommentInput, ip: string, userId: number):Promise<ApiResponse<BaseForumDefinition.DiCommentDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseForumDefinition.DiCommentDetailOutput> | null | undefined = await post<ApiResponse<BaseForumDefinition.DiCommentDetailOutput>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_ADD_COMMENT,
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

    static async baseForumDiV1DelcommentPost(input: BaseForumDefinition.IdRequest, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_DEL_COMMENT,
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

    static async baseForumDiV1DelreplygroupPost(input: BaseForumDefinition.IdRequest, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_DEL_REPLY_GROUP,
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

    static async baseForumDiV1GetactivitycommentsPost(input: BaseForumDefinition.GetActivityCommentsInput, ip: string, userId: number):Promise<RowResponse<Array<BaseForumDefinition.DiCommentDetailWithReplyOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseForumDefinition.DiCommentDetailWithReplyOutput>> | null | undefined = await post<RowResponse<Array<BaseForumDefinition.DiCommentDetailWithReplyOutput>>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_GET_ACTIVITY_COMMENTS,
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

    static async baseForumDiV1GetcommentreplysPost(input: BaseForumDefinition.GetCommentReplysInput, ip: string, userId: number):Promise<RowResponse<Array<BaseForumDefinition.DiCommentDetailOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseForumDefinition.DiCommentDetailOutput>> | null | undefined = await post<RowResponse<Array<BaseForumDefinition.DiCommentDetailOutput>>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_GET_COMMENT_REPLYS,
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

    static async baseForumDiV1GetmyreplysPost(input: BaseForumDefinition.GetMyReplysInput, ip: string, userId: number):Promise<RowResponse<Array<BaseForumDefinition.DiMyReplyOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseForumDefinition.DiMyReplyOutput>> | null | undefined = await post<RowResponse<Array<BaseForumDefinition.DiMyReplyOutput>>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_GET_MY_REPLYS,
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

    static async baseForumDiV1GetpostcommentsPost(input: BaseForumDefinition.GetPostCommentsInput, ip: string, userId: number):Promise<RowResponse<Array<BaseForumDefinition.DiCommentDetailWithReplyOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseForumDefinition.DiCommentDetailWithReplyOutput>> | null | undefined = await post<RowResponse<Array<BaseForumDefinition.DiCommentDetailWithReplyOutput>>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_GET_POST_COMMENTS,
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

    static async baseForumDiV1GetreplygroupsPost(input: BaseForumDefinition.PaginableRequest, userId: number):Promise<PaginableResponse<Array<BaseForumDefinition.DiLinkedOutput>> | null | undefined> {
      let res: PaginableResponse<Array<BaseForumDefinition.DiLinkedOutput>> | null | undefined = await post<PaginableResponse<Array<BaseForumDefinition.DiLinkedOutput>>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_GET_REPLY_GROUPS,
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


  export class DiPostCollectController {
    static async baseForumDiV1PostCollectListPost(input: BaseForumDefinition.PaginableRequest, userId: number):Promise<PaginableResponse<Array<BaseForumDefinition.DiLinkedOutput>> | null | undefined> {
      let res: PaginableResponse<Array<BaseForumDefinition.DiLinkedOutput>> | null | undefined = await post<PaginableResponse<Array<BaseForumDefinition.DiLinkedOutput>>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_POST_COLLECT_LIST,
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

    static async baseForumDiV1PostCollectUpdatePost(input: BaseForumDefinition.CollectUpdateInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_POST_COLLECT_UPDATE,
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


  export class DiPostController {
    static async baseForumDiV1AddpostPost(input: BaseForumDefinition.AddDiPostInput):
      Promise<ApiResponse<BaseForumDefinition.AddDiPostOutput> | null | undefined> {
      let res: ApiResponse<BaseForumDefinition.AddDiPostOutput> | null | undefined =
        await post<ApiResponse<BaseForumDefinition.AddDiPostOutput>>(
          BaseForumUrlConstant.BASE_FORUM_DI_V1_ADD_POST,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async baseForumDiV1AddvotePost(input: BaseForumDefinition.AddVoteInput, ip: string, userId: number):Promise<ApiResponse<BaseForumDefinition.DiVoteOutput> | null | undefined> {
      let res: ApiResponse<BaseForumDefinition.DiVoteOutput> | null | undefined = await post<ApiResponse<BaseForumDefinition.DiVoteOutput>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_ADD_VOTE,
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

    static async baseForumDiV1DeletepostPost(input: BaseForumDefinition.DeletePostInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_DELETE_POST,
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

    static async baseForumDiV1FollowpostPost(input: BaseForumDefinition.FollowPostInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_FOLLOW_POST,
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

    static async baseForumDiV1GetpostdetailPost(input: BaseForumDefinition.IdRequest, ip: string, userId: number):Promise<ApiResponse<BaseForumDefinition.GetPostDetailByCommentIdUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<BaseForumDefinition.GetPostDetailByCommentIdUsingPOSTRsp> | null | undefined = await post<ApiResponse<BaseForumDefinition.GetPostDetailByCommentIdUsingPOSTRsp>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_GET_POST_DETAIL,
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

    static async baseForumDiV1Getpostdetail4sharePost(input: BaseForumDefinition.IdRequest, ip: string):Promise<ApiResponse<BaseForumDefinition.GetPostDetailByCommentIdUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<BaseForumDefinition.GetPostDetailByCommentIdUsingPOSTRsp> | null | undefined = await post<ApiResponse<BaseForumDefinition.GetPostDetailByCommentIdUsingPOSTRsp>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_GET_POST_DETAIL4SHARE,
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

    static async baseForumDiV1GetpostdetailbycommentidPost(input: BaseForumDefinition.IdRequest, ip: string, userId: number):Promise<ApiResponse<BaseForumDefinition.GetPostDetailByCommentIdUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<BaseForumDefinition.GetPostDetailByCommentIdUsingPOSTRsp> | null | undefined = await post<ApiResponse<BaseForumDefinition.GetPostDetailByCommentIdUsingPOSTRsp>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_GET_POST_DETAIL_BY_COMMENT_ID,
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

    static async baseForumDiV1GetpostdetailbymsggroupidPost(input: BaseForumDefinition.IdRequest, ip: string, userId: number):Promise<ApiResponse<BaseForumDefinition.GetPostDetailByCommentIdUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<BaseForumDefinition.GetPostDetailByCommentIdUsingPOSTRsp> | null | undefined = await post<ApiResponse<BaseForumDefinition.GetPostDetailByCommentIdUsingPOSTRsp>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_GET_POST_DETAIL_BY_MSG_GROUP_ID,
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

    static async baseForumDiV1GetpostsPost(input: BaseForumDefinition.GetPostsInput, ip: string, userId: number):Promise<RowResponse<Array<BaseForumDefinition.GetPostDetailByCommentIdUsingPOSTRsp>> | null | undefined> {
      let res: RowResponse<Array<BaseForumDefinition.GetPostDetailByCommentIdUsingPOSTRsp>> | null | undefined = await post<RowResponse<Array<BaseForumDefinition.GetPostDetailByCommentIdUsingPOSTRsp>>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_GET_POSTS,
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

    static async baseForumDiV1GuesslikepostsPost(ip: string, page: BaseForumDefinition.GuessLikeInput, userId: number):Promise<RowResponse<Array<BaseForumDefinition.GetPostDetailByCommentIdUsingPOSTRsp>> | null | undefined> {
      let res: RowResponse<Array<BaseForumDefinition.GetPostDetailByCommentIdUsingPOSTRsp>> | null | undefined = await post<RowResponse<Array<BaseForumDefinition.GetPostDetailByCommentIdUsingPOSTRsp>>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_GUESS_LIKE_POSTS,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        page
      );

      return res;
    }

    static async baseForumDiV1PostFollowpostlistPost(input: BaseForumDefinition.PaginableRequest, userId: number):Promise<PaginableResponse<Array<BaseForumDefinition.GetPostDetailByCommentIdUsingPOSTRsp>> | null | undefined> {
      let res: PaginableResponse<Array<BaseForumDefinition.GetPostDetailByCommentIdUsingPOSTRsp>> | null | undefined = await post<PaginableResponse<Array<BaseForumDefinition.GetPostDetailByCommentIdUsingPOSTRsp>>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_POST_FOLLOW_POST_LIST,
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

    static async baseForumDiV1PostFollowuserpostlistPost(input: BaseForumDefinition.PaginableRequest, userId: number):Promise<PaginableResponse<Array<BaseForumDefinition.GetPostDetailByCommentIdUsingPOSTRsp>> | null | undefined> {
      let res: PaginableResponse<Array<BaseForumDefinition.GetPostDetailByCommentIdUsingPOSTRsp>> | null | undefined = await post<PaginableResponse<Array<BaseForumDefinition.GetPostDetailByCommentIdUsingPOSTRsp>>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_POST_FOLLOW_USER_POST_LIST,
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

    static async baseForumDiV1PostHistorydatacountPost(userId: number):Promise<ApiResponse<Map<string, number>> | null | undefined> {
      let res: ApiResponse<Map<string, number>> | null | undefined = await post<ApiResponse<Map<string, number>>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_POST_HISTORY_DATA_COUNT,
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

    static async baseForumDiV1PostMemorialdataPost(input: BaseForumDefinition.DateRangeRequest, userId: number):Promise<ApiResponse<BaseForumDefinition.DiscoveryPageOutput> | null | undefined> {
      let res: ApiResponse<BaseForumDefinition.DiscoveryPageOutput> | null | undefined = await post<ApiResponse<BaseForumDefinition.DiscoveryPageOutput>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_POST_MEMORIAL_DATA,
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

    static async baseForumDiV1PostMypagelistPost(input: BaseForumDefinition.PageAndUserIdInput, userId: number):Promise<PaginableResponse<Array<BaseForumDefinition.DiLinkedOutput>> | null | undefined> {
      let res: PaginableResponse<Array<BaseForumDefinition.DiLinkedOutput>> | null | undefined = await post<PaginableResponse<Array<BaseForumDefinition.DiLinkedOutput>>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_POST_MY_PAGE_LIST,
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

    static async baseForumDiV1PostSearchPost(input: BaseForumDefinition.PaginableRequest, userId: number):Promise<PaginableResponse<Array<BaseForumDefinition.GetPostDetailByCommentIdUsingPOSTRsp>> | null | undefined> {
      let res: PaginableResponse<Array<BaseForumDefinition.GetPostDetailByCommentIdUsingPOSTRsp>> | null | undefined = await post<PaginableResponse<Array<BaseForumDefinition.GetPostDetailByCommentIdUsingPOSTRsp>>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_POST_SEARCH,
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

    static async baseForumDiV1PostUpdategroupPost(input: BaseForumDefinition.PostUpdateGroupInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_POST_UPDATE_GROUP,
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

    static async baseForumDiV1SharepostPost(input: BaseForumDefinition.IdRequest, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseForumUrlConstant.BASE_FORUM_DI_V1_SHARE_POST,
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
