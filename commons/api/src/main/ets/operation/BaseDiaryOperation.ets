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
import { BaseDiaryDefinition } from './../definition/BaseDiaryDefinition';
import { BaseDiaryUrlConstant } from './../constant/BaseDiaryUrlConstant';

export namespace BaseDiaryOperation {
  export class DiaryTagController {
    static async baseDiaryV1TagAddPost(diaryTagAddInput: BaseDiaryDefinition.DiaryTagAddInput, ip: string, userId: number):Promise<ApiResponse<BaseDiaryDefinition.DiaryTagAddOutput> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.DiaryTagAddOutput> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.DiaryTagAddOutput>>(
        BaseDiaryUrlConstant.BASE_DIARY_V1_TAG_ADD,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        diaryTagAddInput
      );

      return res;
    }

    static async baseDiaryV1TagDeletePost(diaryTagDeleteInput: BaseDiaryDefinition.DiaryTagDeleteInput, userId: number):Promise<ApiResponse<BaseDiaryDefinition.DiaryTagDeleteOutput> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.DiaryTagDeleteOutput> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.DiaryTagDeleteOutput>>(
        BaseDiaryUrlConstant.BASE_DIARY_V1_TAG_DELETE,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        diaryTagDeleteInput
      );

      return res;
    }

    static async baseDiaryV1TagListPost(ip: string, userId: number):Promise<ApiResponse<BaseDiaryDefinition.DiaryTagListOutput> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.DiaryTagListOutput> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.DiaryTagListOutput>>(
        BaseDiaryUrlConstant.BASE_DIARY_V1_TAG_LIST,
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

    static async baseDiaryV1TagUpdatePost(diaryTagUpdateInput: BaseDiaryDefinition.DiaryTagUpdateInput, userId: number):Promise<ApiResponse<BaseDiaryDefinition.DiaryTagUpdateOutput> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.DiaryTagUpdateOutput> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.DiaryTagUpdateOutput>>(
        BaseDiaryUrlConstant.BASE_DIARY_V1_TAG_UPDATE,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        diaryTagUpdateInput
      );

      return res;
    }
  }


  export class DiaryController {
    static async baseDiaryV2UpdateDiaryTop(input: BaseDiaryDefinition.DiaryTopInput):Promise<ApiResponse<BaseDiaryDefinition.DiaryInput> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.DiaryInput> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.DiaryInput>>(
        BaseDiaryUrlConstant.BASE_DIARY_V2_UPDATE_DIARY_TOP,
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

    static async baseDiaryV1AdduserdiaryPost(input: BaseDiaryDefinition.DiaryInput, ip: string, userId: number):Promise<ApiResponse<BaseDiaryDefinition.DiaryInput> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.DiaryInput> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.DiaryInput>>(
        BaseDiaryUrlConstant.BASE_DIARY_V1_ADD_USER_DIARY,
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

    static async baseDiaryV1DeleteuserdiaryPost(input: BaseDiaryDefinition.DiaryDetailInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDiaryUrlConstant.BASE_DIARY_V1_DELETE_USER_DIARY,
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

    static async baseDiaryV1ExportHasMDiaryMDataPost(dto: BaseDiaryDefinition.DiaryExportDataInput, userId: number):Promise<ApiResponse<BaseDiaryDefinition.BooleanDataOutput> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.BooleanDataOutput> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.BooleanDataOutput>>(
        BaseDiaryUrlConstant.BASE_DIARY_V1_EXPORT_HAS_DIARY_DATA_URL,
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

    static async baseDiaryV1ExportRecommendMSectionMDiaryMDataPost(userId?: number):Promise<ApiResponse<BaseDiaryDefinition.RecommendSectionDiaryData> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.RecommendSectionDiaryData> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.RecommendSectionDiaryData>>(
        BaseDiaryUrlConstant.BASE_DIARY_V1_EXPORT_RECOMMEND_SECTION_DIARY_DATA_URL,
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

    static async baseDiaryV1GerdiarydetailPost(input: BaseDiaryDefinition.DiaryDetailInput, userId: number):Promise<ApiResponse<BaseDiaryDefinition.DiaryDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.DiaryDetailOutput> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.DiaryDetailOutput>>(
        BaseDiaryUrlConstant.BASE_DIARY_V1_GER_DIARY_DETAIL,
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

    static async baseDiaryV1GermonthdiaryPost(input: BaseDiaryDefinition.DiaryMonthInput, userId: number):Promise<RowResponse<Array<BaseDiaryDefinition.DiaryMonthOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseDiaryDefinition.DiaryMonthOutput>> | null | undefined = await post<RowResponse<Array<BaseDiaryDefinition.DiaryMonthOutput>>>(
        BaseDiaryUrlConstant.BASE_DIARY_V1_GER_MONTH_DIARY,
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

    static async baseDiaryV1GetdiarycountPost(userId: number):Promise<ApiResponse<BaseDiaryDefinition.DiaryCountOutput> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.DiaryCountOutput> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.DiaryCountOutput>>(
        BaseDiaryUrlConstant.BASE_DIARY_V1_GET_DIARY_COUNT,
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

    static async baseDiaryV1GetdiaryidPost(input: BaseDiaryDefinition.IdRequest, userId: number):Promise<ApiResponse<BaseDiaryDefinition.IdResponse> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.IdResponse> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.IdResponse>>(
        BaseDiaryUrlConstant.BASE_DIARY_V1_GET_DIARY_ID,
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

    static async baseDiaryV1GetuserdiaryPost(input: BaseDiaryDefinition.DiaryQueryByDateInput, userId: number):Promise<ApiResponse<BaseDiaryDefinition.DiaryDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.DiaryDetailOutput> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.DiaryDetailOutput>>(
        BaseDiaryUrlConstant.BASE_DIARY_V1_GET_USER_DIARY,
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

    static async baseDiaryV1GetuserdiarysPost(input: BaseDiaryDefinition.DiarySearchInput, userId: number):Promise<ApiResponse<Page<BaseDiaryDefinition.DiaryDetailOutput>> | null | undefined> {
      let res: ApiResponse<Page<BaseDiaryDefinition.DiaryDetailOutput>> | null | undefined = await post<ApiResponse<Page<BaseDiaryDefinition.DiaryDetailOutput>>>(
        BaseDiaryUrlConstant.BASE_DIARY_V1_GET_USER_DIARYS,
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

    static async baseDiaryV1GlobaladdhistoryPost(idsRequest: BaseDiaryDefinition.IdsRequest, userId: number):Promise<RowResponse<Array<BaseDiaryDefinition.AppletHistoryResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseDiaryDefinition.AppletHistoryResponse>> | null | undefined = await post<RowResponse<Array<BaseDiaryDefinition.AppletHistoryResponse>>>(
        BaseDiaryUrlConstant.BASE_DIARY_V1_GLOBAL_ADD_HISTORY,
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

    static async baseDiaryV1SelectMByMKeywordPost(input: BaseDiaryDefinition.DiarySearchByKeywordInput, userId: number):Promise<RowResponse<Array<BaseDiaryDefinition.DiaryDetailOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseDiaryDefinition.DiaryDetailOutput>> | null | undefined = await post<RowResponse<Array<BaseDiaryDefinition.DiaryDetailOutput>>>(
        BaseDiaryUrlConstant.BASE_DIARY_V1_SELECT_BY_KEYWORD_URL,
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

    static async baseDiaryV1UpdateuserdiaryPost(input: BaseDiaryDefinition.DiaryUpdateInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDiaryUrlConstant.BASE_DIARY_V1_UPDATE_USER_DIARY,
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


  export class DiaryTemplateControllerV3 {
    static async baseDiaryV3TemplateAddPost(channelType: string, input: BaseDiaryDefinition.DiaryTemplateInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDiaryUrlConstant.BASE_DIARY_V3_TEMPLATE_ADD,
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

    static async baseDiaryV3TemplateDeletePost(input: BaseDiaryDefinition.IdRequest):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDiaryUrlConstant.BASE_DIARY_V3_TEMPLATE_DELETE,
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

    static async baseDiaryV3TemplateDetailPost(input: BaseDiaryDefinition.DiaryTemplateDetailInput):Promise<ApiResponse<BaseDiaryDefinition.DiaryTemplateDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.DiaryTemplateDetailOutput> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.DiaryTemplateDetailOutput>>(
        BaseDiaryUrlConstant.BASE_DIARY_V3_TEMPLATE_DETAIL,
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

    static async baseDiaryV3TemplateListPost():Promise<RowResponse<Array<BaseDiaryDefinition.DiaryTemplateOutputV3>> | null | undefined> {
      let res: RowResponse<Array<BaseDiaryDefinition.DiaryTemplateOutputV3>> | null | undefined = await post<RowResponse<Array<BaseDiaryDefinition.DiaryTemplateOutputV3>>>(
        BaseDiaryUrlConstant.BASE_DIARY_V3_TEMPLATE_LIST,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseDiaryV3TemplateValidPost(channelType: string, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDiaryUrlConstant.BASE_DIARY_V3_TEMPLATE_VALID,
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

    static async baseDiaryV4TemplateAddPost(input: BaseDiaryDefinition.DiaryTemplateInputV4):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDiaryUrlConstant.BASE_DIARY_V4_TEMPLATE_ADD,
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

    static async baseDiaryV4TemplateChecknamePost(input: BaseDiaryDefinition.DiaryTemplateNameInput):Promise<ApiResponse<BaseDiaryDefinition.BooleanResponse> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.BooleanResponse> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.BooleanResponse>>(
        BaseDiaryUrlConstant.BASE_DIARY_V4_TEMPLATE_CHECK_NAME,
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


  export class DiaryFinishedController {
    static async baseDiaryV1GetdiaryfinishedPost(input: BaseDiaryDefinition.DiaryFinishedSearchInput, userId: number):Promise<RowResponse<Array<BaseDiaryDefinition.DiaryFinishedOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseDiaryDefinition.DiaryFinishedOutput>> | null | undefined = await post<RowResponse<Array<BaseDiaryDefinition.DiaryFinishedOutput>>>(
        BaseDiaryUrlConstant.BASE_DIARY_V1_GET_DIARY_FINISHED,
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

    static async baseDiaryV1SetdiaryfinishedPost(input: BaseDiaryDefinition.DiaryFinishedInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDiaryUrlConstant.BASE_DIARY_V1_SET_DIARY_FINISHED,
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


  export class CheckAliveController {
    static async checkaliveGet():Promise<number | null | undefined> {
      let res: number | null | undefined = await get<number>(
        BaseDiaryUrlConstant.CHECKALIVE,
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


  export class DiaryPasswordControllerV2 {
    static async baseDiaryV2PasswordCheckdiarypasswordPost(input: BaseDiaryDefinition.CheckDiaryPasswordInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDiaryUrlConstant.BASE_DIARY_V2_PASSWORD_CHECK_DIARY_PASSWORD,
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

    static async baseDiaryV2PasswordInitstatusPost():Promise<ApiResponse<BaseDiaryDefinition.PasswordInitStatusOutput> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.PasswordInitStatusOutput> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.PasswordInitStatusOutput>>(
        BaseDiaryUrlConstant.BASE_DIARY_V2_PASSWORD_INIT_STATUS,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseDiaryV2PasswordUpdatediaryencryptionPost(input: BaseDiaryDefinition.UpdateDiaryEncryptionInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDiaryUrlConstant.BASE_DIARY_V2_PASSWORD_UPDATE_DIARY_ENCRYPTION,
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

    static async baseDiaryV2PasswordUpdatepasswordPost(input: BaseDiaryDefinition.DiaryPasswordInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDiaryUrlConstant.BASE_DIARY_V2_PASSWORD_UPDATE_PASSWORD,
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


  export class DiaryInitWrapperControllerV2 {
    static async baseDiaryV2IsinitandstartinitPost(ip: string, userId: number):Promise<ApiResponse<BaseDiaryDefinition.IsInitOutput> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.IsInitOutput> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.IsInitOutput>>(
        BaseDiaryUrlConstant.BASE_DIARY_V2_IS_INIT_AND_START_INIT,
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


  export class DiaryControllerV2 {
    static async baseDiaryV2AddPost(input: BaseDiaryDefinition.DiaryAddInputV2):Promise<ApiResponse<BaseDiaryDefinition.DiaryOutputV2> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.DiaryOutputV2> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.DiaryOutputV2>>(
        BaseDiaryUrlConstant.BASE_DIARY_V2_ADD,
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

    static async baseDiaryV2AddbytemplatePost(input: BaseDiaryDefinition.InstantRequest, ip: string, userId: number):Promise<ApiResponse<BaseDiaryDefinition.DiaryOutputV2> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.DiaryOutputV2> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.DiaryOutputV2>>(
        BaseDiaryUrlConstant.BASE_DIARY_V2_ADD_BY_TEMPLATE,
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

    static async baseDiaryV2AddplaintextPost(input: BaseDiaryDefinition.DiaryAddPlainTextInput):Promise<ApiResponse<BaseDiaryDefinition.DiaryOutputV2> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.DiaryOutputV2> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.DiaryOutputV2>>(
        BaseDiaryUrlConstant.BASE_DIARY_V2_ADD_PLAIN_TEXT,
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

    static async baseDiaryV2AnnexlistbytypePost(input: BaseDiaryDefinition.AnnexListByTypeInput):Promise<PaginableResponse<Array<BaseDiaryDefinition.AnnexListByTypeUsingPOSTRsp>> | null | undefined> {
      let res: PaginableResponse<Array<BaseDiaryDefinition.AnnexListByTypeUsingPOSTRsp>> | null | undefined = await post<PaginableResponse<Array<BaseDiaryDefinition.AnnexListByTypeUsingPOSTRsp>>>(
        BaseDiaryUrlConstant.BASE_DIARY_V2_ANNEX_LIST_BY_TYPE,
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

    static async baseDiaryV2AnnexoverviewPost():Promise<RowResponse<Array<BaseDiaryDefinition.AnnexOverviewOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseDiaryDefinition.AnnexOverviewOutput>> | null | undefined = await post<RowResponse<Array<BaseDiaryDefinition.AnnexOverviewOutput>>>(
        BaseDiaryUrlConstant.BASE_DIARY_V2_ANNEX_OVERVIEW,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseDiaryV2BatchdeletePost(input: BaseDiaryDefinition.BatchDeleteDiaryInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDiaryUrlConstant.BASE_DIARY_V2_BATCH_DELETE,
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

    static async baseDiaryV2BatchmoveinorouttrashPost(input: BaseDiaryDefinition.BatchMoveInOrOutTrashInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDiaryUrlConstant.BASE_DIARY_V2_BATCH_MOVE_IN_OR_OUT_TRASH,
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

    static async baseDiaryV2DaterangecountPost(input: BaseDiaryDefinition.DateRangeRequest, userId: number):Promise<ApiResponse<BaseDiaryDefinition.DiaryCountDto> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.DiaryCountDto> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.DiaryCountDto>>(
        BaseDiaryUrlConstant.BASE_DIARY_V2_DATE_RANGE_COUNT,
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

    static async baseDiaryV2DeletePost(input: BaseDiaryDefinition.DiaryDeleteInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDiaryUrlConstant.BASE_DIARY_V2_DELETE,
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

    static async baseDiaryV2DetailPost(input: BaseDiaryDefinition.DiaryDetailInput):Promise<ApiResponse<BaseDiaryDefinition.DiaryDetailOutputV2> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.DiaryDetailOutputV2> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.DiaryDetailOutputV2>>(
        BaseDiaryUrlConstant.BASE_DIARY_V2_DETAIL,
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

    static async baseDiaryV2GetdiarysbydatePost(input: BaseDiaryDefinition.DiaryQueryByDateInput):Promise<RowResponse<Array<BaseDiaryDefinition.DiaryOutputV2>> | null | undefined> {
      let res: RowResponse<Array<BaseDiaryDefinition.DiaryOutputV2>> | null | undefined = await post<RowResponse<Array<BaseDiaryDefinition.DiaryOutputV2>>>(
        BaseDiaryUrlConstant.BASE_DIARY_V2_GET_DIARYS_BY_DATE,
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

    static async baseDiaryV2GetmonthdiaryPost(input: BaseDiaryDefinition.DiaryMonthInput):Promise<RowResponse<Array<BaseDiaryDefinition.DiaryMonthOutputV2>> | null | undefined> {
      let res: RowResponse<Array<BaseDiaryDefinition.DiaryMonthOutputV2>> | null | undefined = await post<RowResponse<Array<BaseDiaryDefinition.DiaryMonthOutputV2>>>(
        BaseDiaryUrlConstant.BASE_DIARY_V2_GET_MONTH_DIARY,
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

    static async baseDiaryV2HastodaydiaryPost(input: BaseDiaryDefinition.HasTodayDiaryInput, userId: number):Promise<ApiResponse<BaseDiaryDefinition.HasTodayDiaryOutput> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.HasTodayDiaryOutput> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.HasTodayDiaryOutput>>(
        BaseDiaryUrlConstant.BASE_DIARY_V2_HAS_TODAY_DIARY,
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

    static async baseDiaryV2HistorydatacountPost(userId: number):Promise<ApiResponse<Map<string, number>> | null | undefined> {
      let res: ApiResponse<Map<string, number>> | null | undefined = await post<ApiResponse<Map<string, number>>>(
        BaseDiaryUrlConstant.BASE_DIARY_V2_HISTORY_DATA_COUNT,
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

    static async baseDiaryV2HistorylistPost(input: BaseDiaryDefinition.IdRequest):Promise<RowResponse<Array<BaseDiaryDefinition.DiaryHistoryOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseDiaryDefinition.DiaryHistoryOutput>> | null | undefined = await post<RowResponse<Array<BaseDiaryDefinition.DiaryHistoryOutput>>>(
        BaseDiaryUrlConstant.BASE_DIARY_V2_HISTORY_LIST,
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

    static async baseDiaryV2ListPost(input: BaseDiaryDefinition.DiaryListInput):Promise<BaseDiaryDefinition.DiaryListOutput | null | undefined> {
      let res: BaseDiaryDefinition.DiaryListOutput | null | undefined = await post<BaseDiaryDefinition.DiaryListOutput>(
        BaseDiaryUrlConstant.BASE_DIARY_V2_LIST,
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

    static async baseDiaryV2ListbytagidPost(input: BaseDiaryDefinition.DiaryTagQueryInput, userId: number):Promise<PaginableResponse<Array<BaseDiaryDefinition.DiaryOutputV2>> | null | undefined> {
      let res: PaginableResponse<Array<BaseDiaryDefinition.DiaryOutputV2>> | null | undefined = await post<PaginableResponse<Array<BaseDiaryDefinition.DiaryOutputV2>>>(
        BaseDiaryUrlConstant.BASE_DIARY_V2_LIST_BY_TAG_ID,
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

    static async baseDiaryV2MoveinorouttrashPost(input: BaseDiaryDefinition.MoveInOrOutTrashInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDiaryUrlConstant.BASE_DIARY_V2_MOVE_IN_OR_OUT_TRASH,
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

    static async baseDiaryV2ResumePost(input: BaseDiaryDefinition.IdRequest, ip: string, userId: number):Promise<ApiResponse<BaseDiaryDefinition.DiaryOutputV2> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.DiaryOutputV2> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.DiaryOutputV2>>(
        BaseDiaryUrlConstant.BASE_DIARY_V2_RESUME,
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

    static async baseDiaryV2TodayinhistoryPost(input: BaseDiaryDefinition.TodayInHistoryInput):Promise<ApiResponse<BaseDiaryDefinition.TodayInHistoryOutput> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.TodayInHistoryOutput> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.TodayInHistoryOutput>>(
        BaseDiaryUrlConstant.BASE_DIARY_V2_TODAY_IN_HISTORY,
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

    static async baseDiaryV2TrashdiarylistPost(input: BaseDiaryDefinition.PaginableRequest):Promise<PaginableResponse<Array<BaseDiaryDefinition.DiaryOutputV2>> | null | undefined> {
      let res: PaginableResponse<Array<BaseDiaryDefinition.DiaryOutputV2>> | null | undefined = await post<PaginableResponse<Array<BaseDiaryDefinition.DiaryOutputV2>>>(
        BaseDiaryUrlConstant.BASE_DIARY_V2_TRASH_DIARY_LIST,
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

    static async baseDiaryV2UpdatePost(input: BaseDiaryDefinition.DiaryUpdateInputV2):Promise<ApiResponse<BaseDiaryDefinition.DiaryOutputV2> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.DiaryOutputV2> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.DiaryOutputV2>>(
        BaseDiaryUrlConstant.BASE_DIARY_V2_UPDATE,
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


  export class DiaryTagControllerV2 {
    static async baseDiaryV2TagAddPost(diaryTagAddInput: BaseDiaryDefinition.DiaryTagAddInput):Promise<ApiResponse<BaseDiaryDefinition.DiaryTagAddOutput> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.DiaryTagAddOutput> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.DiaryTagAddOutput>>(
        BaseDiaryUrlConstant.BASE_DIARY_V2_TAG_ADD,
        {
        },
        {
        },
        {
        },
        diaryTagAddInput
      );

      return res;
    }

    static async baseDiaryV2TagDeletePost(diaryTagDeleteInput: BaseDiaryDefinition.DiaryTagDeleteInput):Promise<ApiResponse<BaseDiaryDefinition.DiaryTagDeleteOutput> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.DiaryTagDeleteOutput> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.DiaryTagDeleteOutput>>(
        BaseDiaryUrlConstant.BASE_DIARY_V2_TAG_DELETE,
        {
        },
        {
        },
        {
        },
        diaryTagDeleteInput
      );

      return res;
    }

    static async baseDiaryV2TagListPost(ip: string, userId: number):Promise<ApiResponse<BaseDiaryDefinition.DiaryTagListOutput> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.DiaryTagListOutput> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.DiaryTagListOutput>>(
        BaseDiaryUrlConstant.BASE_DIARY_V2_TAG_LIST,
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

    static async baseDiaryV2TagListwithdiarycountPost():Promise<ApiResponse<BaseDiaryDefinition.DiaryTagListOutputV2> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.DiaryTagListOutputV2> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.DiaryTagListOutputV2>>(
        BaseDiaryUrlConstant.BASE_DIARY_V2_TAG_LIST_WITH_DIARY_COUNT,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseDiaryV2TagSortPost(input: BaseDiaryDefinition.IdsRequest):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDiaryUrlConstant.BASE_DIARY_V2_TAG_SORT,
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

    static async baseDiaryV2TagUpdatePost(diaryTagUpdateInput: BaseDiaryDefinition.DiaryTagUpdateInput):Promise<ApiResponse<BaseDiaryDefinition.DiaryTagUpdateOutput> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.DiaryTagUpdateOutput> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.DiaryTagUpdateOutput>>(
        BaseDiaryUrlConstant.BASE_DIARY_V2_TAG_UPDATE,
        {
        },
        {
        },
        {
        },
        diaryTagUpdateInput
      );

      return res;
    }
  }


  export class DiaryFolderController {
    static async baseDiaryV1FolderAddPost(input: BaseDiaryDefinition.DiaryFolderDto):Promise<ApiResponse<BaseDiaryDefinition.DiaryFolderOutput> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.DiaryFolderOutput> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.DiaryFolderOutput>>(
        BaseDiaryUrlConstant.BASE_DIARY_V1_FOLDER_ADD,
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

    static async baseDiaryV1FolderBatchupdatediaryfolderPost(input: BaseDiaryDefinition.BatchUpdateDiaryFolderInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDiaryUrlConstant.BASE_DIARY_V1_FOLDER_BATCH_UPDATE_DIARY_FOLDER,
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

    static async baseDiaryV1FolderDeletePost(input: BaseDiaryDefinition.DiaryFolderDeleteInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDiaryUrlConstant.BASE_DIARY_V1_FOLDER_DELETE,
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

    static async baseDiaryV1FolderListPost():Promise<RowResponse<Array<BaseDiaryDefinition.DiaryFolderOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseDiaryDefinition.DiaryFolderOutput>> | null | undefined = await post<RowResponse<Array<BaseDiaryDefinition.DiaryFolderOutput>>>(
        BaseDiaryUrlConstant.BASE_DIARY_V1_FOLDER_LIST,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseDiaryV1FolderSortPost(input: BaseDiaryDefinition.SortFolderInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDiaryUrlConstant.BASE_DIARY_V1_FOLDER_SORT,
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

    static async baseDiaryV1FolderUpdatePost(input: BaseDiaryDefinition.DiaryFolderDto):Promise<ApiResponse<BaseDiaryDefinition.DiaryFolderOutput> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.DiaryFolderOutput> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.DiaryFolderOutput>>(
        BaseDiaryUrlConstant.BASE_DIARY_V1_FOLDER_UPDATE,
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


  export class DiaryPaperControllerV2 {
    static async baseDiaryPaperV2AddPost(input: BaseDiaryDefinition.DiaryPaperAddInput):Promise<ApiResponse<BaseDiaryDefinition.DiaryPaperListOutput> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.DiaryPaperListOutput> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.DiaryPaperListOutput>>(
        BaseDiaryUrlConstant.BASE_DIARY_PAPER_V2_ADD,
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

    static async baseDiaryPaperV2DeletePost(input: BaseDiaryDefinition.DiaryPaperDeleteInput):Promise<ApiResponse<BaseDiaryDefinition.DiaryPaperListOutput> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.DiaryPaperListOutput> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.DiaryPaperListOutput>>(
        BaseDiaryUrlConstant.BASE_DIARY_PAPER_V2_DELETE,
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

    static async baseDiaryPaperV2ListPost():Promise<ApiResponse<BaseDiaryDefinition.DiaryPaperListOutput> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.DiaryPaperListOutput> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.DiaryPaperListOutput>>(
        BaseDiaryUrlConstant.BASE_DIARY_PAPER_V2_LIST,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseDiaryPaperV2SetselectedPost(input: BaseDiaryDefinition.DiaryPaperSelectedInput):Promise<ApiResponse<BaseDiaryDefinition.DiaryPaperListOutput> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.DiaryPaperListOutput> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.DiaryPaperListOutput>>(
        BaseDiaryUrlConstant.BASE_DIARY_PAPER_V2_SET_SELECTED,
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

    static async baseDiaryPaperV2SetselectedfordiaryPost(input: BaseDiaryDefinition.DiaryPaperSetSelectedDiaryInput, ip: string, userId: number):Promise<ApiResponse<BaseDiaryDefinition.DiaryPaperListOutput> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.DiaryPaperListOutput> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.DiaryPaperListOutput>>(
        BaseDiaryUrlConstant.BASE_DIARY_PAPER_V2_SET_SELECTED_FOR_DIARY,
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


  export class DiaryRemindController {
    static async baseDiaryJobElementsPost(input: BaseDiaryDefinition.JobPullInput):Promise<Array<BaseDiaryDefinition.JobPullOutput> | null | undefined> {
      let res: Array<BaseDiaryDefinition.JobPullOutput> | null | undefined = await post<Array<BaseDiaryDefinition.JobPullOutput>>(
        BaseDiaryUrlConstant.BASE_DIARY_JOB_ELEMENTS,
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

    static async baseDiaryV1GetdiarytodoviewPost(input: BaseDiaryDefinition.DiaryTodoViewInput, userId: number):Promise<RowResponse<Array<BaseDiaryDefinition.DiaryTodoViewOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseDiaryDefinition.DiaryTodoViewOutput>> | null | undefined = await post<RowResponse<Array<BaseDiaryDefinition.DiaryTodoViewOutput>>>(
        BaseDiaryUrlConstant.BASE_DIARY_V1_GET_DIARY_TODO_VIEW,
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

    static async baseDiaryV1GetuserremindPost():Promise<ApiResponse<BaseDiaryDefinition.DiaryRemindOutput> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.DiaryRemindOutput> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.DiaryRemindOutput>>(
        BaseDiaryUrlConstant.BASE_DIARY_V1_GET_USER_REMIND,
        {
        },
        {
        },
        {

        },
      );

      return res;
    }

    static async baseDiaryV1GetremindelementsPost(input: BaseDiaryDefinition.DiaryTodoViewsInput, userId: number):Promise<ApiResponse<BaseDiaryDefinition.DiaryTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.DiaryTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.DiaryTodoViewListOutput>>(
        BaseDiaryUrlConstant.BASE_DIARY_V1_GETREMINDELEMENTS,
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

    static async baseDiaryV1InituserremindPost(ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDiaryUrlConstant.BASE_DIARY_V1_INIT_USER_REMIND,
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

    static async baseDiaryV1SetremindPost(input: BaseDiaryDefinition.DiaryRemindInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDiaryUrlConstant.BASE_DIARY_V1_SET_REMIND,
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

    static async baseDiaryV1TodoUViewUListPost(input: BaseDiaryDefinition.DiaryTodoViewsInput, userId: number):Promise<ApiResponse<BaseDiaryDefinition.DiaryTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseDiaryDefinition.DiaryTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseDiaryDefinition.DiaryTodoViewListOutput>>(
        BaseDiaryUrlConstant.BASE_DIARY_V1_TODO_VIEW_LIST_URL,
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
}
