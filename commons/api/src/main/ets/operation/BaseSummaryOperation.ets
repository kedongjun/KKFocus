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
import { BaseSummaryDefinition } from './../definition/BaseSummaryDefinition';
import { BaseSummaryUrlConstant } from './../constant/BaseSummaryUrlConstant';

export namespace BaseSummaryOperation {
  export class SummaryFolderControllerV1 {
    static async baseSummaryFolderAddPost(ip: string, summaryFolderAddInput: BaseSummaryDefinition.SummaryFolderAddInput, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummaryFolderAddOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryFolderAddOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryFolderAddOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_FOLDER_ADD,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        summaryFolderAddInput
      );

      return res;
    }

    static async baseSummaryFolderDeleteMAllPost(summaryFolderDeleteInput: BaseSummaryDefinition.SummaryFolderDeleteInput, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummaryFolderDeleteOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryFolderDeleteOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryFolderDeleteOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_FOLDER_DELETE_ALL_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        summaryFolderDeleteInput
      );

      return res;
    }

    static async baseSummaryFolderDeleteMMovePost(summaryFolderDeleteInput: BaseSummaryDefinition.SummaryFolderDeleteInput, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummaryFolderDeleteOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryFolderDeleteOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryFolderDeleteOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_FOLDER_DELETE_MOVE_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        summaryFolderDeleteInput
      );

      return res;
    }

    static async baseSummaryFolderSelectMListPost(ip: string, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummaryFolderListOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryFolderListOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryFolderListOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_FOLDER_SELECT_LIST_URL,
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

    static async baseSummaryFolderUpdatePost(summaryFolderUpdateInput: BaseSummaryDefinition.SummaryFolderUpdateInput, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummaryFolderUpdateOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryFolderUpdateOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryFolderUpdateOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_FOLDER_UPDATE,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        summaryFolderUpdateInput
      );

      return res;
    }
  }


  export class SummarySuperFolderControllerV2 {
    static async baseSummarySuperFolderV2AddPost(input: BaseSummaryDefinition.AddSuperFolderInput):Promise<ApiResponse<BaseSummaryDefinition.FolderInfo> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.FolderInfo> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.FolderInfo>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_SUPER_FOLDER_V2_ADD,
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

    static async baseSummarySuperFolderV2ListPost():Promise<ApiResponse<BaseSummaryDefinition.SummaryFolderListOutputV2> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryFolderListOutputV2> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryFolderListOutputV2>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_SUPER_FOLDER_V2_LIST,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseSummarySuperFolderV2UpdatePost(input: BaseSummaryDefinition.UpdateSuperFolderInput):Promise<ApiResponse<BaseSummaryDefinition.FolderInfo> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.FolderInfo> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.FolderInfo>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_SUPER_FOLDER_V2_UPDATE,
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


  export class SummaryPaperControllerV2 {
    static async baseSummaryPaperV2AddPost(input: BaseSummaryDefinition.SummaryPaperAddInput):Promise<ApiResponse<BaseSummaryDefinition.SummaryPaperListOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryPaperListOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryPaperListOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_PAPER_V2_ADD,
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

    static async baseSummaryPaperV2DeletePost(input: BaseSummaryDefinition.SummaryPaperDeleteInput):Promise<ApiResponse<BaseSummaryDefinition.SummaryPaperListOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryPaperListOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryPaperListOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_PAPER_V2_DELETE,
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

    static async baseSummaryPaperV2ListPost():Promise<ApiResponse<BaseSummaryDefinition.SummaryPaperListOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryPaperListOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryPaperListOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_PAPER_V2_LIST,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseSummaryPaperV2SetselectedPost(input: BaseSummaryDefinition.SummaryPaperSetSelectedInput):Promise<ApiResponse<BaseSummaryDefinition.SummaryPaperListOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryPaperListOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryPaperListOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_PAPER_V2_SET_SELECTED,
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

    static async baseSummaryPaperV2SetselectedforsummaryPost(input: BaseSummaryDefinition.SummaryPaperSetSelectedSummaryInput, ip: string, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummaryPaperListOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryPaperListOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryPaperListOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_PAPER_V2_SET_SELECTED_FOR_SUMMARY,
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


  export class SummaryTagControllerV1 {
    static async baseSummaryTagAddPost(ip: string, summaryTagAddInput: BaseSummaryDefinition.SummaryTagAddInput, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummaryTagAddOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryTagAddOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryTagAddOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_TAG_ADD,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        summaryTagAddInput
      );

      return res;
    }

    static async baseSummaryTagDeletePost(summaryTagDeleteInput: BaseSummaryDefinition.SummaryTagDeleteInput, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummaryTagDeleteOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryTagDeleteOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryTagDeleteOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_TAG_DELETE,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        summaryTagDeleteInput
      );

      return res;
    }

    static async baseSummaryTagSelectMListPost(summaryTagListInput: BaseSummaryDefinition.SummaryTagListInput, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummaryTagListOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryTagListOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryTagListOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_TAG_SELECT_LIST_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        summaryTagListInput
      );

      return res;
    }

    static async baseSummaryTagSelectMListMMemoPost(ip: string, summaryTagListInput: BaseSummaryDefinition.SummaryTagListInput, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummaryTagListOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryTagListOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryTagListOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_TAG_SELECT_LIST_MEMO_URL,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        summaryTagListInput
      );

      return res;
    }

    static async baseSummaryTagUpdatePost(summaryTagUpdateInput: BaseSummaryDefinition.SummaryTagUpdateInput, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummaryTagUpdateOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryTagUpdateOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryTagUpdateOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_TAG_UPDATE,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        summaryTagUpdateInput
      );

      return res;
    }
  }


  export class UserNetFlowControllerV2 {
    static async baseSummaryV2NetflowAddPost(userNetFlowInput: BaseSummaryDefinition.UserNetFlowInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V2_NETFLOW_ADD,
        {
        },
        {
        },
        {
        },
        userNetFlowInput
      );

      return res;
    }

    static async baseSummaryV2NetflowClearPost(input: BaseSummaryDefinition.UserAppletInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V2_NETFLOW_CLEAR,
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

    static async baseSummaryV2NetflowPreAddPost( userNetFlowInput: BaseSummaryDefinition.UserNetFlowInput,):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V2_NETFLOW_PRE_ADD,
        {
        },
        {
        },
        {
        },
        userNetFlowInput
      );

      return res;
    }

    static async baseSummaryV2NetflowQueryPost(channelType?: string,  ip?: string, userId?: number):Promise<ApiResponse<BaseSummaryDefinition.UserNetFlowOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.UserNetFlowOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.UserNetFlowOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V2_NETFLOW_QUERY,
        {
        },
        {
        },
        {
            // "channel_type": channelType,
            // "ip": ip,
            // "user_id": userId
        },
      );

      return res;
    }
  }


  export class SummaryTagControllerV2 {
    static async baseSummaryV2TagAddPost(summaryTagAddInput: BaseSummaryDefinition.SummaryTagAddInput):Promise<ApiResponse<BaseSummaryDefinition.SummaryTagAddOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryTagAddOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryTagAddOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V2_TAG_ADD,
        {
        },
        {
        },
        {
        },
        summaryTagAddInput
      );

      return res;
    }

    static async baseSummaryV2TagDeletePost(summaryTagDeleteInput: BaseSummaryDefinition.SummaryTagDeleteInput):Promise<ApiResponse<BaseSummaryDefinition.SummaryTagDeleteOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryTagDeleteOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryTagDeleteOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V2_TAG_DELETE,
        {
        },
        {
        },
        {
        },
        summaryTagDeleteInput
      );

      return res;
    }

    static async baseSummaryV2TagSelectMListMMemoPost( summaryTagListInput: BaseSummaryDefinition.SummaryTagListInput):Promise<ApiResponse<BaseSummaryDefinition.SummaryTagListOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryTagListOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryTagListOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V2_TAG_SELECT_LIST_MEMO_URL,
        {
        },
        {
        },
        {
        },
        summaryTagListInput
      );

      return res;
    }

    static async baseSummaryV2TagSortPost(input: BaseSummaryDefinition.IdsRequest):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V2_TAG_SORT,
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

    static async baseSummaryV2TagUpdatePost(summaryTagUpdateInput: BaseSummaryDefinition.SummaryTagUpdateInput):Promise<ApiResponse<BaseSummaryDefinition.SummaryTagUpdateOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryTagUpdateOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryTagUpdateOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V2_TAG_UPDATE,
        {
        },
        {
        },
        {
        },
        summaryTagUpdateInput
      );

      return res;
    }
  }


  export class SummaryTemplateControllerV3 {
    static async baseSummaryV3TemplateAddPost(channelType: string, input: BaseSummaryDefinition.SummaryTemplateInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V3_TEMPLATE_ADD,
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

    static async baseSummaryV3TemplateDeletePost(input: BaseSummaryDefinition.IdRequest):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V3_TEMPLATE_DELETE,
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

    static async baseSummaryV3TemplateDetailPost(input: BaseSummaryDefinition.SummaryTemplateDetailInput):Promise<ApiResponse<BaseSummaryDefinition.SummaryTemplateDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryTemplateDetailOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryTemplateDetailOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V3_TEMPLATE_DETAIL,
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

    static async baseSummaryV3TemplateListPost():Promise<ApiResponse<BaseSummaryDefinition.SummaryTemplateOutputV3Data> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryTemplateOutputV3Data> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryTemplateOutputV3Data>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V3_TEMPLATE_LIST,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseSummaryV3TemplateValidPost(channelType: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V3_TEMPLATE_VALID,
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

    static async baseSummaryV4TemplateAddPost(input: BaseSummaryDefinition.SummaryTemplateInputV4):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V4_TEMPLATE_ADD,
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

    static async baseSummaryV4TemplateChecknamePost( input: BaseSummaryDefinition.SummaryTemplateNameInput):Promise<ApiResponse<BaseSummaryDefinition.BooleanResponse> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.BooleanResponse> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.BooleanResponse>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V4_TEMPLATE_CHECK_NAME,
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
        BaseSummaryUrlConstant.CHECKALIVE,
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


  export class SummaryFolderControllerV2 {
    static async baseSummaryFolderV2AddPost(input: BaseSummaryDefinition.SummaryFolderAddInput):Promise<ApiResponse<BaseSummaryDefinition.FolderInfo> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.FolderInfo> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.FolderInfo>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_FOLDER_V2_ADD,
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

    static async baseSummaryFolderV2ClassifylistPost():Promise<ApiResponse<BaseSummaryDefinition.SummaryFolderListOutputV2> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryFolderListOutputV2> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryFolderListOutputV2>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_FOLDER_V2_CLASSIFY_LIST,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseSummaryFolderV2DeleteMAllPost(input: BaseSummaryDefinition.SummaryFolderDeleteInput):Promise<ApiResponse<BaseSummaryDefinition.SummaryFolderDeleteOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryFolderDeleteOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryFolderDeleteOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_FOLDER_V2_DELETE_ALL_URL,
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

    static async baseSummaryFolderV2DeleteMMovePost(input: BaseSummaryDefinition.SummaryFolderDeleteInput):Promise<ApiResponse<BaseSummaryDefinition.SummaryFolderDeleteOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryFolderDeleteOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryFolderDeleteOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_FOLDER_V2_DELETE_MOVE_URL,
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

    static async baseSummaryFolderV2FindbyidPost(input: BaseSummaryDefinition.SummaryFolderFindByIdInput, ip: string, userId: number):Promise<ApiResponse<BaseSummaryDefinition.FolderInfo> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.FolderInfo> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.FolderInfo>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_FOLDER_V2_FIND_BY_ID,
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

    static async baseSummaryFolderV2SelectMListPost(ip: string, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummaryFolderListOutputV2> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryFolderListOutputV2> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryFolderListOutputV2>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_FOLDER_V2_SELECT_LIST_URL,
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

    static async baseSummaryFolderV2SortPost(input: BaseSummaryDefinition.SortFolderInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_FOLDER_V2_SORT,
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

    static async baseSummaryFolderV2SuperfolderandclassifylistPost():Promise<ApiResponse<BaseSummaryDefinition.SummaryFolderListOutputV2> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryFolderListOutputV2> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryFolderListOutputV2>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_FOLDER_V2_SUPER_FOLDER_AND_CLASSIFY_LIST,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseSummaryFolderV2UpdatePost(ip: string, summaryFolderUpdateInput: BaseSummaryDefinition.SummaryFolderUpdateInput, userId: number):Promise<ApiResponse<BaseSummaryDefinition.FolderInfo> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.FolderInfo> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.FolderInfo>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_FOLDER_V2_UPDATE,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        summaryFolderUpdateInput
      );

      return res;
    }

    static async baseSummaryFolderV2UpdatewithsuperfolderPost(summaryFolderUpdateInput: BaseSummaryDefinition.SummaryFolderUpdateInput):Promise<ApiResponse<BaseSummaryDefinition.FolderInfo> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.FolderInfo> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.FolderInfo>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_FOLDER_V2_UPDATE_WITH_SUPER_FOLDER,
        {
        },
        {
        },
        {
        },
        summaryFolderUpdateInput
      );

      return res;
    }
  }


  export class SummaryPasswordControllerV2 {
    static async baseSummaryV2PasswordChecksummarypasswordPost(input: BaseSummaryDefinition.CheckSummaryPasswordInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V2_PASSWORD_CHECK_SUMMARY_PASSWORD,
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

    static async baseSummaryV2PasswordInitstatusPost():Promise<ApiResponse<BaseSummaryDefinition.PasswordInitStatusOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.PasswordInitStatusOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.PasswordInitStatusOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V2_PASSWORD_INIT_STATUS,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseSummaryV2PasswordUpdatepasswordPost(input: BaseSummaryDefinition.SummaryPasswordInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V2_PASSWORD_UPDATE_PASSWORD,
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

    static async baseSummaryV2PasswordUpdatesummaryencryptionPost(input: BaseSummaryDefinition.UpdateSummaryEncryptionInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V2_PASSWORD_UPDATE_SUMMARY_ENCRYPTION,
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


  export class SummaryControllerV2 {
    static async baseSummaryV2AddPost(input: BaseSummaryDefinition.SummaryAddInputV2):Promise<ApiResponse<BaseSummaryDefinition.SummaryOutputV2> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryOutputV2> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryOutputV2>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V2_ADD,
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

    static async baseSummaryV2AddbytemplatePost(input: BaseSummaryDefinition.InstantRequest, ip: string, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummaryOutputV2> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryOutputV2> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryOutputV2>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V2_ADD_BY_TEMPLATE,
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

    static async baseSummaryV2AddplaintextPost(input: BaseSummaryDefinition.SummaryAddPlainTextInput):Promise<ApiResponse<BaseSummaryDefinition.SummaryOutputV2> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryOutputV2> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryOutputV2>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V2_ADD_PLAIN_TEXT,
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

    static async baseSummaryV2AnnexlistbytypePost(input: BaseSummaryDefinition.AnnexListByTypeInput, userId?: number):Promise<PaginableResponse<Array<BaseSummaryDefinition.AnnexExtraOutput>> | null | undefined> {
      let res: PaginableResponse<Array<BaseSummaryDefinition.AnnexExtraOutput>> | null | undefined = await post<PaginableResponse<Array<BaseSummaryDefinition.AnnexExtraOutput>>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V2_ANNEX_LIST_BY_TYPE,
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

    static async baseSummaryV2AnnexoverviewPost(userId?: number):Promise<RowResponse<Array<BaseSummaryDefinition.AnnexOverviewOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseSummaryDefinition.AnnexOverviewOutput>> | null | undefined = await post<RowResponse<Array<BaseSummaryDefinition.AnnexOverviewOutput>>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V2_ANNEX_OVERVIEW,
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

    static async baseSummaryV2BatchdeletePost(input: BaseSummaryDefinition.BatchDeleteSummaryInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V2_BATCH_DELETE,
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

    static async baseSummaryV2BatchmoveinorouttrashPost(input: BaseSummaryDefinition.BatchMoveInOrOutTrashInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V2_BATCH_MOVE_IN_OR_OUT_TRASH,
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

    static async baseSummaryV2BatchupdatesummaryfolderPost(input: BaseSummaryDefinition.BatchUpdateSummaryFolderInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V2_BATCH_UPDATE_SUMMARY_FOLDER,
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

    static async baseSummaryV2DailysummarydataPost(input: BaseSummaryDefinition.DateRequest, userId: number):Promise<ApiResponse<BaseSummaryDefinition.DailySummaryDataUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.DailySummaryDataUsingPOSTRsp> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.DailySummaryDataUsingPOSTRsp>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V2_DAILY_SUMMARY_DATA,
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

    static async baseSummaryV2DeletePost(input: BaseSummaryDefinition.SummaryDeleteInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V2_DELETE,
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

    static async baseSummaryV2DetailPost(input: BaseSummaryDefinition.SummaryDetailInputV2):Promise<ApiResponse<BaseSummaryDefinition.SummaryDetailOutputV2> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryDetailOutputV2> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryDetailOutputV2>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V2_DETAIL,
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

    static async baseSummaryV2GenremindelementsPost(input: BaseSummaryDefinition.SummaryRemindViewInput, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummaryTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryTodoViewListOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V2_GEN_REMIND_ELEMENTS,
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

    static async baseSummaryV2HistorylistPost(input: BaseSummaryDefinition.IdRequest):Promise<ApiResponse<BaseSummaryDefinition.SummaryHistory> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryHistory> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryHistory>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V2_HISTORY_LIST,
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

    static async baseSummaryV2ListPost(input: BaseSummaryDefinition.SummaryListInput):Promise<BaseSummaryDefinition.SummaryListOutput | null | undefined> {
      let res: BaseSummaryDefinition.SummaryListOutput | null | undefined = await post<BaseSummaryDefinition.SummaryListOutput>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V2_LIST,
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

    static async baseSummaryV2MemorialdataPost(input: BaseSummaryDefinition.DateRangeRequest, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummaryPageOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryPageOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryPageOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V2_MEMORIAL_DATA,
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

    static async baseSummaryV2MoveinorouttrashPost(input: BaseSummaryDefinition.MoveInOrOutTrashInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V2_MOVE_IN_OR_OUT_TRASH,
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

    static async baseSummaryV2ResumePost(input: BaseSummaryDefinition.IdRequest, ip: string, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummaryOutputV2> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryOutputV2> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryOutputV2>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V2_RESUME,
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

    static async baseSummaryV2TrashsummarylistPost(input: BaseSummaryDefinition.SummaryListInput):Promise<PaginableResponse<BaseSummaryDefinition.SummaryOutputListV2> | null | undefined> {
      let res: PaginableResponse<BaseSummaryDefinition.SummaryOutputListV2> | null | undefined = await post<PaginableResponse<BaseSummaryDefinition.SummaryOutputListV2>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V2_TRASH_SUMMARY_LIST,
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

    static async baseSummaryV2UpdatePost(input: BaseSummaryDefinition.SummaryUpdateInputV2):Promise<ApiResponse<BaseSummaryDefinition.SummaryOutputV2> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryOutputV2> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryOutputV2>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V2_UPDATE,
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

    static async baseSummaryV2UpdateremindtimePost(input: BaseSummaryDefinition.SummaryUpdateRemindInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V2_UPDATE_REMIND_TIME,
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

    static async baseSummaryV2UpdatesummaryfolderPost(input: BaseSummaryDefinition.UpdateSummaryFolderInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V2_UPDATE_SUMMARY_FOLDER,
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

    static async baseSummaryV2UpdatesummarytopPost(input: BaseSummaryDefinition.UpdateSummaryTopInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V2_UPDATE_SUMMARY_TOP,
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


  export class SummaryControllerV1 {
    static async basePlanExportSummaryPost(summaryExportInput: BaseSummaryDefinition.SummaryExportInput, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummaryExportOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryExportOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryExportOutput>>(
        BaseSummaryUrlConstant.BASE_PLAN_EXPORT_SUMMARY,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        summaryExportInput
      );

      return res;
    }

    static async baseSummaryAddPost(ip: string, summaryAddInput: BaseSummaryDefinition.SummaryAddInput, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummaryAddOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryAddOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryAddOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_ADD,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        summaryAddInput
      );

      return res;
    }

    static async baseSummaryBuildMMemoPost(summaryBuildInput: BaseSummaryDefinition.SummaryBuildInput, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummaryBuildOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryBuildOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryBuildOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_BUILD_MEMO_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        summaryBuildInput
      );

      return res;
    }

    static async baseSummaryBuildMSummaryPost(summaryBuildInput: BaseSummaryDefinition.SummaryBuildInput, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummaryBuildOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryBuildOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryBuildOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_BUILD_SUMMARY_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        summaryBuildInput
      );

      return res;
    }

    static async baseSummaryDeletePost(input: BaseSummaryDefinition.SummaryDeleteInput, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummaryDeleteOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryDeleteOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryDeleteOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_DELETE,
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

    static async baseSummaryDeleteMAudioPost(input: BaseSummaryDefinition.SummaryDeleteAudioInput, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummaryDeleteOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryDeleteOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryDeleteOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_DELETE_AUDIO_URL,
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

    static async baseSummaryDeleteMPhotoPost(input: BaseSummaryDefinition.SummaryDeletePhotoInput, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummaryDeleteOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryDeleteOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryDeleteOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_DELETE_PHOTO_URL,
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

    static async baseSummaryDeleteMVideoPost(input: BaseSummaryDefinition.SummaryDeleteVideoInput, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummaryDeleteOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryDeleteOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryDeleteOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_DELETE_VIDEO_URL,
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

    static async baseSummaryExportHasMSummaryMDataPost(dto: BaseSummaryDefinition.SummaryExportDataInput, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummaryBooleanDataOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryBooleanDataOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryBooleanDataOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_EXPORT_HAS_SUMMARY_DATA_URL,
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

    static async baseSummaryExportRecommendMSectionMSummaryMDataPost(userId?: number):Promise<ApiResponse<BaseSummaryDefinition.RecommendSectionSummaryData> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.RecommendSectionSummaryData> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.RecommendSectionSummaryData>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_EXPORT_RECOMMEND_SECTION_SUMMARY_DATA_URL,
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

    static async baseSummaryGetMSummaryMCountPost(userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummaryCountOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryCountOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryCountOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_GET_SUMMARY_COUNT_URL,
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

    static async baseSummarySelectMByMDayPost(input: BaseSummaryDefinition.SummarySelectByDayInput, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummarySelectByDayOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummarySelectByDayOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummarySelectByDayOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_SELECT_BY_DAY_URL,
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

    static async baseSummarySelectMByMFolderMMemoPost(ip: string, summarySelectByFolderInput: BaseSummaryDefinition.SummarySelectByFolderInput, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummarySelectByPageOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummarySelectByPageOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummarySelectByPageOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_SELECT_BY_FOLDER_MEMO_URL,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        summarySelectByFolderInput
      );

      return res;
    }

    static async baseSummarySelectMByMIdMInfoPost(input: BaseSummaryDefinition.SummaryDetailInput, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummaryOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_SELECT_BY_ID_INFO_URL,
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

    static async baseSummarySelectMByMKeyMWordPost(input: BaseSummaryDefinition.SummarySelectByKeyWordInput, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummarySelectByKeyWordOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummarySelectByKeyWordOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummarySelectByKeyWordOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_SELECT_BY_KEY_WORD_URL,
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

    static async baseSummarySelectMByMKeyMWordMMemoPost(input: BaseSummaryDefinition.SummarySelectByKeyWordInput, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummarySelectByKeyWordOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummarySelectByKeyWordOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummarySelectByKeyWordOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_SELECT_BY_KEY_WORD_MEMO_URL,
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

    static async baseSummarySelectMByMMonthPost(input: BaseSummaryDefinition.SummarySelectByMonthInput, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummarySelectByMonthOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummarySelectByMonthOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummarySelectByMonthOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_SELECT_BY_MONTH_URL,
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

    static async baseSummarySelectMByMPagePost(summarySelectByPageInput: BaseSummaryDefinition.SummarySelectByPageInput, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummarySelectByPageOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummarySelectByPageOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummarySelectByPageOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_SELECT_BY_PAGE_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        summarySelectByPageInput
      );

      return res;
    }

    static async baseSummarySelectMByMPageMMemoPost(ip: string, summarySelectByPageInput: BaseSummaryDefinition.SummarySelectByPageInput, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummarySelectByPageOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummarySelectByPageOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummarySelectByPageOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_SELECT_BY_PAGE_MEMO_URL,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        summarySelectByPageInput
      );

      return res;
    }

    static async baseSummarySelectMByMTagPost(input: BaseSummaryDefinition.SummarySelectByTagInput, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummarySelectByTagOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummarySelectByTagOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummarySelectByTagOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_SELECT_BY_TAG_URL,
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

    static async baseSummarySelectMDetailPost(input: BaseSummaryDefinition.SummaryDetailInput, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummaryDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryDetailOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryDetailOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_SELECT_DETAIL_URL,
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

    static async baseSummarySelectMRecentMDetailsPost(input: BaseSummaryDefinition.SummaryDetailsInput, userId: number):Promise<RowResponse<Array<BaseSummaryDefinition.SummaryDetailOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseSummaryDefinition.SummaryDetailOutput>> | null | undefined = await post<RowResponse<Array<BaseSummaryDefinition.SummaryDetailOutput>>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_SELECT_RECENT_DETAILS_URL,
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

    static async baseSummarySortMFolderMMemoPost(summarySelectByFolderInput: BaseSummaryDefinition.SummaryFolderSortInput, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummaryFolderSortOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryFolderSortOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryFolderSortOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_SORT_FOLDER_MEMO_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        summarySelectByFolderInput
      );

      return res;
    }

    static async baseSummaryUpdatePost(ip: string, summaryUpdateInput: BaseSummaryDefinition.SummaryUpdateInput, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummaryUpdateOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryUpdateOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryUpdateOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_UPDATE,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        summaryUpdateInput
      );

      return res;
    }

    static async baseSummaryUpdateMStatusPost(input: BaseSummaryDefinition.SummaryUpdateStatusInput, ip: string, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummaryUpdateStatusOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryUpdateStatusOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryUpdateStatusOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_UPDATE_STATUS_URL,
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

    static async baseSummaryUpdateMStatusMMemoPost(input: BaseSummaryDefinition.SummaryUpdateStatusInput, ip: string, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummaryUpdateStatusOutput> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryUpdateStatusOutput> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryUpdateStatusOutput>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_UPDATE_STATUS_MEMO_URL,
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

    static async baseSummaryV1ExportPost(input: BaseSummaryDefinition.SummaryTransferCondition, userId: number):Promise<ApiResponse<BaseSummaryDefinition.SummaryTransferData> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.SummaryTransferData> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.SummaryTransferData>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V1_EXPORT,
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

    static async baseSummaryV1GetsummaryidPost(input: BaseSummaryDefinition.IdRequest, userId: number):Promise<ApiResponse<BaseSummaryDefinition.IdResponse> | null | undefined> {
      let res: ApiResponse<BaseSummaryDefinition.IdResponse> | null | undefined = await post<ApiResponse<BaseSummaryDefinition.IdResponse>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V1_GET_SUMMARY_ID,
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

    static async baseSummaryV1ImportPost(input: BaseSummaryDefinition.SummaryTransferData, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V1_IMPORT,
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

    static async baseSummaryV1SelectMByMIdsPost(ids: BaseSummaryDefinition.IdsRequest, userId: number):Promise<RowResponse<Array<BaseSummaryDefinition.AppletHistoryResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseSummaryDefinition.AppletHistoryResponse>> | null | undefined = await post<RowResponse<Array<BaseSummaryDefinition.AppletHistoryResponse>>>(
        BaseSummaryUrlConstant.BASE_SUMMARY_V1_SELECT_BY_IDS_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        ids
      );

      return res;
    }
  }
}
