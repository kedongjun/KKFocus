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
import { BaseBookDefinition } from './../definition/BaseBookDefinition';
import { BaseBookUrlConstant } from './../constant/BaseBookUrlConstant';

export namespace BaseBookOperation {
  export class BookNoteController {
    static async baseBookV1NoteAddPost(input: BaseBookDefinition.AddNoteRequestBody, ip: string, userId: number):Promise<ApiResponse<BaseBookDefinition.NoteItem> | null | undefined> {
      let res: ApiResponse<BaseBookDefinition.NoteItem> | null | undefined = await post<ApiResponse<BaseBookDefinition.NoteItem>>(
        BaseBookUrlConstant.BASE_BOOK_V1_NOTE_ADD,
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

    static async baseBookV1NoteDeletePost(input: BaseBookDefinition.IdsRequest, userId?: number):Promise<BaseBookDefinition.IdsResponse | null | undefined> {
      let res: BaseBookDefinition.IdsResponse | null | undefined = await post<BaseBookDefinition.IdsResponse>(
        BaseBookUrlConstant.BASE_BOOK_V1_NOTE_DELETE,
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

    static async baseBookV1NoteListPost(input: BaseBookDefinition.IdRequest, userId: number):Promise<RowResponse<Array<BaseBookDefinition.NoteItem>> | null | undefined> {
      let res: RowResponse<Array<BaseBookDefinition.NoteItem>> | null | undefined = await post<RowResponse<Array<BaseBookDefinition.NoteItem>>>(
        BaseBookUrlConstant.BASE_BOOK_V1_NOTE_LIST,
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

    static async baseBookV1NoteUpdatePost(input: BaseBookDefinition.UpdateNoteRequestBody, ip: string, userId: number):Promise<ApiResponse<BaseBookDefinition.NoteItem> | null | undefined> {
      let res: ApiResponse<BaseBookDefinition.NoteItem> | null | undefined = await post<ApiResponse<BaseBookDefinition.NoteItem>>(
        BaseBookUrlConstant.BASE_BOOK_V1_NOTE_UPDATE,
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

    static async baseBookV2BooknoteHasdataPost(userId: number):Promise<ApiResponse<BaseBookDefinition.BookNoteHasDataOutput> | null | undefined> {
      let res: ApiResponse<BaseBookDefinition.BookNoteHasDataOutput> | null | undefined = await post<ApiResponse<BaseBookDefinition.BookNoteHasDataOutput>>(
        BaseBookUrlConstant.BASE_BOOK_V2_BOOK_NOTE_HAS_DATA,
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

    static async baseBookV2ExportRecommendMSectionMBookMDataPost(userId?: number):Promise<ApiResponse<BaseBookDefinition.RecommendSectionBookData> | null | undefined> {
      let res: ApiResponse<BaseBookDefinition.RecommendSectionBookData> | null | undefined = await post<ApiResponse<BaseBookDefinition.RecommendSectionBookData>>(
        BaseBookUrlConstant.BASE_BOOK_V2_EXPORT_RECOMMEND_SECTION_BOOK_DATA_URL,
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

    static async baseBookV2NoteAddPost(input: BaseBookDefinition.BookNoteV2):Promise<ApiResponse<BaseBookDefinition.NoteDetail> | null | undefined> {
      let res: ApiResponse<BaseBookDefinition.NoteDetail> | null | undefined = await post<ApiResponse<BaseBookDefinition.NoteDetail>>(
        BaseBookUrlConstant.BASE_BOOK_V2_NOTE_ADD,
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

    static async baseBookV2NoteDetailPost(input: BaseBookDefinition.IdRequest, ip: string, userId: number):Promise<ApiResponse<BaseBookDefinition.NoteDetail> | null | undefined> {
      let res: ApiResponse<BaseBookDefinition.NoteDetail> | null | undefined = await post<ApiResponse<BaseBookDefinition.NoteDetail>>(
        BaseBookUrlConstant.BASE_BOOK_V2_NOTE_DETAIL,
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

    static async baseBookV2NoteGetsortsetPost(userId?: number):Promise<ApiResponse<BaseBookDefinition.SortSetUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<BaseBookDefinition.SortSetUsingPOSTRsp> | null | undefined = await post<ApiResponse<BaseBookDefinition.SortSetUsingPOSTRsp>>(
        BaseBookUrlConstant.BASE_BOOK_V2_NOTE_GET_SORT_SET,
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

    static async baseBookV2NoteListbysortPost(input: BaseBookDefinition.IdRequest, userId?: number):Promise<RowResponse<Array<BaseBookDefinition.NoteItem>> | null | undefined> {
      let res: RowResponse<Array<BaseBookDefinition.NoteItem>> | null | undefined = await post<RowResponse<Array<BaseBookDefinition.NoteItem>>>(
        BaseBookUrlConstant.BASE_BOOK_V2_NOTE_LIST_BY_SORT,
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

    static async baseBookV2NoteSortsetPost(input: BaseBookDefinition.SortSetUsingPOSTRsp, userId?: number):Promise<ApiResponse<BaseBookDefinition.SortSetUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<BaseBookDefinition.SortSetUsingPOSTRsp> | null | undefined = await post<ApiResponse<BaseBookDefinition.SortSetUsingPOSTRsp>>(
        BaseBookUrlConstant.BASE_BOOK_V2_NOTE_SORT_SET,
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

    static async baseBookV2NoteUpdatePost(input: BaseBookDefinition.UpdateNoteRequestBody):Promise<ApiResponse<BaseBookDefinition.NoteDetail> | null | undefined> {
      let res: ApiResponse<BaseBookDefinition.NoteDetail> | null | undefined = await post<ApiResponse<BaseBookDefinition.NoteDetail>>(
        BaseBookUrlConstant.BASE_BOOK_V2_NOTE_UPDATE,
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


  export class BookDailySummaryController {
    static async baseBookV1DailysummaryCountPost(input: BaseBookDefinition.DateRequest, userId: number):Promise<ApiResponse<BaseBookDefinition.DailySummaryStatisticsUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<BaseBookDefinition.DailySummaryStatisticsUsingPOSTRsp> | null | undefined = await post<ApiResponse<BaseBookDefinition.DailySummaryStatisticsUsingPOSTRsp>>(
        BaseBookUrlConstant.BASE_BOOK_V1_DAILY_SUMMARY_COUNT,
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

    static async baseBookV1DailysummaryDataPost(input: BaseBookDefinition.DateRequest, userId: number):Promise<RowResponse<Array<BaseBookDefinition.ReadBookDayConcludeData>> | null | undefined> {
      let res: RowResponse<Array<BaseBookDefinition.ReadBookDayConcludeData>> | null | undefined = await post<RowResponse<Array<BaseBookDefinition.ReadBookDayConcludeData>>>(
        BaseBookUrlConstant.BASE_BOOK_V1_DAILY_SUMMARY_DATA,
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


  export class BookOwnController {
    static async baseBookV1DaterangecountPost(input: BaseBookDefinition.DateRangeRequest, userId: number):Promise<ApiResponse<BaseBookDefinition.BookCountOutput> | null | undefined> {
      let res: ApiResponse<BaseBookDefinition.BookCountOutput> | null | undefined = await post<ApiResponse<BaseBookDefinition.BookCountOutput>>(
        BaseBookUrlConstant.BASE_BOOK_V1_DATE_RANGE_COUNT,
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

    static async baseBookV1GetbookownidPost(input: BaseBookDefinition.IdRequest, userId: number):Promise<ApiResponse<BaseBookDefinition.IdResponse> | null | undefined> {
      let res: ApiResponse<BaseBookDefinition.IdResponse> | null | undefined = await post<ApiResponse<BaseBookDefinition.IdResponse>>(
        BaseBookUrlConstant.BASE_BOOK_V1_GET_BOOK_OWN_ID,
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

    static async baseBookV1HistorydatacountPost(userId: number):Promise<ApiResponse<Map<string, number>> | null | undefined> {
      let res: ApiResponse<Map<string, number>> | null | undefined = await post<ApiResponse<Map<string, number>>>(
        BaseBookUrlConstant.BASE_BOOK_V1_HISTORY_DATA_COUNT,
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

    static async baseBookV1OwnAddPost(input: BaseBookDefinition.AddV2UsingPOST_1RequestBody, ip: string, userId: number):Promise<ApiResponse<BaseBookDefinition.UpdateV2UsingPOST_1Rsp> | null | undefined> {
      let res: ApiResponse<BaseBookDefinition.UpdateV2UsingPOST_1Rsp> | null | undefined = await post<ApiResponse<BaseBookDefinition.UpdateV2UsingPOST_1Rsp>>(
        BaseBookUrlConstant.BASE_BOOK_V1_OWN_ADD,
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

    static async baseBookV1OwnCountPost(userId: number):Promise<ApiResponse<BaseBookDefinition.QueryBookNoteCountByUserIdUsingPOSTResponse> | null | undefined> {
      let res: ApiResponse<BaseBookDefinition.QueryBookNoteCountByUserIdUsingPOSTResponse> | null | undefined = await post<ApiResponse<BaseBookDefinition.QueryBookNoteCountByUserIdUsingPOSTResponse>>(
        BaseBookUrlConstant.BASE_BOOK_V1_OWN_COUNT,
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

    static async baseBookV1OwnDeletePost(input: BaseBookDefinition.DeleteUsingPOST_1RequestBody):Promise<BaseBookDefinition.IdsResponse | null | undefined> {
      let res: BaseBookDefinition.IdsResponse | null | undefined = await post<BaseBookDefinition.IdsResponse>(
        BaseBookUrlConstant.BASE_BOOK_V1_OWN_DELETE,
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

    static async baseBookV1OwnDetailPost(input: BaseBookDefinition.IdRequest, userId: number):Promise<ApiResponse<BaseBookDefinition.UpdateV2UsingPOST_1Rsp> | null | undefined> {
      let res: ApiResponse<BaseBookDefinition.UpdateV2UsingPOST_1Rsp> | null | undefined = await post<ApiResponse<BaseBookDefinition.UpdateV2UsingPOST_1Rsp>>(
        BaseBookUrlConstant.BASE_BOOK_V1_OWN_DETAIL,
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

    static async baseBookV1OwnGetbookcountbystatusPost(ip: string, userId: number):Promise<RowResponse<Array<BaseBookDefinition.BookCountInfo>> | null | undefined> {
      let res: RowResponse<Array<BaseBookDefinition.BookCountInfo>> | null | undefined = await post<RowResponse<Array<BaseBookDefinition.BookCountInfo>>>(
        BaseBookUrlConstant.BASE_BOOK_V1_OWN_GET_BOOK_COUNT_BY_STATUS,
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

    static async baseBookV1OwnGetbyisbnPost(input: BaseBookDefinition.isbn, ip: string, userId: number):Promise<ApiResponse<BaseBookDefinition.BookElementInfo> | null | undefined> {
      let res: ApiResponse<BaseBookDefinition.BookElementInfo> | null | undefined = await post<ApiResponse<BaseBookDefinition.BookElementInfo>>(
        BaseBookUrlConstant.BASE_BOOK_V1_OWN_GET_BY_ISBN,
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

    static async baseBookV1OwnGlobaladdhistoryPost(idsRequest: BaseBookDefinition.IdsRequest, userId: number):Promise<RowResponse<Array<BaseBookDefinition.AppletHistoryResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseBookDefinition.AppletHistoryResponse>> | null | undefined = await post<RowResponse<Array<BaseBookDefinition.AppletHistoryResponse>>>(
        BaseBookUrlConstant.BASE_BOOK_V1_OWN_GLOBAL_ADD_HISTORY,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        idsRequest
      );

      return res;
    }

    static async baseBookV1OwnListPost(input: BaseBookDefinition.PaginableRequest, userId: number):Promise<RowResponse<Array<BaseBookDefinition.ListShortUsingPOSTResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseBookDefinition.ListShortUsingPOSTResponse>> | null | undefined = await post<RowResponse<Array<BaseBookDefinition.ListShortUsingPOSTResponse>>>(
        BaseBookUrlConstant.BASE_BOOK_V1_OWN_LIST,
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

    static async baseBookV1OwnNameexistPost(input: BaseBookDefinition.NameExistUsingPOSTRequestBody, userId?: number):Promise<ApiResponse<BaseBookDefinition.BooleanResponse> | null | undefined> {
      let res: ApiResponse<BaseBookDefinition.BooleanResponse> | null | undefined = await post<ApiResponse<BaseBookDefinition.BooleanResponse>>(
        BaseBookUrlConstant.BASE_BOOK_V1_OWN_NAME_EXIST,
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

    static async baseBookV1OwnQuerybooknotecountbyuseridPost(userId: number):Promise<ApiResponse<BaseBookDefinition.QueryBookNoteCountByUserIdUsingPOSTResponse> | null | undefined> {
      let res: ApiResponse<BaseBookDefinition.QueryBookNoteCountByUserIdUsingPOSTResponse> | null | undefined = await post<ApiResponse<BaseBookDefinition.QueryBookNoteCountByUserIdUsingPOSTResponse>>(
        BaseBookUrlConstant.BASE_BOOK_V1_OWN_QUERY_BOOK_NOTE_COUNT_BY_USER_ID,
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

    static async baseBookV1OwnUpdatePost(input: BaseBookDefinition.UpdateV2UsingPOST_1RequestBody, ip: string, userId: number):Promise<ApiResponse<BaseBookDefinition.UpdateV2UsingPOST_1Rsp> | null | undefined> {
      let res: ApiResponse<BaseBookDefinition.UpdateV2UsingPOST_1Rsp> | null | undefined = await post<ApiResponse<BaseBookDefinition.UpdateV2UsingPOST_1Rsp>>(
        BaseBookUrlConstant.BASE_BOOK_V1_OWN_UPDATE,
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

    static async baseBookV2OwnAddPost(input: BaseBookDefinition.AddV2UsingPOST_1RequestBody, ip?: string, userId?: number):Promise<ApiResponse<BaseBookDefinition.UpdateV2UsingPOST_1Rsp> | null | undefined> {
      let res: ApiResponse<BaseBookDefinition.UpdateV2UsingPOST_1Rsp> | null | undefined = await post<ApiResponse<BaseBookDefinition.UpdateV2UsingPOST_1Rsp>>(
        BaseBookUrlConstant.BASE_BOOK_V2_OWN_ADD,
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

    static async baseBookV2OwnBatchaddbookbysystembookidPost(input: BaseBookDefinition.BatchAddBookBySystemBookIdInput, ip?: string, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBookUrlConstant.BASE_BOOK_V2_OWN_BATCH_ADD_BOOK_BY_SYSTEM_BOOK_ID,
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

    static async baseBookV2OwnCheckexistbyisbnPost(input: BaseBookDefinition.isbn, ip: string, userId: number):Promise<ApiResponse<BaseBookDefinition.checkExistRequestBody> | null | undefined> {
      let res: ApiResponse<BaseBookDefinition.checkExistRequestBody> | null | undefined = await post<ApiResponse<BaseBookDefinition.checkExistRequestBody>>(
        BaseBookUrlConstant.BASE_BOOK_V2_OWN_CHECK_EXIST_BY_ISBN,
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

    static async baseBookV2OwnDetailPost(input: BaseBookDefinition.IdRequest, userId?: number):Promise<ApiResponse<BaseBookDefinition.UpdateV2UsingPOST_1Rsp> | null | undefined> {
      let res: ApiResponse<BaseBookDefinition.UpdateV2UsingPOST_1Rsp> | null | undefined = await post<ApiResponse<BaseBookDefinition.UpdateV2UsingPOST_1Rsp>>(
        BaseBookUrlConstant.BASE_BOOK_V2_OWN_DETAIL,
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

    static async baseBookV2OwnGetbybooklibraryidPost(input: BaseBookDefinition.IdRequest, ip?: string, userId?: number):Promise<ApiResponse<BaseBookDefinition.BookLibraryDetailPage> | null | undefined> {
      let res: ApiResponse<BaseBookDefinition.BookLibraryDetailPage> | null | undefined = await post<ApiResponse<BaseBookDefinition.BookLibraryDetailPage>>(
        BaseBookUrlConstant.BASE_BOOK_V2_OWN_GET_BY_BOOK_LIBRARY_ID,
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

    static async baseBookV2OwnGetbysearchPost(input: BaseBookDefinition.PaginableRequest, ip?: string, userId?: number):Promise<RowResponse<Array<BaseBookDefinition.BookElementInfo>> | null | undefined> {
      let res: RowResponse<Array<BaseBookDefinition.BookElementInfo>> | null | undefined = await post<RowResponse<Array<BaseBookDefinition.BookElementInfo>>>(
        BaseBookUrlConstant.BASE_BOOK_V2_OWN_GET_BY_SEARCH,
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

    static async baseBookV2OwnGetlistbyisbnPost(input: BaseBookDefinition.isbn, ip?: string, userId?: number):Promise<RowResponse<Array<BaseBookDefinition.BookElementInfo>> | null | undefined> {
      let res: RowResponse<Array<BaseBookDefinition.BookElementInfo>> | null | undefined = await post<RowResponse<Array<BaseBookDefinition.BookElementInfo>>>(
        BaseBookUrlConstant.BASE_BOOK_V2_OWN_GET_LIST_BY_ISBN,
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

    static async baseBookV2OwnGlobalsearchPost(input: BaseBookDefinition.SearchUsingPOSTRequestBody, userId: number):Promise<RowResponse<Array<BaseBookDefinition.GlobalSearchUsingPOSTRsp>> | null | undefined> {
      let res: RowResponse<Array<BaseBookDefinition.GlobalSearchUsingPOSTRsp>> | null | undefined = await post<RowResponse<Array<BaseBookDefinition.GlobalSearchUsingPOSTRsp>>>(
        BaseBookUrlConstant.BASE_BOOK_V2_OWN_GLOBAL_SEARCH,
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

    static async baseBookV2OwnListPost(input: BaseBookDefinition.ListBookV2RequestBody, ip?: string, userId?: number):Promise<RowResponse<Array<BaseBookDefinition.BookV2OwnListItem>> | null | undefined> {
      let res: RowResponse<Array<BaseBookDefinition.BookV2OwnListItem>> | null | undefined = await post<RowResponse<Array<BaseBookDefinition.BookV2OwnListItem>>>(
        BaseBookUrlConstant.BASE_BOOK_V2_OWN_LIST,
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

    static async baseBookV2OwnListbyfolderidPost(input: BaseBookDefinition.IdRequest, ip?: string, userId?: number):Promise<RowResponse<Array<BaseBookDefinition.BookV2OwnListItem>> | null | undefined> {
      let res: RowResponse<Array<BaseBookDefinition.BookV2OwnListItem>> | null | undefined = await post<RowResponse<Array<BaseBookDefinition.BookV2OwnListItem>>>(
        BaseBookUrlConstant.BASE_BOOK_V2_OWN_LIST_BY_FOLDER_ID,
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

    static async baseBookV2OwnListshortPost(input: BaseBookDefinition.PaginableRequest, userId: number):Promise<RowResponse<Array<BaseBookDefinition.ListShortUsingPOSTResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseBookDefinition.ListShortUsingPOSTResponse>> | null | undefined = await post<RowResponse<Array<BaseBookDefinition.ListShortUsingPOSTResponse>>>(
        BaseBookUrlConstant.BASE_BOOK_V2_OWN_LIST_SHORT,
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

    static async baseBookV2OwnSearchPost(input: BaseBookDefinition.SearchUsingPOSTRequestBody, userId?: number):Promise<ApiResponse<BaseBookDefinition.SearchUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<BaseBookDefinition.SearchUsingPOSTRsp> | null | undefined = await post<ApiResponse<BaseBookDefinition.SearchUsingPOSTRsp>>(
        BaseBookUrlConstant.BASE_BOOK_V2_OWN_SEARCH,
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

    static async baseBookV2OwnSortPost(input: BaseBookDefinition.SortUsingPOSTRequstBody, ip?: string, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBookUrlConstant.BASE_BOOK_V2_OWN_SORT,
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

    static async baseBookV2OwnSortinfolderPost(input: BaseBookDefinition.SortInFolderUsingPOSTRequestBody, ip?: string, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBookUrlConstant.BASE_BOOK_V2_OWN_SORT_IN_FOLDER,
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

    static async baseBookV2OwnUpdatePost(input: BaseBookDefinition.UpdateV2UsingPOST_1RequestBody, ip?: string, userId?: number):Promise<ApiResponse<BaseBookDefinition.UpdateV2UsingPOST_1Rsp> | null | undefined> {
      let res: ApiResponse<BaseBookDefinition.UpdateV2UsingPOST_1Rsp> | null | undefined = await post<ApiResponse<BaseBookDefinition.UpdateV2UsingPOST_1Rsp>>(
        BaseBookUrlConstant.BASE_BOOK_V2_OWN_UPDATE,
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

    static async baseBookV2OwnUpdatestatusPost(input: BaseBookDefinition.UpdateStatusUsingPOSTRequestBody, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBookUrlConstant.BASE_BOOK_V2_OWN_UPDATE_STATUS,
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
  }


  export class BookRemindController {
    static async baseBookV1AddremindPost(input: BaseBookDefinition.AddRemindAndSwitchUsingPOSTRequestBody):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBookUrlConstant.BASE_BOOK_V1_ADD_REMIND,
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

    static async baseBookV1ConfigswitchPost(input: BaseBookDefinition.ConfigSwitchUsingPOSTRequestBody, ip: string, userId: number):Promise<ApiResponse<BaseBookDefinition.ConfigSwitchUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<BaseBookDefinition.ConfigSwitchUsingPOSTRsp> | null | undefined = await post<ApiResponse<BaseBookDefinition.ConfigSwitchUsingPOSTRsp>>(
        BaseBookUrlConstant.BASE_BOOK_V1_CONFIG_SWITCH,
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

    static async baseBookV1GetremindelementsPost(input: BaseBookDefinition.BookTodoViewInput, userId: number):Promise<ApiResponse<BaseBookDefinition.BookTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseBookDefinition.BookTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseBookDefinition.BookTodoViewListOutput>>(
        BaseBookUrlConstant.BASE_BOOK_V1_GETREMINDELEMENTS,
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

    static async baseBookV1QueryremindPost(userId?: number):Promise<ApiResponse<BaseBookDefinition.QueryRemindAndSwitchUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<BaseBookDefinition.QueryRemindAndSwitchUsingPOSTRsp> | null | undefined = await post<ApiResponse<BaseBookDefinition.QueryRemindAndSwitchUsingPOSTRsp>>(
        BaseBookUrlConstant.BASE_BOOK_V1_QUERY_REMIND,
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

    static async baseBookV1RemindAddPost(input: BaseBookDefinition.AddRemindAndSwitchUsingPOSTRequestBody, ip: string, userId: number):Promise<ApiResponse<BaseBookDefinition.PlanSyncRsp> | null | undefined> {
      let res: ApiResponse<BaseBookDefinition.PlanSyncRsp> | null | undefined = await post<ApiResponse<BaseBookDefinition.PlanSyncRsp>>(
        BaseBookUrlConstant.BASE_BOOK_V1_REMIND_ADD,
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

    static async baseBookV1RemindFinishPost(input: BaseBookDefinition.FinishUsingPOSTRequestBody, ip: string, userId: number):Promise<ApiResponse<BaseBookDefinition.FinishUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<BaseBookDefinition.FinishUsingPOSTRsp> | null | undefined = await post<ApiResponse<BaseBookDefinition.FinishUsingPOSTRsp>>(
        BaseBookUrlConstant.BASE_BOOK_V1_REMIND_FINISH,
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

    static async baseBookV1RemindSyncdataPost(input: BaseBookDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseBookDefinition.SyncDataAppletResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseBookDefinition.SyncDataAppletResponse>> | null | undefined = await post<RowResponse<Array<BaseBookDefinition.SyncDataAppletResponse>>>(
        BaseBookUrlConstant.BASE_BOOK_V1_REMIND_SYNC_DATA,
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

    static async baseBookV1RemindSyncfinishdataPost(input: BaseBookDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseBookDefinition.SyncDataAppletFinishResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseBookDefinition.SyncDataAppletFinishResponse>> | null | undefined = await post<RowResponse<Array<BaseBookDefinition.SyncDataAppletFinishResponse>>>(
        BaseBookUrlConstant.BASE_BOOK_V1_REMIND_SYNC_FINISH_DATA,
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

    static async baseBookV1SyncswitchdataPost(input: BaseBookDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseBookDefinition.ConfigSwitchUsingPOSTRsp>> | null | undefined> {
      let res: RowResponse<Array<BaseBookDefinition.ConfigSwitchUsingPOSTRsp>> | null | undefined = await post<RowResponse<Array<BaseBookDefinition.ConfigSwitchUsingPOSTRsp>>>(
        BaseBookUrlConstant.BASE_BOOK_V1_SYNC_SWITCH_DATA,
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

    static async baseBookV1TodoviewlistPost(input: BaseBookDefinition.BookTodoViewInput, userId: number):Promise<ApiResponse<BaseBookDefinition.BookTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseBookDefinition.BookTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseBookDefinition.BookTodoViewListOutput>>(
        BaseBookUrlConstant.BASE_BOOK_V1_TODO_VIEW_LIST,
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


  export class BookGuideController {
    static async baseBookGuidePost():Promise<RowResponse<Array<BaseBookDefinition.BookGuideOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseBookDefinition.BookGuideOutput>> | null | undefined = await post<RowResponse<Array<BaseBookDefinition.BookGuideOutput>>>(
        BaseBookUrlConstant.BASE_BOOK_GUIDE,
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


  export class BookNoteControllerV3 {
    static async baseBookV3NoteDetailPost(input: BaseBookDefinition.IdRequest):Promise<ApiResponse<BaseBookDefinition.NoteDetail> | null | undefined> {
      let res: ApiResponse<BaseBookDefinition.NoteDetail> | null | undefined = await post<ApiResponse<BaseBookDefinition.NoteDetail>>(
        BaseBookUrlConstant.BASE_BOOK_V3_NOTE_DETAIL,
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


  export class BookReadController {
    static async baseBookV1ReadAddPost(input: BaseBookDefinition.ReadAddUsingPOSTRequestBody, ip?: string, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBookUrlConstant.BASE_BOOK_V1_READ_ADD,
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

    static async baseBookV1ReadDeletePost(input: BaseBookDefinition.IdRequest, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBookUrlConstant.BASE_BOOK_V1_READ_DELETE,
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

    static async baseBookV2ReadAddmanualPost(input: BaseBookDefinition.AddBookRecordManualResquestBody, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBookUrlConstant.BASE_BOOK_V2_READ_ADD_MANUAL,
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

    static async baseBookV2ReadListPost(input: BaseBookDefinition.BookReadListRequestBody, userId?: number):Promise<RowResponse<Array<BaseBookDefinition.ReadingDetail>> | null | undefined> {
      let res: RowResponse<Array<BaseBookDefinition.ReadingDetail>> | null | undefined = await post<RowResponse<Array<BaseBookDefinition.ReadingDetail>>>(
        BaseBookUrlConstant.BASE_BOOK_V2_READ_LIST,
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

    static async baseBookV2StatisticsDetailPost(input: BaseBookDefinition.StatisticDetailUsingPOST_3RequestBody, userId?: number):Promise<RowResponse<Array<BaseBookDefinition.StatisticsDetailUsingPOSTRsp>> | null | undefined> {
      let res: RowResponse<Array<BaseBookDefinition.StatisticsDetailUsingPOSTRsp>> | null | undefined = await post<RowResponse<Array<BaseBookDefinition.StatisticsDetailUsingPOSTRsp>>>(
        BaseBookUrlConstant.BASE_BOOK_V2_STATISTICS_DETAIL,
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

    static async baseBookV2StatisticsQueryPost(input: BaseBookDefinition.StatisticDetailUsingPOST_3RequestBody):Promise<ApiResponse<BaseBookDefinition.StatisticDetailUsingPOST_3Rsp> | null | undefined> {
      let res: ApiResponse<BaseBookDefinition.StatisticDetailUsingPOST_3Rsp> | null | undefined = await post<ApiResponse<BaseBookDefinition.StatisticDetailUsingPOST_3Rsp>>(
        BaseBookUrlConstant.BASE_BOOK_V2_STATISTICS_QUERY,
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

    static async baseBookV3ReadAddmanualPost(input: BaseBookDefinition.AddBookRecordManualResquestBody, ip?: string, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBookUrlConstant.BASE_BOOK_V3_READ_ADD_MANUAL,
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

    static async baseBookV3ReadUpdatePost(input: BaseBookDefinition.UpdateUsingPOST_2RequestBody):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBookUrlConstant.BASE_BOOK_V3_READ_UPDATE,
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
        BaseBookUrlConstant.CHECKALIVE,
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


  export class BookFolderController {
    static async baseBookV2FolderAddPost(input: BaseBookDefinition.AaddFolderRequestBody, ip?: string, userId?: number):Promise<ApiResponse<BaseBookDefinition.BookV2FolderInfo> | null | undefined> {
      let res: ApiResponse<BaseBookDefinition.BookV2FolderInfo> | null | undefined = await post<ApiResponse<BaseBookDefinition.BookV2FolderInfo>>(
        BaseBookUrlConstant.BASE_BOOK_V2_FOLDER_ADD,
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

    static async baseBookV2FolderAddbookPost(input: BaseBookDefinition.AddBookToFolderRequestBody, ip?: string, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBookUrlConstant.BASE_BOOK_V2_FOLDER_ADD_BOOK,
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

    static async baseBookV2FolderDeletePost(input: BaseBookDefinition.DeleteFolderRequestBody):Promise<ApiResponse<BaseBookDefinition.BookV2FolderInfo> | null | undefined> {
      let res: ApiResponse<BaseBookDefinition.BookV2FolderInfo> | null | undefined = await post<ApiResponse<BaseBookDefinition.BookV2FolderInfo>>(
        BaseBookUrlConstant.BASE_BOOK_V2_FOLDER_DELETE,
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

    static async baseBookV2FolderEditPost(input: BaseBookDefinition.EditFolderRequestBody, ip?: string, userId?: number):Promise<ApiResponse<BaseBookDefinition.BookV2FolderInfo> | null | undefined> {
      let res: ApiResponse<BaseBookDefinition.BookV2FolderInfo> | null | undefined = await post<ApiResponse<BaseBookDefinition.BookV2FolderInfo>>(
        BaseBookUrlConstant.BASE_BOOK_V2_FOLDER_EDIT,
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

    static async baseBookV2FolderListPost(ip?: string, userId?: number):Promise<RowResponse<Array<BaseBookDefinition.BookV2FolderInfo>> | null | undefined> {
      let res: RowResponse<Array<BaseBookDefinition.BookV2FolderInfo>> | null | undefined = await post<RowResponse<Array<BaseBookDefinition.BookV2FolderInfo>>>(
        BaseBookUrlConstant.BASE_BOOK_V2_FOLDER_LIST,
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

    static async baseBookV2FolderSortPost(input: BaseBookDefinition.SortFolderUsingPOSTRequstBody, ip?: string, userId?: number):Promise<BaseBookDefinition.IdsResponse | null | undefined> {
      let res: BaseBookDefinition.IdsResponse | null | undefined = await post<BaseBookDefinition.IdsResponse>(
        BaseBookUrlConstant.BASE_BOOK_V2_FOLDER_SORT,
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
  }


  export class StreamController {
  }
}
