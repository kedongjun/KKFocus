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

export namespace BaseForumDefinition {
  export interface ActivityOutput {
    activityLinkedId?: number;
    activityType?: string;
    content?: string;
    createdTime?: Date;
    id?: number;
    postOutput?: PostOutput;
    userId?: number;
  }

  export interface AddActivityInput {
    activityType: string;
    commentId?: number;
    content: string;
    postId: number;
    postLikeId?: number;
  }

  export interface AddCommentInput {
    annexList?: Array<AnnexDto>;
    commentType?: string;
    content?: string;
    linkedId?: number;
    replyType?: string;
    topicList?: Array<DiTopicInput>;
  }

  export interface AddCommentOutput {
    content?: string;
    id?: number;
    messageOutput?: MessageOutput;
    postId?: number;
  }

  export interface AddDiPostInput {
    annexList?: Array<AnnexDto>;
    anonymous?: boolean;
    coverAnnexType?: string;
    coverAnnexUrl?: string;
    frontEditorVersion?: string;
    groupId?: number;
    richTextContent?: string;
    title?: string;
    topicList?: Array<DiTopicInput>;
    voteInfo?: DiVoteInput;
  }

  export interface AddDiPostOutput {
    groupId?: number;
    groupName?: string;
    id?: number;
  }

  export interface AddLikeInput {
    linkedId: number;
    linkedType: string;
  }

  export interface AddLikeOutput {
    id?: number;
  }

  export interface AddPostInput {
    content: string;
    images?: string;
    type: string;
  }

  export interface AddReplyInput {
    commentId: number;
    commentUserId: number;
    content: string;
    postId: number;
    previousReplyId?: number;
    previousReplyUserId?: number;
  }

  export interface AddReplyOutput {
    commentId?: number;
    content?: string;
    id?: number;
    messageOutput?: MessageOutput;
    postId?: number;
  }

  export interface AddVoteInput {
    voteId?: number;
    voteItemId?: number;
  }

  export interface AllGroupOutput {
    classifyList?: Array<ClassifyGroup>;
  }

  export interface AnnexDto {
    annexType?: string;
    duration?: number;
    name?: string;
    originalFileName?: string;
    uploadTime?: string;
  }

  export interface BanOutput {
    ban?: boolean;
  }

  export interface ClickLikeInput {
    likeType?: string;
    liked?: boolean;
    linkedId?: number;
  }

  export interface CollectUpdateInput {
    collected?: boolean;
    postId?: number;
  }

  export interface CommentOutput {
    belongMyself?: boolean;
    content?: string;
    createdTime?: Date;
    id?: number;
    like?: boolean;
    likeCount?: number;
    likeId?: number;
    replyCount?: number;
    replyOutputList?: Array<ReplyOutput>;
    userId?: number;
  }

  export interface CountResponse {
    count?: number;
  }

  export interface DateRangeRequest {
    endDate?: Date;
    startDate?: Date;
  }

  export interface DelPostInput {
    id: number;
  }

  export interface DeleteCommentInput {
    id: number;
  }

  export interface DeleteLikeByIdInput {
    id: number;
  }

  export interface DeleteLikeInput {
    linkedId: number;
    linkedType: string;
  }

  export interface DeletePostInput {
    deletedRemark?: DeletedOption;
    id?: number;
  }

  export interface DeleteReplyInput {
    id: number;
  }

  export interface DeletedOption {
    option?: string;
    remark?: string;
  }

  export interface DiBanUserDetailOutput {
    content?: string;
  }

  export interface DiCommentDetailOutput {
    commentInfo?: DiCommentOutput;
    postTopicInfos?: Array<DetailUsingPOST_2Rsp>;
    userInfo?: DiPostUserOutput;
  }

  export interface DiCommentDetailWithReplyOutput {
    commentInfo?: DiCommentOutput;
    postTopicInfos?: Array<DetailUsingPOST_2Rsp>;
    replyInfos?: Array<DiCommentDetailOutput>;
    userInfo?: DiPostUserOutput;
  }

  export interface DiCommentOutput {
    annexList?: Array<AnnexDto>;
    content?: string;
    createdTime?: Date;
    id?: number;
    likeCount?: number;
    liked?: boolean;
    replyCount?: number;
    replyType?: string;
    replyUserInfo?: DiPostUserOutput;
    score?: number;
  }

  export interface DiGroupDetailOutput {
    group?: GroupDTO;
  }

  export interface DiLinkedOutput {
    commentCount?: number;
    content?: string;
    created?: Date;
    id?: number;
    likeCount?: number;
    liked?: boolean;
    linkedGroup?: GroupDTO;
    linkedId?: number;
    linkedPostDetail?: GetPostDetailByCommentIdUsingPOSTRsp;
    linkedShowType?: string;
    linkedType?: string;
    userId?: number;
  }

