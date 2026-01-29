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
import { BaseWorkDefinition } from './../definition/BaseWorkDefinition';
import { BaseWorkUrlConstant } from './../constant/BaseWorkUrlConstant';

export namespace BaseWorkOperation {
  export class WorkRecordController {
    static async baseWorkV1LeaveaddPost(input: BaseWorkDefinition.LeaveAddUsingPOSTRequestBody):Promise<ApiResponse<BaseWorkDefinition.LeaveAddUsingPOSTRequestBody> | null | undefined> {
      let res: ApiResponse<BaseWorkDefinition.LeaveAddUsingPOSTRequestBody> | null | undefined = await post<ApiResponse<BaseWorkDefinition.LeaveAddUsingPOSTRequestBody>>(
        BaseWorkUrlConstant.BASE_WORK_V1_LEAVE_ADD,
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

    static async baseWorkV1LeavecalcPost(input: BaseWorkDefinition.LeaveCalcUsingPOSTRequestBody):Promise<ApiResponse<BaseWorkDefinition.LeaveCalcUsingPOSTRequestBody> | null | undefined> {
      let res: ApiResponse<BaseWorkDefinition.LeaveCalcUsingPOSTRequestBody> | null | undefined = await post<ApiResponse<BaseWorkDefinition.LeaveCalcUsingPOSTRequestBody>>(
        BaseWorkUrlConstant.BASE_WORK_V1_LEAVE_CALC,
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

    static async baseWorkV1LeavedeletePost(input: BaseWorkDefinition.IdRequest):Promise<BaseWorkDefinition.IdResponse | null | undefined> {
      let res: BaseWorkDefinition.IdResponse | null | undefined = await post<BaseWorkDefinition.IdResponse>(
        BaseWorkUrlConstant.BASE_WORK_V1_LEAVE_DELETE,
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

    static async baseWorkV1OvertimeRuleaddPost(input: BaseWorkDefinition.OverTimeWorkRule):Promise<ApiResponse<BaseWorkDefinition.OverTimeWorkRule> | null | undefined> {
      let res: ApiResponse<BaseWorkDefinition.OverTimeWorkRule> | null | undefined = await post<ApiResponse<BaseWorkDefinition.OverTimeWorkRule>>(
        BaseWorkUrlConstant.BASE_WORK_V1_OVERTIME_RULE_ADD,
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

    static async baseWorkV1OvertimeRulequeryPost(input: BaseWorkDefinition.StatisticsInput):Promise<ApiResponse<BaseWorkDefinition.OverTimeWorkRule> | null | undefined> {
      let res: ApiResponse<BaseWorkDefinition.OverTimeWorkRule> | null | undefined = await post<ApiResponse<BaseWorkDefinition.OverTimeWorkRule>>(
        BaseWorkUrlConstant.BASE_WORK_V1_OVERTIME_RULE_QUERY,
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

    static async baseWorkV1RemindAddPost(input: BaseWorkDefinition.RemindConfig):Promise<ApiResponse<BaseWorkDefinition.RemindConfig> | null | undefined> {
      let res: ApiResponse<BaseWorkDefinition.RemindConfig> | null | undefined = await post<ApiResponse<BaseWorkDefinition.RemindConfig>>(
        BaseWorkUrlConstant.BASE_WORK_V1_REMIND_ADD,
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

    static async baseWorkV1RemindQueryPost():Promise<RowResponse<Array<BaseWorkDefinition.RemindConfig>> | null | undefined> {
      let res: RowResponse<Array<BaseWorkDefinition.RemindConfig>> | null | undefined = await post<RowResponse<Array<BaseWorkDefinition.RemindConfig>>>(
        BaseWorkUrlConstant.BASE_WORK_V1_REMIND_QUERY,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseWorkV1ScheduleStatisticsPost(input: BaseWorkDefinition.StatisticsInput):Promise<ApiResponse<BaseWorkDefinition.WorkStatisticsUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<BaseWorkDefinition.WorkStatisticsUsingPOSTRsp> | null | undefined = await post<ApiResponse<BaseWorkDefinition.WorkStatisticsUsingPOSTRsp>>(
        BaseWorkUrlConstant.BASE_WORK_V1_SCHEDULE_STATISTICS,
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

    static async baseWorkV1ScheduleStatisticschangeshiftsPost(input: BaseWorkDefinition.StatisticsDetailInput):Promise<RowResponse<Array<BaseWorkDefinition.WorkStatisticsChangeShiftsUsingPOSTRsp>> | null | undefined> {
      let res: RowResponse<Array<BaseWorkDefinition.WorkStatisticsChangeShiftsUsingPOSTRsp>> | null | undefined = await post<RowResponse<Array<BaseWorkDefinition.WorkStatisticsChangeShiftsUsingPOSTRsp>>>(
        BaseWorkUrlConstant.BASE_WORK_V1_SCHEDULE_STATISTICS_CHANGE_SHIFTS,
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

    static async baseWorkV1ScheduleStatisticsdetailPost(input: BaseWorkDefinition.StatisticsDetailInput):Promise<ApiResponse<BaseWorkDefinition.StatisticsDetailUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<BaseWorkDefinition.StatisticsDetailUsingPOSTRsp> | null | undefined = await post<ApiResponse<BaseWorkDefinition.StatisticsDetailUsingPOSTRsp>>(
        BaseWorkUrlConstant.BASE_WORK_V1_SCHEDULE_STATISTICS_DETAIL,
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

    static async baseWorkV1TraveladdPost(input: BaseWorkDefinition.TravelWorkDto):Promise<ApiResponse<BaseWorkDefinition.TravelWorkDto> | null | undefined> {
      let res: ApiResponse<BaseWorkDefinition.TravelWorkDto> | null | undefined = await post<ApiResponse<BaseWorkDefinition.TravelWorkDto>>(
        BaseWorkUrlConstant.BASE_WORK_V1_TRAVEL_ADD,
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

    static async baseWorkV1TraveldeletePost(input: BaseWorkDefinition.IdRequest):Promise<BaseWorkDefinition.IdResponse | null | undefined> {
      let res: BaseWorkDefinition.IdResponse | null | undefined = await post<BaseWorkDefinition.IdResponse>(
        BaseWorkUrlConstant.BASE_WORK_V1_TRAVEL_DELETE,
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

    static async baseWorkV1WorkaddPost(input: BaseWorkDefinition.WorkRecordDto):Promise<ApiResponse<BaseWorkDefinition.WorkRecordDto> | null | undefined> {
      let res: ApiResponse<BaseWorkDefinition.WorkRecordDto> | null | undefined = await post<ApiResponse<BaseWorkDefinition.WorkRecordDto>>(
        BaseWorkUrlConstant.BASE_WORK_V1_WORK_ADD,
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

    static async baseWorkV1WorkfinishPost(input: BaseWorkDefinition.WorkFinishUsingPOSTRequestBody):Promise<ApiResponse<BaseWorkDefinition.WorkFinishUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<BaseWorkDefinition.WorkFinishUsingPOSTRsp> | null | undefined = await post<ApiResponse<BaseWorkDefinition.WorkFinishUsingPOSTRsp>>(
        BaseWorkUrlConstant.BASE_WORK_V1_WORK_FINISH,
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
        BaseWorkUrlConstant.CHECKALIVE,
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


  export class SyncWorkController {
    static async baseWorkV1SyncshiftinfoPost(dto: BaseWorkDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseWorkDefinition.ShiftInfoOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseWorkDefinition.ShiftInfoOutput>> | null | undefined = await post<RowResponse<Array<BaseWorkDefinition.ShiftInfoOutput>>>(
        BaseWorkUrlConstant.BASE_WORK_V1_SYNC_SHIFT_INFO,
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

    static async baseWorkV1SyncworkdetailPost(dto: BaseWorkDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseWorkDefinition.WorkImpressionOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseWorkDefinition.WorkImpressionOutput>> | null | undefined = await post<RowResponse<Array<BaseWorkDefinition.WorkImpressionOutput>>>(
        BaseWorkUrlConstant.BASE_WORK_V1_SYNC_WORK_DETAIL,
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

    static async baseWorkV1SyncworktablePost(dto: BaseWorkDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseWorkDefinition.WorkTableOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseWorkDefinition.WorkTableOutput>> | null | undefined = await post<RowResponse<Array<BaseWorkDefinition.WorkTableOutput>>>(
        BaseWorkUrlConstant.BASE_WORK_V1_SYNC_WORK_TABLE,
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


  export class WorkController {
    static async baseWorkV1DaterangecountPost(input: BaseWorkDefinition.DateRangeRequest, userId: number):Promise<ApiResponse<BaseWorkDefinition.WorkCountOutput> | null | undefined> {
      let res: ApiResponse<BaseWorkDefinition.WorkCountOutput> | null | undefined = await post<ApiResponse<BaseWorkDefinition.WorkCountOutput>>(
        BaseWorkUrlConstant.BASE_WORK_V1_DATE_RANGE_COUNT,
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

    static async baseWorkV1GetremindelementsPost(input: BaseWorkDefinition.WorkTodoViewInput, userId: number):Promise<ApiResponse<BaseWorkDefinition.WorkTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseWorkDefinition.WorkTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseWorkDefinition.WorkTodoViewListOutput>>(
        BaseWorkUrlConstant.BASE_WORK_V1_GETREMINDELEMENTS,
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

    static async baseWorkV1HistorydatacountPost():Promise<ApiResponse<Map<string, number>> | null | undefined> {
      let res: ApiResponse<Map<string, number>> | null | undefined = await post<ApiResponse<Map<string, number>>>(
        BaseWorkUrlConstant.BASE_WORK_V1_HISTORY_DATA_COUNT,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseWorkV1JobelementsPost(input: BaseWorkDefinition.JobPullInput):Promise<Array<BaseWorkDefinition.JobPullOutput> | null | undefined> {
      let res: Array<BaseWorkDefinition.JobPullOutput> | null | undefined = await post<Array<BaseWorkDefinition.JobPullOutput>>(
        BaseWorkUrlConstant.BASE_WORK_V1_JOB_ELEMENTS,
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

    static async baseWorkV1ScheduleChangeshiftsaddPost(input: BaseWorkDefinition.ChangeShiftsAddInput):Promise<ApiResponse<BaseWorkDefinition.TableInfoOutput> | null | undefined> {
      let res: ApiResponse<BaseWorkDefinition.TableInfoOutput> | null | undefined = await post<ApiResponse<BaseWorkDefinition.TableInfoOutput>>(
        BaseWorkUrlConstant.BASE_WORK_V1_SCHEDULE_CHANGE_SHIFTS_ADD,
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

    static async baseWorkV1ScheduleDetailPost(input: BaseWorkDefinition.WorkDateInput):Promise<ApiResponse<BaseWorkDefinition.ScheduleDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseWorkDefinition.ScheduleDetailOutput> | null | undefined = await post<ApiResponse<BaseWorkDefinition.ScheduleDetailOutput>>(
        BaseWorkUrlConstant.BASE_WORK_V1_SCHEDULE_DETAIL,
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

    static async baseWorkV1ScheduleDetailforservicePost(input: BaseWorkDefinition.WorkDateInput):Promise<ApiResponse<BaseWorkDefinition.ScheduleDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseWorkDefinition.ScheduleDetailOutput> | null | undefined = await post<ApiResponse<BaseWorkDefinition.ScheduleDetailOutput>>(
        BaseWorkUrlConstant.BASE_WORK_V1_SCHEDULE_DETAIL_FOR_SERVICE,
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

    static async baseWorkV1ScheduleListPost(input: BaseWorkDefinition.ScheduleListInput):Promise<RowResponse<Array<BaseWorkDefinition.ScheduleListOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseWorkDefinition.ScheduleListOutput>> | null | undefined = await post<RowResponse<Array<BaseWorkDefinition.ScheduleListOutput>>>(
        BaseWorkUrlConstant.BASE_WORK_V1_SCHEDULE_LIST,
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

    static async baseWorkV1ScheduleListforservicePost(input: BaseWorkDefinition.ScheduleListInput):Promise<RowResponse<Array<BaseWorkDefinition.ScheduleListOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseWorkDefinition.ScheduleListOutput>> | null | undefined = await post<RowResponse<Array<BaseWorkDefinition.ScheduleListOutput>>>(
        BaseWorkUrlConstant.BASE_WORK_V1_SCHEDULE_LIST_FOR_SERVICE,
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

    static async baseWorkV1ScheduleManualaddPost(input: BaseWorkDefinition.ManualAddInput):Promise<ApiResponse<BaseWorkDefinition.TableInfoOutput> | null | undefined> {
      let res: ApiResponse<BaseWorkDefinition.TableInfoOutput> | null | undefined = await post<ApiResponse<BaseWorkDefinition.TableInfoOutput>>(
        BaseWorkUrlConstant.BASE_WORK_V1_SCHEDULE_MANUAL_ADD,
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

    static async baseWorkV1ScheduleRegularaddPost(input: BaseWorkDefinition.RegularAddInput):Promise<ApiResponse<BaseWorkDefinition.TableInfoOutput> | null | undefined> {
      let res: ApiResponse<BaseWorkDefinition.TableInfoOutput> | null | undefined = await post<ApiResponse<BaseWorkDefinition.TableInfoOutput>>(
        BaseWorkUrlConstant.BASE_WORK_V1_SCHEDULE_REGULAR_ADD,
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

    static async baseWorkV1ShiftDeletePost(input: BaseWorkDefinition.IdListInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseWorkUrlConstant.BASE_WORK_V1_SHIFT_DELETE,
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

    static async baseWorkV1ShiftSavePost(input: BaseWorkDefinition.ShiftSaveInput):Promise<ApiResponse<BaseWorkDefinition.ShiftInfoOutput> | null | undefined> {
      let res: ApiResponse<BaseWorkDefinition.ShiftInfoOutput> | null | undefined = await post<ApiResponse<BaseWorkDefinition.ShiftInfoOutput>>(
        BaseWorkUrlConstant.BASE_WORK_V1_SHIFT_SAVE,
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

    static async baseWorkV1ShiftShiftlistPost():Promise<RowResponse<Array<BaseWorkDefinition.ShiftInfoOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseWorkDefinition.ShiftInfoOutput>> | null | undefined = await post<RowResponse<Array<BaseWorkDefinition.ShiftInfoOutput>>>(
        BaseWorkUrlConstant.BASE_WORK_V1_SHIFT_SHIFT_LIST,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseWorkV1ShiftShiftsortPost(input: BaseWorkDefinition.IdListInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseWorkUrlConstant.BASE_WORK_V1_SHIFT_SHIFT_SORT,
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

    static async baseWorkV1ShiftUpdatePost(input: BaseWorkDefinition.ShiftUpdateInput):Promise<ApiResponse<BaseWorkDefinition.ShiftInfoOutput> | null | undefined> {
      let res: ApiResponse<BaseWorkDefinition.ShiftInfoOutput> | null | undefined = await post<ApiResponse<BaseWorkDefinition.ShiftInfoOutput>>(
        BaseWorkUrlConstant.BASE_WORK_V1_SHIFT_UPDATE,
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

    static async baseWorkV1TableDeletePost(input: BaseWorkDefinition.IdListInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseWorkUrlConstant.BASE_WORK_V1_TABLE_DELETE,
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

    static async baseWorkV1TableQueryPost():Promise<RowResponse<Array<BaseWorkDefinition.TableListItemOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseWorkDefinition.TableListItemOutput>> | null | undefined = await post<RowResponse<Array<BaseWorkDefinition.TableListItemOutput>>>(
        BaseWorkUrlConstant.BASE_WORK_V1_TABLE_QUERY,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseWorkV1TableQuerydetailPost(input: BaseWorkDefinition.TableIdInput):Promise<ApiResponse<BaseWorkDefinition.QueryDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseWorkDefinition.QueryDetailOutput> | null | undefined = await post<ApiResponse<BaseWorkDefinition.QueryDetailOutput>>(
        BaseWorkUrlConstant.BASE_WORK_V1_TABLE_QUERY_DETAIL,
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

    static async baseWorkV1TableTablesortPost(input: BaseWorkDefinition.IdListInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseWorkUrlConstant.BASE_WORK_V1_TABLE_TABLE_SORT,
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

    static async baseWorkV1TableUpdateflagPost(input: BaseWorkDefinition.TableIdInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseWorkUrlConstant.BASE_WORK_V1_TABLE_UPDATE_FLAG,
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

    static async baseWorkV1TodoUViewUListPost(input: BaseWorkDefinition.WorkTodoViewInput):Promise<ApiResponse<BaseWorkDefinition.WorkTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseWorkDefinition.WorkTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseWorkDefinition.WorkTodoViewListOutput>>(
        BaseWorkUrlConstant.BASE_WORK_V1_TODO_VIEW_LIST_URL,
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
