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
} from './BaseDefinition'

export namespace BaseQaDefinition {
  export interface AddUserAdviceInput {
    adviceClassifyId: number;
    adviceContentType: string;
    adviceType?: string;
    content: string;
    device: UserDeviceInfo;
    userMobile?: string;
  }

  export interface AddUserAdviceOutput {
    adviceChatList?: Array<AdviceChatOutput>;
    createdTime?: Date;
    id?: number;
  }

  export interface AddUserIntentionAdviceInput {
    adviceContent: string;
    adviceType?: string;
    aiAnswer?: string;
    device: UserDeviceInfo;
    intentionContent: string;
  }

  export interface AdviceChatListOutput {
    adviceChatList?: Array<AdviceChatOutput>;
    lastUserAdviceId?: number;
    lastUserAdviceReplyId?: number;
  }

  export interface AdviceChatOutput {
    advice?: AdviceOutput;
    refAdvice?: AdviceOutput;
  }

  export interface AdviceOutput {
    adviceClassifyId?: number;
    adviceContentType?: string;
    autoId?: number;
    chatBelongType?: string;
    content?: string;
    createdTime?: string;
    id?: number;
    richTexts?: Array<RichTextDto>;
  }

  export interface AdviceTypeInput {
    adviceType?: string;
  }

  export interface CountOutput {
    count?: number;
  }

  export interface GetAdviceChatListInput {
    adviceClassifyId?: number;
    adviceType?: string;
    device: UserDeviceInfo;
    lastUserAdviceId?: number;
    lastUserAdviceReplyId?: number;
  }

  export interface GetHotMsgInput {
    device: UserDeviceInfo;
    id?: number;
  }

  export interface GetLatestAdviceReplyListInput {
    adviceType?: string;
    lastChatTime?: Date;
  }

  export interface HelpCenterAppletDetailOutput {
    dataList?: Array<HelpCenterDataListOutput>;
    id?: number;
    video?: string;
    videoImg?: string;
  }

  export interface HelpCenterCommentInput {
    comment?: string;
    id?: number;
    mobile?: string;
  }

  export interface HelpCenterDataDetailOutput {
    content?: string;
    id?: number;
  }

  export interface HelpCenterDataHomeOutput {
    dataList?: Array<HelpCenterDataListOutput>;
    typeList?: Array<HelpCenterDataOutput>;
  }

  export interface HelpCenterDataListOutput {
    appleted?: boolean;
    content?: string;
    dataList?: Array<HelpCenterDataOutput>;
    icon?: string;
    id?: number;
    title?: string;
    type?: string;
  }

  export interface HelpCenterDataOutput {
    content?: string;
    icon?: string;
    id?: number;
    title?: string;
    type?: string;
  }

  export interface HelpCenterNoticeOutput {
    created?: Date;
    id?: number;
    publishTime?: Date;
    remark?: string;
    sort?: number;
    title?: string;
    top?: boolean;
  }

  export interface HelpCenterPictureAppletLikeInput {
    id?: number;
    like?: boolean;
    reason?: string;
  }

  export interface HelpCenterPictureAppletOutput {
    appletId?: number;
    id?: number;
    likeState?: boolean;
    reason?: string;
    remark?: string;
    sort?: number;
    title?: string;
    top?: boolean;
  }

  export interface HelpCenterPictureOutput {
    coverImgUrl?: string;
    created?: Date;
    id?: number;
    sort?: number;
    title?: string;
  }

  export interface HelpCenterVideoLikeInput {
    like?: boolean;
    videoId?: number;
  }

  export interface HelpCenterVideoLikeOutput {
    likeCount?: number;
  }

  export interface HelpCenterVideoListInput {
    currentPage: number;
    keyword?: string;
    pageSize: number;
  }

  export interface HelpCenterVideoOutput {
    coverImgUrl?: string;
    created?: Date;
    id?: number;
    like?: boolean;
    likeCount?: number;
    remark?: string;
    title?: string;
    top?: boolean;
    videoUrl?: string;
  }

  export interface IdRequest {
    id: number;
  }

  export interface KeywordRequest {
    keyword?: string;
  }

  export interface RichTextDto {
    content?: string;
    contentType?: string;
    function?: string;
    functionValue?: string;
  }

  export interface UpdateIsJoinVoteInput {
    isJoinVote?: boolean;
  }

  export interface UserAdviceConfigOutput {
    isJoinVote?: boolean;
  }
}