  export interface DiMessageGroupOutput {
    iconUrl?: string;
    id?: number;
    messageType?: string;
    subTitle?: string;
    title?: string;
    unreadCount?: number;
    updatedTime?: Date;
  }

  export interface DiMyReplyOutput {
    commentInfo?: DiCommentOutput;
    postInfo?: GetPostDetailByCommentIdUsingPOSTRsp;
    postTopicInfos?: Array<DetailUsingPOST_2Rsp>;
    replyInfo?: DiCommentOutput;
    userInfo?: DiPostUserOutput;
  }

  export interface DiPostUserOutput {
    anonymous?: boolean;
    deleted?: boolean;
    fansNum?: number;
    followNum?: number;
    followed?: boolean;
    officialAccount?: number;
    postOwner?: boolean;
    userId?: number;
    userImg?: string;
    userName?: string;
    vipId?: string;
  }

  export interface DiTopOutput {
    iconCommon?: string;
    iconSkin?: string;
    id?: number;
    name?: string;
    type?: string;
  }

  export interface DiTopicInput {
    id?: number;
    name?: string;
  }

  export interface DiUserFansOutput {
    created?: Date;
    deleted?: boolean;
    dynamicCount?: number;
    fansNum?: number;
    fansUserId?: number;
    followed?: boolean;
    id?: number;
    userImg?: string;
    userName?: string;
  }

  export interface DiUserFollowOutput {
    created?: Date;
    deleted?: boolean;
    dynamicCount?: number;
    fansNum?: number;
    followUserId?: number;
    followed?: boolean;
    id?: number;
    userImg?: string;
    userName?: string;
  }

  export interface DiVoteInput {
    title?: string;
    voteItems?: Array<DiVoteItemInput>;
  }

  export interface DiVoteItemInput {
    name: string;
  }

  export interface DiVoteItemOutput {
    id?: number;
    name?: string;
    rate?: number;
  }

  export interface DiVoteOutput {
    id?: number;
    isFinished?: boolean;
    postId?: number;
    selectItemId?: number;
    title?: string;
    voteItems?: Array<DiVoteItemOutput>;
  }

  export interface DiscoveryPageOutput {
    forum_page1?: ForumPage1;
    forum_page2?: ForumPage2;
    forum_page3?: ForumPage3;
  }

  export interface FansUserIdInput {
    fansUserId?: number;
  }

  export interface FollowPostInput {
    followed?: boolean;
    postId?: number;
  }

  export interface ForumPage1 {
    firstPostDate?: string;
    userGroupCount?: number;
    userGroupSumUserCount?: number;
  }

  export interface ForumPage2 {
    mostParticipateGroup?: string;
    mostParticipateTopic?: string;
    postCount?: number;
    topicCount?: number;
  }

  export interface ForumPage3 {
    mostInteractivePost?: MostInteractivePost;
  }

  export interface GetActivityCommentsInput {
    activityId?: number;
    lastCommentId?: number;
  }

  export interface GetActivityInput {
    currentPage: number;
    keyword?: string;
    pageSize: number;
    userId: number;
  }

  export interface GetCommentInput {
    currentPage: number;
    keyword?: string;
    pageSize: number;
    postId: number;
  }

  export interface GetCommentReplysInput {
    commentId?: number;
    lastCommentId?: number;
  }

  export interface GetMessageInput {
    currentPage: number;
    keyword?: string;
    pageSize: number;
  }

  export interface GetMyReplysInput {
    currentPage: number;
    id?: number;
    keyword?: string;
    pageSize: number;
  }

  export interface GetOneCommentInput {
    id: number;
  }

  export interface GetOneReplyInput {
    id: number;
  }

  export interface GetPostCommentsInput {
    lastCommentId?: number;
    postId?: number;
    sortType?: string;
  }

  export interface GetPostInput {
    postId: number;
  }

  export interface GetPostsInput {
    getPostSite?: string;
    lastPostId?: number;
    linkedId?: number;
    sortType?: string;
  }

  export interface GetReplyInput {
    commentId: number;
    currentPage: number;
    keyword?: string;
    pageSize: number;
  }

  export interface GroupRecommendInput {
    groupId?: number;
  }

  export interface GuessLikeInput {
    currentPage: number;
  }

  export interface IdRequest {
    id: number;
  }

  export interface JoinGroupInput {
    groupId?: number;
    joined?: boolean;
  }

  export interface ListOtherUserInput {
    currentPage: number;
    keyword?: string;
    pageSize: number;
    userId: number;
  }

  export interface ListPostByUserInput {
    currentPage: number;
    keyword?: string;
    pageSize: number;
    userId: number;
  }

  export interface MessageCountOutput {
    count?: number;
  }

  export interface MessageOutput {
    commentContent?: string;
    commentId?: number;
    commentUserId?: number;
    content?: string;
    createdTime?: Date;
    id?: number;
    messageType?: string;
    messageUserId?: number;
    postId?: number;
    postOutput?: PostOutput;
    previousReplyContent?: string;
    previousReplyUserId?: number;
    readStatus?: boolean;
    replyId?: number;
    replyUserId?: number;
    userId?: number;
  }

  export interface NewTrailerInfoOutput {
    currentDateTime?: Date;
    likeCount?: number;
    shareCount?: number;
    userAlreadyLike?: boolean;
  }

  export interface NewTrailerInput {
    appVersion?: string;
  }

  export interface PageAndUserIdInput {
    currentPage: number;
    keyword?: string;
    pageSize: number;
    userId?: number;
  }

  export interface PaginableRequest {
    currentPage: number;
    keyword?: string;
    pageSize: number;
  }

  export interface PostOutput {
    approvalType?: string;
    belongMyself?: boolean;
    commentCount?: number;
    commentsOff?: boolean;
    content?: string;
    createdTime?: Date;
    id?: number;
    images?: string;
    latestReplyTime?: Date;
    like?: boolean;
    likeCount?: number;
    likeId?: number;
    pageViewCount?: number;
    type?: string;
    userId?: number;
  }

  export interface PostQueryByTypeInput {
    currentPage: number;
    keyword?: string;
    pageSize: number;
    postType?: string;
    type?: string;
  }

  export interface PostSimpleInfoOutput {
    commentCount?: number;
    commentsOff?: boolean;
    content?: string;
    createdTime?: Date;
    id?: number;
    images?: string;
    likeCount?: number;
    pageViewCount?: number;
    type?: string;
    userId?: number;
  }

  export interface PostUpdateGroupInput {
    groupId?: number;
    postId?: number;
  }

  export interface ReplyOutput {
    belongMyself?: boolean;
    content?: string;
    createdTime?: Date;
    id?: number;
    like?: boolean;
    likeCount?: number;
    likeId?: number;
    previousReplyId?: number;
    previousReplyUserId?: number;
    userId?: number;
  }

  export interface SearchInput {
    keyword?: string;
  }

  export interface SensitiveWordsInput {
    content?: string;
  }

  export interface UserFollowInput {
    followUserId?: number;
  }

  export interface UserFollowUpdateInput {
    followUserId?: number;
    followed?: boolean;
  }

  export interface GetPostDetailByCommentIdUsingPOSTRsp {
    commentInfo?: DiCommentDetailWithReplyOutput;
    commentInfos?: Array<DiCommentDetailWithReplyOutput>;
    postGroupInfo?: GroupDTO;
    postId?: number;
    postInfo?: PostInfoDTO;
    postTopicInfos?: Array<DetailUsingPOST_2Rsp>;
    userInfo?: DiPostUserOutput;
    voteInfo?: DiVoteOutput;
  }

  export interface ClassifyGroup {
    classifyName?: string;
    groupList?: Array<GroupDTO>;
    id?: number;
    myClassify?: boolean;
    sort?: number;
  }

  export interface MostInteractivePost {
    commentLikeCount?: number;
    day?: string;
    name?: string;
  }

  export interface GroupDTO {
    bgImg?: string;
    description?: string;
    discussCount?: number;
    groupDesc?: string;
    iconCommon?: string;
    iconDetail?: string;
    iconSkin?: string;
    id?: number;
    joined?: boolean;
    name?: string;
    score?: number;
    sort?: number;
    standard?: string;
    status?: string;
    userCount?: number;
  }

  export class DetailUsingPOSTRows {
    rows: Array<BaseForumDefinition.DetailUsingPOST_2Rsp> = []
  }


  export class  DetailUsingPOST_2Rsp {
    content?: string;
    defaultHot?: string;
    discussCount?: string;
    id?: string;
    img?: string;
    name?: string;
    readCount?: string;
    source?: string;
  }

  export interface PostInfoDTO {
    annexList?: Array<AnnexDto>;
    collected?: boolean;
    commentCount?: number;
    coverAnnexType?: string;
    coverAnnexUrl?: string;
    coverContent?: string;
    createdTime?: Date;
    followed?: boolean;
    frontEditorVersion?: string;
    id?: number;
    likeCount?: number;
    liked?: boolean;
    richTextContent?: string;
    selective?: boolean;
    title?: string;
  }

  export interface ReportUserUsingPOSTRequestBody {
    id?: number;
    reason?: string;
    type?: string;
  }

  @Observed
  export class EmojiInfo {
    id: string = '';
    isDelBtn: boolean = false;
    name: string = '';
    url: string = '';
  }

  @Observed
  export class EmojiInfoData {
    defaultId: number = 0;
    rows: EmojiInfo[] = [];
  }

}
