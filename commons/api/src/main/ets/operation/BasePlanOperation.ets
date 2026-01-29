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
import { BasePlanDefinition } from './../definition/BasePlanDefinition';
import { BasePlanUrlConstant } from './../constant/BasePlanUrlConstant';

export namespace BasePlanOperation {
  export class NativeInitController {
    static async nativeInitclassifydataGet(channelType: string, ip: string, mobile: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await get<ApiResponse<Map<string, object>>>(
        BasePlanUrlConstant.NATIVE_INIT_CLASSIFY_DATA,
        {
        },
        {
            "channelType": channelType,
            "ip": ip,
            "mobile": mobile,
            "userId": userId
        },
        {
        },
      );

      return res;
    }

    static async nativeInitclassifydataPost(channelType: string, ip: string, mobile: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BasePlanUrlConstant.NATIVE_INIT_CLASSIFY_DATA,
        {
        },
        {
            "channelType": channelType,
            "ip": ip,
            "mobile": mobile,
            "userId": userId
        },
        {
        },
      );

      return res;
    }

    static async nativeInitclassifydataHead(channelType: string, ip: string, mobile: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await head<ApiResponse<Map<string, object>>>(
        BasePlanUrlConstant.NATIVE_INIT_CLASSIFY_DATA,
        {
        },
        {
            "channelType": channelType,
            "ip": ip,
            "mobile": mobile,
            "userId": userId
        },
        {
        },
      );

      return res;
    }

    static async nativeInitclassifydataRemove(channelType: string, ip: string, mobile: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await remove<ApiResponse<Map<string, object>>>(
        BasePlanUrlConstant.NATIVE_INIT_CLASSIFY_DATA,
        {
        },
        {
            "channelType": channelType,
            "ip": ip,
            "mobile": mobile,
            "userId": userId
        },
        {
        },
      );

      return res;
    }

    static async nativeInitclassifydataPut(channelType: string, ip: string, mobile: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await put<ApiResponse<Map<string, object>>>(
        BasePlanUrlConstant.NATIVE_INIT_CLASSIFY_DATA,
        {
        },
        {
            "channelType": channelType,
            "ip": ip,
            "mobile": mobile,
            "userId": userId
        },
        {
        },
      );

      return res;
    }

    static async nativeInitclassifydataOptions(channelType: string, ip: string, mobile: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await options<ApiResponse<Map<string, object>>>(
        BasePlanUrlConstant.NATIVE_INIT_CLASSIFY_DATA,
        {
        },
        {
            "channelType": channelType,
            "ip": ip,
            "mobile": mobile,
            "userId": userId
        },
        {
        },
      );

      return res;
    }

    static async nativeInitclassifydataPatch(channelType: string, ip: string, mobile: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await patch<ApiResponse<Map<string, object>>>(
        BasePlanUrlConstant.NATIVE_INIT_CLASSIFY_DATA,
        {
        },
        {
            "channelType": channelType,
            "ip": ip,
            "mobile": mobile,
            "userId": userId
        },
        {
        },
      );

      return res;
    }

    static async nativeInitdatabyrecord110Get(channelType: string, ip: string, mobile: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await get<ApiResponse<Map<string, object>>>(
        BasePlanUrlConstant.NATIVE_INIT_DATA_BY_RECORD110,
        {
        },
        {
            "channelType": channelType,
            "ip": ip,
            "mobile": mobile,
            "userId": userId
        },
        {
        },
      );

      return res;
    }

    static async nativeInitdatabyrecord110Post(channelType: string, ip: string, mobile: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BasePlanUrlConstant.NATIVE_INIT_DATA_BY_RECORD110,
        {
        },
        {
            "channelType": channelType,
            "ip": ip,
            "mobile": mobile,
            "userId": userId
        },
        {
        },
      );

      return res;
    }

    static async nativeInitdatabyrecord110Head(channelType: string, ip: string, mobile: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await head<ApiResponse<Map<string, object>>>(
        BasePlanUrlConstant.NATIVE_INIT_DATA_BY_RECORD110,
        {
        },
        {
            "channelType": channelType,
            "ip": ip,
            "mobile": mobile,
            "userId": userId
        },
        {
        },
      );

      return res;
    }

    static async nativeInitdatabyrecord110Remove(channelType: string, ip: string, mobile: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await remove<ApiResponse<Map<string, object>>>(
        BasePlanUrlConstant.NATIVE_INIT_DATA_BY_RECORD110,
        {
        },
        {
            "channelType": channelType,
            "ip": ip,
            "mobile": mobile,
            "userId": userId
        },
        {
        },
      );

      return res;
    }

    static async nativeInitdatabyrecord110Put(channelType: string, ip: string, mobile: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await put<ApiResponse<Map<string, object>>>(
        BasePlanUrlConstant.NATIVE_INIT_DATA_BY_RECORD110,
        {
        },
        {
            "channelType": channelType,
            "ip": ip,
            "mobile": mobile,
            "userId": userId
        },
        {
        },
      );

      return res;
    }

    static async nativeInitdatabyrecord110Options(channelType: string, ip: string, mobile: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await options<ApiResponse<Map<string, object>>>(
        BasePlanUrlConstant.NATIVE_INIT_DATA_BY_RECORD110,
        {
        },
        {
            "channelType": channelType,
            "ip": ip,
            "mobile": mobile,
            "userId": userId
        },
        {
        },
      );

      return res;
    }

    static async nativeInitdatabyrecord110Patch(channelType: string, ip: string, mobile: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await patch<ApiResponse<Map<string, object>>>(
        BasePlanUrlConstant.NATIVE_INIT_DATA_BY_RECORD110,
        {
        },
        {
            "channelType": channelType,
            "ip": ip,
            "mobile": mobile,
            "userId": userId
        },
        {
        },
      );

      return res;
    }

    static async nativeInituserdataGet(channelType: string, ip: string, mobile: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await get<ApiResponse<Map<string, object>>>(
        BasePlanUrlConstant.NATIVE_INIT_USER_DATA,
        {
        },
        {
            "channelType": channelType,
            "ip": ip,
            "mobile": mobile,
            "userId": userId
        },
        {
        },
      );

      return res;
    }

    static async nativeInituserdataPost(channelType: string, ip: string, mobile: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BasePlanUrlConstant.NATIVE_INIT_USER_DATA,
        {
        },
        {
            "channelType": channelType,
            "ip": ip,
            "mobile": mobile,
            "userId": userId
        },
        {
        },
      );

      return res;
    }

    static async nativeInituserdataHead(channelType: string, ip: string, mobile: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await head<ApiResponse<Map<string, object>>>(
        BasePlanUrlConstant.NATIVE_INIT_USER_DATA,
        {
        },
        {
            "channelType": channelType,
            "ip": ip,
            "mobile": mobile,
            "userId": userId
        },
        {
        },
      );

      return res;
    }

    static async nativeInituserdataRemove(channelType: string, ip: string, mobile: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await remove<ApiResponse<Map<string, object>>>(
        BasePlanUrlConstant.NATIVE_INIT_USER_DATA,
        {
        },
        {
            "channelType": channelType,
            "ip": ip,
            "mobile": mobile,
            "userId": userId
        },
        {
        },
      );

      return res;
    }

    static async nativeInituserdataPut(channelType: string, ip: string, mobile: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await put<ApiResponse<Map<string, object>>>(
        BasePlanUrlConstant.NATIVE_INIT_USER_DATA,
        {
        },
        {
            "channelType": channelType,
            "ip": ip,
            "mobile": mobile,
            "userId": userId
        },
        {
        },
      );

      return res;
    }

    static async nativeInituserdataOptions(channelType: string, ip: string, mobile: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await options<ApiResponse<Map<string, object>>>(
        BasePlanUrlConstant.NATIVE_INIT_USER_DATA,
        {
        },
        {
            "channelType": channelType,
            "ip": ip,
            "mobile": mobile,
            "userId": userId
        },
        {
        },
      );

      return res;
    }

    static async nativeInituserdataPatch(channelType: string, ip: string, mobile: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await patch<ApiResponse<Map<string, object>>>(
        BasePlanUrlConstant.NATIVE_INIT_USER_DATA,
        {
        },
        {
            "channelType": channelType,
            "ip": ip,
            "mobile": mobile,
            "userId": userId
        },
        {
        },
      );

      return res;
    }
  }


  export class RecordSortController {
    static async basePlanRecordAddrecordtopPost(input: BasePlanDefinition.PlanRecordTopInput, ip: string):Promise<ApiResponse<BasePlanDefinition.RecordTopOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.RecordTopOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.RecordTopOutput>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_ADD_RECORD_TOP,
        {
        },
        {
        },
        {
            "ip": ip,
        },
        input
      );

      return res;
    }

    static async basePlanRecordBatchremoverecordtopPost(input: BasePlanDefinition.PlanRecordTopInput, ip: string, userId: number):Promise<ApiResponse<BasePlanDefinition.RecordTopOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.RecordTopOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.RecordTopOutput>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_BATCH_REMOVE_RECORD_TOP,
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

    static async basePlanRecordGetsortPost(ip: string, userId: number):Promise<ApiResponse<BasePlanDefinition.RecordSortOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.RecordSortOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.RecordSortOutput>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_GETSORT,
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

    static async basePlanRecordMydayFindmydayrecordsortPost(input: BasePlanDefinition.RecordSortMydayFindInput, userId: number):Promise<RowResponse<Array<BasePlanDefinition.RecordSortMydayOutput>> | null | undefined> {
      let res: RowResponse<Array<BasePlanDefinition.RecordSortMydayOutput>> | null | undefined = await post<RowResponse<Array<BasePlanDefinition.RecordSortMydayOutput>>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_MYDAY_FIND_MYDAY_RECORD_SORT,
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

    static async basePlanRecordMydaySortPost(input: BasePlanDefinition.RecordSortMydayInput, ip?: string, userId?: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_MYDAY_SORT,
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

    static async basePlanRecordMydaySyncMSortPost(dto: BasePlanDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BasePlanDefinition.RecordSortMydayOutput>> | null | undefined> {
      let res: RowResponse<Array<BasePlanDefinition.RecordSortMydayOutput>> | null | undefined = await post<RowResponse<Array<BasePlanDefinition.RecordSortMydayOutput>>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_MYDAY_SYNC_SORT_URL,
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

    static async basePlanRecordRecordtopPost(input: BasePlanDefinition.PlanRecordTopInput, ip: string, userId: number):Promise<ApiResponse<BasePlanDefinition.RecordTopOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.RecordTopOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.RecordTopOutput>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_RECORD_TOP,
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

    static async basePlanRecordRemoverecordtopPost(input: BasePlanDefinition.RecordTopDto, ip: string):Promise<ApiResponse<BasePlanDefinition.RecordTopOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.RecordTopOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.RecordTopOutput>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_REMOVE_RECORD_TOP,
        {
        },
        {
        },
        {
            "ip": ip,
        },
        input
      );

      return res;
    }

    static async basePlanRecordSortPost(planRecordSortOperateInput: BasePlanDefinition.PlanRecordSortOperateInput,ip?: string,  userId?: number):Promise<ApiResponse<BasePlanDefinition.PlanRecordSortOperateOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.PlanRecordSortOperateOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.PlanRecordSortOperateOutput>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_SORT,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        planRecordSortOperateInput
      );

      return res;
    }
  }


  export class NativeRecordController {
    static async baseNativePlanUnfinishdataPost(userId: number):Promise<RowResponse<Array<BasePlanDefinition.RemindUnfinishedOutput>> | null | undefined> {
      let res: RowResponse<Array<BasePlanDefinition.RemindUnfinishedOutput>> | null | undefined = await post<RowResponse<Array<BasePlanDefinition.RemindUnfinishedOutput>>>(
        BasePlanUrlConstant.BASE_NATIVE_PLAN_UNFINISH_DATA,
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


  export class ExcelConfigController {
    static async baseNativePlanReadserverconfigPost(channelType: string, dto: BasePlanDefinition.ExcelConfigInput):Promise<ApiResponse<Map<string, Array<Map<string, object>>>> | null | undefined> {
      let res: ApiResponse<Map<string, Array<Map<string, object>>>> | null | undefined = await post<ApiResponse<Map<string, Array<Map<string, object>>>>>(
        BasePlanUrlConstant.BASE_NATIVE_PLAN_READ_SERVER_CONFIG,
        {
        },
        {
        },
        {
            "channel_type": channelType,
        },
        dto
      );

      return res;
    }

    static async basePlanReadconfigPost( dto: BasePlanDefinition.ExcelConfigInput):Promise<ApiResponse<Map<string, Array<Map<string, object>>>> | null | undefined> {
      let res: ApiResponse<Map<string, Array<Map<string, object>>>> | null | undefined = await post<ApiResponse<Map<string, Array<Map<string, object>>>>>(
        BasePlanUrlConstant.BASE_PLAN_READ_CONFIG,
        {
        },
        {
        },
        {
        },
        dto
      );

      return res;
    }
  }


  export class ChecklistOperateController {
    static async basePlanChecklistGlobaladdhistoryPost(idsRequest: BasePlanDefinition.IdsRequest, userId: number):Promise<RowResponse<Array<BasePlanDefinition.AppletHistoryResponse>> | null | undefined> {
      let res: RowResponse<Array<BasePlanDefinition.AppletHistoryResponse>> | null | undefined = await post<RowResponse<Array<BasePlanDefinition.AppletHistoryResponse>>>(
        BasePlanUrlConstant.BASE_PLAN_CHECK_LIST_GLOBAL_ADD_HISTORY,
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

    static async basePlanChecklistSelectMByMIdMInfoPost(request: BasePlanDefinition.IdRequest, userId: number):Promise<ApiResponse<BasePlanDefinition.PlanWxInfoOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.PlanWxInfoOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.PlanWxInfoOutput>>(
        BasePlanUrlConstant.BASE_PLAN_CHECK_LIST_SELECT_BY_ID_INFO_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        request
      );

      return res;
    }

    static async basePlanChecklistBatchaddPost(checklistBatchAddInput: BasePlanDefinition.ChecklistBatchAddInput, ip: string, userId: number):Promise<ApiResponse<BasePlanDefinition.ChecklistBatchAddOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.ChecklistBatchAddOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.ChecklistBatchAddOutput>>(
        BasePlanUrlConstant.BASE_PLAN_CHECKLIST_BATCH_ADD,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        checklistBatchAddInput
      );

      return res;
    }

    static async basePlanChecklistBatchschedule2checklistPost(dto: BasePlanDefinition.ScheduleInfoInput, ip: string, userId: number):Promise<ApiResponse<BasePlanDefinition.BatchSchedule2ChecklistOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.BatchSchedule2ChecklistOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.BatchSchedule2ChecklistOutput>>(
        BasePlanUrlConstant.BASE_PLAN_CHECKLIST_BATCH_SCHEDULE2CHECKLIST,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        dto
      );

      return res;
    }

    static async basePlanChecklistCheckinPost(input: BasePlanDefinition.ChecklistCheckinInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_CHECKLIST_CHECKIN,
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

    static async basePlanChecklistCheckinAllPost(input: BasePlanDefinition.ChecklistCheckinInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_CHECKLIST_CHECKIN_ALL,
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

    static async basePlanChecklistCheckinandsetcompletetimePost(input: BasePlanDefinition.ChecklistSetCompleteTimeInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_CHECKLIST_CHECKIN_AND_SET_COMPLETE_TIME,
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

    static async basePlanChecklistChecklistMSortPost(input: BasePlanDefinition.ChecklistSortInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_CHECKLIST_CHECKLIST_SORT_URL,
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

    static async basePlanChecklistChecklistMTaskMSortPost(input: BasePlanDefinition.ChecklistTaskSortInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_CHECKLIST_CHECKLIST_TASK_SORT_URL,
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

    static async basePlanChecklistChecklist2repeatPost( input: BasePlanDefinition.ChecklistToRepeatInput):Promise<ApiResponse<BasePlanDefinition.ChecklistToRepeatOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.ChecklistToRepeatOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.ChecklistToRepeatOutput>>(
        BasePlanUrlConstant.BASE_PLAN_CHECKLIST_CHECKLIST2REPEAT,
        {
        },
        {
        },
        {
            // "channel_type": channelType,
        },
        input
      );

      return res;
    }

    static async basePlanChecklistChecklist2schedulePost( input: BasePlanDefinition.ChecklistToScheduleInput):Promise<ApiResponse<BasePlanDefinition.ChecklistToScheduleOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.ChecklistToScheduleOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.ChecklistToScheduleOutput>>(
        BasePlanUrlConstant.BASE_PLAN_CHECKLIST_CHECKLIST2SCHEDULE,
        {
        },
        {
        },
        {
            // "channel_type": channelType,

        },
        input
      );

      return res;
    }

    static async basePlanChecklistCopytochecklistPost(ip: string, scheduleEditInput: BasePlanDefinition.ScheduleEditInput, userId: number):Promise<ApiResponse<BasePlanDefinition.ScheduleToChecklistOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.ScheduleToChecklistOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.ScheduleToChecklistOutput>>(
        BasePlanUrlConstant.BASE_PLAN_CHECKLIST_COPYTOCHECKLIST,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        scheduleEditInput
      );

      return res;
    }

    static async basePlanChecklistEditPost(checklistEditInput: BasePlanDefinition.ChecklistEditInput, channelType?: string, ip?: string, userId?: number):Promise<ApiResponse<BasePlanDefinition.ChecklistEditOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.ChecklistEditOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.ChecklistEditOutput>>(
        BasePlanUrlConstant.BASE_PLAN_CHECKLIST_EDIT,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        checklistEditInput
      );

      return res;
    }

    static async basePlanChecklistSetcompletetimePost(input: BasePlanDefinition.ChecklistSetCompleteTimeInput, ip: string, userId: number):Promise<ApiResponse<BasePlanDefinition.ChecklistSetCompleteTimeOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.ChecklistSetCompleteTimeOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.ChecklistSetCompleteTimeOutput>>(
        BasePlanUrlConstant.BASE_PLAN_CHECKLIST_SET_COMPLETE_TIME,
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

    static async basePlanExportHasMChecklistMDataPost(dto: BasePlanDefinition.PlanExportDataInput, userId: number):Promise<ApiResponse<BasePlanDefinition.BooleanDataOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.BooleanDataOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.BooleanDataOutput>>(
        BasePlanUrlConstant.BASE_PLAN_EXPORT_HAS_CHECKLIST_DATA_URL,
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

    static async basePlanExportRecommendMSectionMChecklistMDataPost(userId: number):Promise<ApiResponse<BasePlanDefinition.RecommendSectionPlanData> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.RecommendSectionPlanData> | null | undefined = await post<ApiResponse<BasePlanDefinition.RecommendSectionPlanData>>(
        BasePlanUrlConstant.BASE_PLAN_EXPORT_RECOMMEND_SECTION_CHECKLIST_DATA_URL,
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


  export class PlanDeleteController {
    static async basePlanDeletePost(dto: BasePlanDefinition.PlanTodoInfoDeleteInput):Promise<RowResponse<Array<BasePlanDefinition.PlanTodoInfoDeleteOutput>> | null | undefined> {
      let res: RowResponse<Array<BasePlanDefinition.PlanTodoInfoDeleteOutput>> | null | undefined = await post<RowResponse<Array<BasePlanDefinition.PlanTodoInfoDeleteOutput>>>(
        BasePlanUrlConstant.BASE_PLAN_DELETE,
        {
        },
        {
        },
        {
        },
        dto
      );

      return res;
    }
  }


  export class PlanCheckinController {
    static async basePlanAllcheckinPost(request: BasePlanDefinition.TodoAllCheckinInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_ALL_CHECKIN,
        {
        },
        {
        },
        {
        },
        request
      );

      return res;
    }

    static async basePlanBatchcheckinPost(ip: string, request: BasePlanDefinition.TodoBatchCheckinInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_BATCH_CHECKIN,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        request
      );

      return res;
    }

    static async basePlanBeginPost(dto: BasePlanDefinition.TodoBeginInput, ip: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BasePlanUrlConstant.BASE_PLAN_BEGIN,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        dto
      );

      return res;
    }

    static async basePlanCheckinPost(request: BasePlanDefinition.TodoCheckinInput):Promise<ApiResponse<BasePlanDefinition.TodoCheckinOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.TodoCheckinOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.TodoCheckinOutput>>(
        BasePlanUrlConstant.BASE_PLAN_CHECKIN,
        {
        },
        {
        },
        {
        },
        request
      );

      return res;
    }

    static async basePlanCheckinAddPost(ip: string, request: BasePlanDefinition.PlanCheckinAddInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_CHECKIN_ADD,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        request
      );

      return res;
    }

    static async basePlanCheckinAddandupdatePost(request: BasePlanDefinition.PlanCheckinUpdateInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_CHECKIN_ADD_AND_UPDATE,
        {
        },
        {
        },
        {
        },
        request
      );

      return res;
    }

    static async basePlanCheckinandsetcompletetimePost(input: BasePlanDefinition.TodoSetCompleteTimeInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_CHECKIN_AND_SET_COMPLETE_TIME,
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

    static async basePlanIknowPost(input: BasePlanDefinition.PlanIKnowInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_I_KNOW,
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

    static async basePlanRepeatuncheckPost(ip: string, request: BasePlanDefinition.RepeatAllUnCheckInput, userId: number):Promise<ApiResponse<BasePlanDefinition.TodoCheckinOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.TodoCheckinOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.TodoCheckinOutput>>(
        BasePlanUrlConstant.BASE_PLAN_REPEATUNCHECK,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        request
      );

      return res;
    }

    static async basePlanSetcompletetimePost(request: BasePlanDefinition.TodoSetCompleteTimeInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_SET_COMPLETE_TIME,
        {
        },
        {
        },
        {
        },
        request
      );

      return res;
    }

    static async basePlanTododayimpressionPost(input: BasePlanDefinition.PlanCheckinRangeInput, userId: number):Promise<RowResponse<Array<BasePlanDefinition.TodoCheckinOutputV2>> | null | undefined> {
      let res: RowResponse<Array<BasePlanDefinition.TodoCheckinOutputV2>> | null | undefined = await post<RowResponse<Array<BasePlanDefinition.TodoCheckinOutputV2>>>(
        BasePlanUrlConstant.BASE_PLAN_TODO_DAY_IMPRESSION,
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


  export class PlanMoveController {
    static async basePlanMoveTododatePost(request: BasePlanDefinition.PlanMoveTodoDateInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_MOVE_TODO_DATE,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        request
      );

      return res;
    }

    static async basePlanMoveTomorrowPost(request: BasePlanDefinition.PlanMoveTomorrowInput, userId: number):Promise<ApiResponse<BasePlanDefinition.PlanMoveTodoDateOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.PlanMoveTodoDateOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.PlanMoveTodoDateOutput>>(
        BasePlanUrlConstant.BASE_PLAN_MOVE_TOMORROW,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        request
      );

      return res;
    }
  }


  export class PlanRepeatController {
    static async basePlanRepeatAddPost(ip: string, repeatAddInput: BasePlanDefinition.RepeatAddInput, userId: number):Promise<ApiResponse<BasePlanDefinition.RepeatAddOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.RepeatAddOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.RepeatAddOutput>>(
        BasePlanUrlConstant.BASE_PLAN_REPEAT_ADD,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        repeatAddInput
      );

      return res;
    }

    static async basePlanRepeatAttachPost(input: BasePlanDefinition.RepeatAttachInput, ip: string, userId: number):Promise<ApiResponse<BasePlanDefinition.ScheduleEditOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.ScheduleEditOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.ScheduleEditOutput>>(
        BasePlanUrlConstant.BASE_PLAN_REPEAT_ATTACH,
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

    static async basePlanRepeatCompletionPost(planScheduleCompletionInput: BasePlanDefinition.PlanScheduleCompletionInput, userId: number):Promise<ApiResponse<BasePlanDefinition.PlanScheduleCompletionOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.PlanScheduleCompletionOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.PlanScheduleCompletionOutput>>(
        BasePlanUrlConstant.BASE_PLAN_REPEAT_COMPLETION,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        planScheduleCompletionInput
      );

      return res;
    }

    static async basePlanRepeatCopyonerepeatPost(input: BasePlanDefinition.CopyRepeatInput):Promise<ApiResponse<BasePlanDefinition.ScheduleEditOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.ScheduleEditOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.ScheduleEditOutput>>(
        BasePlanUrlConstant.BASE_PLAN_REPEAT_COPY_ONE_REPEAT,
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

    static async basePlanRepeatDelTodayAndAfterRepeatPost(input: BasePlanDefinition.DelTodayAndAfterRepeatInput):Promise<ApiResponse<BasePlanDefinition.RepeatEditOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.RepeatEditOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.RepeatEditOutput>>(
        BasePlanUrlConstant.BASE_PLAN_REPEAT_DEL_TODAY_AND_AFTER_REPEAT,
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

    static async basePlanRepeatEditPost(ip: string, repeatEditInput: BasePlanDefinition.RepeatEditInput, userId: number):Promise<ApiResponse<BasePlanDefinition.RepeatEditOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.RepeatEditOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.RepeatEditOutput>>(
        BasePlanUrlConstant.BASE_PLAN_REPEAT_EDIT,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        repeatEditInput
      );

      return res;
    }

    static async basePlanRepeatListallPost(planRepeatListInput: BasePlanDefinition.PlanRepeatListInput, userId: number):Promise<ApiResponse<BasePlanDefinition.PlanRepeatListOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.PlanRepeatListOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.PlanRepeatListOutput>>(
        BasePlanUrlConstant.BASE_PLAN_REPEAT_LIST_ALL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        planRepeatListInput
      );

      return res;
    }

    static async basePlanRepeatListformonthPost(planRepeatListInput: BasePlanDefinition.PlanRepeatListInput, userId: number):Promise<ApiResponse<BasePlanDefinition.PlanRepeatListOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.PlanRepeatListOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.PlanRepeatListOutput>>(
        BasePlanUrlConstant.BASE_PLAN_REPEAT_LIST_FOR_MONTH,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        planRepeatListInput
      );

      return res;
    }

    static async basePlanV2RepeatAttachPost(input: BasePlanDefinition.RepeatAttachInput):Promise<ApiResponse<BasePlanDefinition.ScheduleEditOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.ScheduleEditOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.ScheduleEditOutput>>(
        BasePlanUrlConstant.BASE_PLAN_V2_REPEAT_ATTACH,
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

    static async basePlanV2RepeatEditPost(ip: string, repeatEditInput: BasePlanDefinition.RepeatEditInputV2):Promise<ApiResponse<BasePlanDefinition.RepeatEditOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.RepeatEditOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.RepeatEditOutput>>(
        BasePlanUrlConstant.BASE_PLAN_V2_REPEAT_EDIT,
        {
        },
        {
        },
        {
            "ip": ip,
        },
        repeatEditInput
      );

      return res;
    }
  }


  export class RecordTransferController {
    static async basePlanRecordExportdataPost(condition: BasePlanDefinition.RecordTransferConditionV2, userId: number):Promise<ApiResponse<BasePlanDefinition.RecordImportExportData> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.RecordImportExportData> | null | undefined = await post<ApiResponse<BasePlanDefinition.RecordImportExportData>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_EXPORT_DATA,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        condition
      );

      return res;
    }

    static async basePlanRecordImportdataPost(data: BasePlanDefinition.RecordImportExportData, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_IMPORT_DATA,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        data
      );

      return res;
    }
  }


  export class PlanRecycledController {
    static async basePlanRecycledDeletePost(request: BasePlanDefinition.PlanRecycledDeleteInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_RECYCLED_DELETE,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        request
      );

      return res;
    }

    static async basePlanRecycledRecoveryPost(request: BasePlanDefinition.PlanRecycledRecoveryInput, userId: number):Promise<ApiResponse<BasePlanDefinition.PlanRecycledOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.PlanRecycledOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.PlanRecycledOutput>>(
        BasePlanUrlConstant.BASE_PLAN_RECYCLED_RECOVERY,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        request
      );

      return res;
    }
  }


  export class RecordSearchSettingController {
    static async basePlanSearchMSettingPost(input: BasePlanDefinition.RecordSearchSettingInput, ip: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BasePlanUrlConstant.BASE_PLAN_SEARCH_SETTING_URL,
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


  export class PlanStatisticController {
    static async basePlanStatisticGetdailysummaryreportPost(input: BasePlanDefinition.PlanStatisticInput, userId: number):Promise<ApiResponse<BasePlanDefinition.PlanRangeStatisticOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.PlanRangeStatisticOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.PlanRangeStatisticOutput>>(
        BasePlanUrlConstant.BASE_PLAN_STATISTIC_GET_DAILY_SUMMARY_REPORT,
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

    static async basePlanStatisticGetdayreportPost(input: BasePlanDefinition.PlanStatisticInput):Promise<ApiResponse<BasePlanDefinition.PlanRangeStatisticOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.PlanRangeStatisticOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.PlanRangeStatisticOutput>>(
        BasePlanUrlConstant.BASE_PLAN_STATISTIC_GET_DAY_REPORT,
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

    static async basePlanStatisticGetmonthreportPost(input: BasePlanDefinition.PlanStatisticInput, userId?: number):Promise<ApiResponse<BasePlanDefinition.PlanRangeStatisticOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.PlanRangeStatisticOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.PlanRangeStatisticOutput>>(
        BasePlanUrlConstant.BASE_PLAN_STATISTIC_GET_MONTH_REPORT,
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

    static async basePlanStatisticGetweekreportPost(input: BasePlanDefinition.PlanStatisticInput, userId?: number):Promise<ApiResponse<BasePlanDefinition.PlanRangeStatisticOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.PlanRangeStatisticOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.PlanRangeStatisticOutput>>(
        BasePlanUrlConstant.BASE_PLAN_STATISTIC_GET_WEEK_REPORT,
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


  export class WebSyncPlanController {
    static async basePlanWebplanPost(dto: BasePlanDefinition.IdRequest, userId: number):Promise<ApiResponse<BasePlanDefinition.SyncScheduleOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.SyncScheduleOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.SyncScheduleOutput>>(
        BasePlanUrlConstant.BASE_PLAN_WEB_PLAN,
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

    static async basePlanWebsyncplanPost(dto: BasePlanDefinition.IdsRequest, userId: number):Promise<RowResponse<Array<BasePlanDefinition.SyncScheduleOutput>> | null | undefined> {
      let res: RowResponse<Array<BasePlanDefinition.SyncScheduleOutput>> | null | undefined = await post<RowResponse<Array<BasePlanDefinition.SyncScheduleOutput>>>(
        BasePlanUrlConstant.BASE_PLAN_WEB_SYNC_PLAN,
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


  export class PlanIgnoreController {
    static async basePlanIgnoreAddPost(ip: string, request: BasePlanDefinition.PlanIgnoreInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_IGNORE_ADD,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        request
      );

      return res;
    }

    static async basePlanIgnoreListPost(userId: number):Promise<ApiResponse<BasePlanDefinition.PlanIgnoreOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.PlanIgnoreOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.PlanIgnoreOutput>>(
        BasePlanUrlConstant.BASE_PLAN_IGNORE_LIST,
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


  export class OssController {
    static async basePlanOssGettokenGet(userId?: number, ip?: string):Promise<ApiResponse<BasePlanDefinition.OssTokenOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.OssTokenOutput> | null | undefined = await get<ApiResponse<BasePlanDefinition.OssTokenOutput>>(
        BasePlanUrlConstant.BASE_PLAN_OSS_GET_TOKEN,
        {
        },
        {
            // "ip": ip
        },
        {
            // "user_id": userId,
        },
      );

      return res;
    }
  }


  export class ChecklistDeleteController {
    static async basePlanChecklistDeletePost(dto: BasePlanDefinition.IdsRequest, userId: number):Promise<BasePlanDefinition.IdsResponse | null | undefined> {
      let res: BasePlanDefinition.IdsResponse | null | undefined = await post<BasePlanDefinition.IdsResponse>(
        BasePlanUrlConstant.BASE_PLAN_CHECKLIST_DELETE,
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

    static async basePlanChecklistDeleteMTaskPost(dto: BasePlanDefinition.IdsRequest, ip: string, userId: number):Promise<RowResponse<Array<BasePlanDefinition.ChecklistEditOutput>> | null | undefined> {
      let res: RowResponse<Array<BasePlanDefinition.ChecklistEditOutput>> | null | undefined = await post<RowResponse<Array<BasePlanDefinition.ChecklistEditOutput>>>(
        BasePlanUrlConstant.BASE_PLAN_CHECKLIST_DELETE_TASK_URL,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        dto
      );

      return res;
    }

    static async basePlanChecklistMoveMToMTrashPost(dto: BasePlanDefinition.ChecklistDeleteInput):Promise<RowResponse<Array<BasePlanDefinition.ChecklistDeleteInfo>> | null | undefined> {
      let res: RowResponse<Array<BasePlanDefinition.ChecklistDeleteInfo>> | null | undefined = await post<RowResponse<Array<BasePlanDefinition.ChecklistDeleteInfo>>>(
        BasePlanUrlConstant.BASE_PLAN_CHECKLIST_MOVE_TO_TRASH_URL,
        {
        },
        {
        },
        {
        },
        dto
      );

      return res;
    }

    static async basePlanChecklistRestorePost(dto: BasePlanDefinition.IdsRequest, ip: string, userId: number):Promise<BasePlanDefinition.IdsResponse | null | undefined> {
      let res: BasePlanDefinition.IdsResponse | null | undefined = await post<BasePlanDefinition.IdsResponse>(
        BasePlanUrlConstant.BASE_PLAN_CHECKLIST_RESTORE,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        dto
      );

      return res;
    }
  }


  export class PlanViewController {
    static async basePlanBatchrecordcheckinPost(request: BasePlanDefinition.RecordBatchCheckinInput):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BasePlanUrlConstant.BASE_PLAN_BATCH_RECORD_CHECKIN,
        {
        },
        {
        },
        {
        },
        request
      );

      return res;
    }

    static async basePlanChecklistChecklistviewnewPost(userId: number, viewInput: BasePlanDefinition.ChecklistViewInput):Promise<ApiResponse<BasePlanDefinition.ChecklistViewInfoOutputList> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.ChecklistViewInfoOutputList> | null | undefined = await post<ApiResponse<BasePlanDefinition.ChecklistViewInfoOutputList>>(
        BasePlanUrlConstant.BASE_PLAN_CHECKLIST_CHECKLIST_VIEW_NEW,
        {
        },
        {
        },
        {
            "user_id": userId,
        },
        viewInput
      );

      return res;
    }

    static async basePlanChecklistCheckliststatisticsPost(userId: number):Promise<ApiResponse<BasePlanDefinition.ChecklistClassifyStatisticsOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.ChecklistClassifyStatisticsOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.ChecklistClassifyStatisticsOutput>>(
        BasePlanUrlConstant.BASE_PLAN_CHECKLIST_CHECKLISTSTATISTICS,
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

    static async basePlanChecklistChecklistviewPost(userId: number, viewInput: BasePlanDefinition.ChecklistViewInput):Promise<ChecklistViewResponse<Array<BasePlanDefinition.ChecklistViewInfoOutput>> | null | undefined> {
      let res: ChecklistViewResponse<Array<BasePlanDefinition.ChecklistViewInfoOutput>> | null | undefined = await post<ChecklistViewResponse<Array<BasePlanDefinition.ChecklistViewInfoOutput>>>(
        BasePlanUrlConstant.BASE_PLAN_CHECKLIST_CHECKLISTVIEW,
        {
        },
        {
        },
        {
            "user_id": userId,
        },
        viewInput
      );

      return res;
    }

    static async basePlanFindrecordpostponedPost(ip: string, request: BasePlanDefinition.FindPostponedRequest, userId: number):Promise<RowResponse<Array<BasePlanDefinition.TodoPostponedOutput>> | null | undefined> {
      let res: RowResponse<Array<BasePlanDefinition.TodoPostponedOutput>> | null | undefined = await post<RowResponse<Array<BasePlanDefinition.TodoPostponedOutput>>>(
        BasePlanUrlConstant.BASE_PLAN_FIND_RECORD_POSTPONED,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        request
      );

      return res;
    }

    static async basePlanGetrecordpostponedPost(ip: string, request: BasePlanDefinition.FindFilterPostponedRequest, userId: number):Promise<RowResponse<Array<BasePlanDefinition.TodoPostponedOutput>> | null | undefined> {
      let res: RowResponse<Array<BasePlanDefinition.TodoPostponedOutput>> | null | undefined = await post<RowResponse<Array<BasePlanDefinition.TodoPostponedOutput>>>(
        BasePlanUrlConstant.BASE_PLAN_GET_RECORD_POSTPONED,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        request
      );

      return res;
    }

    static async basePlanGettodosorttypePost(userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BasePlanUrlConstant.BASE_PLAN_GET_TODO_SORT_TYPE,
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

    static async basePlanImportanceTransferPost(request: BasePlanDefinition.RecordUpdateImportanceInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_IMPORTANCE_TRANSFER,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        request
      );

      return res;
    }

    static async basePlanRecordAddPost(channelType: string, ip: string, recordAddAndEditInput: BasePlanDefinition.RecordAddAndEditInput, userId: number):Promise<ApiResponse<BasePlanDefinition.RecordViewInfoOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.RecordViewInfoOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.RecordViewInfoOutput>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_ADD,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        recordAddAndEditInput
      );

      return res;
    }

    static async basePlanRecordAddrecordandcheckinPost(dto: BasePlanDefinition.BatchRecordInfoDataInput):Promise<ApiResponse<BasePlanDefinition.RecordBatchAddOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.RecordBatchAddOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.RecordBatchAddOutput>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_ADD_RECORD_AND_CHECKIN,
        {
        },
        {
        },
        {
        },
        dto
      );

      return res;
    }

    static async basePlanRecordBatchcopyPost(input: BasePlanDefinition.RecordBatchCopyInput, ip: string):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_BATCH_COPY,
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

    static async basePlanRecordBatchaddPost(ip: string, recordBatchAddInput: BasePlanDefinition.RecordBatchAddInput, userId: number):Promise<ApiResponse<BasePlanDefinition.RecordBatchAddOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.RecordBatchAddOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.RecordBatchAddOutput>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_BATCHADD,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        recordBatchAddInput
      );

      return res;
    }

    static async basePlanRecordCopychecklistPost(input: BasePlanDefinition.IdRequest, ip: string, userId: number):Promise<ApiResponse<BasePlanDefinition.ChecklistEditOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.ChecklistEditOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.ChecklistEditOutput>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_COPY_CHECKLIST,
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

    static async basePlanRecordCopyrepeatPost(input: BasePlanDefinition.CopyRepeatInput, ip: string, userId: number):Promise<ApiResponse<BasePlanDefinition.RepeatEditOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.RepeatEditOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.RepeatEditOutput>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_COPY_REPEAT,
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

    static async basePlanRecordCopyschedulePost(input: BasePlanDefinition.IdRequest, ip: string, userId: number):Promise<ApiResponse<BasePlanDefinition.ScheduleEditOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.ScheduleEditOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.ScheduleEditOutput>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_COPY_SCHEDULE,
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

    static async basePlanRecordDeletePost(ip: string, request: BasePlanDefinition.RecordBatchDeleteInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_DELETE,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        request
      );

      return res;
    }

    static async basePlanRecordEditchecklistandcheckinPost(channelType: string, dto: BasePlanDefinition.RecordInfoChecklistEditInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_EDIT_CHECKLIST_AND_CHECKIN,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        dto
      );

      return res;
    }

    static async basePlanRecordEditrecordandcheckinPost(channelType: string, dto: BasePlanDefinition.RecordInfoTodoEditInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_EDIT_RECORD_AND_CHECKIN,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        dto
      );

      return res;
    }

    static async basePlanRecordExisttodotimePost(dto: BasePlanDefinition.RecordInfoCheckTodoTimeInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_EXIST_TODO_TIME,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        dto
      );

      return res;
    }

    static async basePlanRecordGetimportancetipsPost():Promise<ApiResponse<BasePlanDefinition.ImportanceTipsOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.ImportanceTipsOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.ImportanceTipsOutput>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_GET_IMPORTANCE_TIPS,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async basePlanRecordGettodoswitch4webPost(input: BasePlanDefinition.TodoSwitch4WebInput, userId: number):Promise<ApiResponse<BasePlanDefinition.TodoSwitch4WebOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.TodoSwitch4WebOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.TodoSwitch4WebOutput>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_GET_TODO_SWITCH4WEB,
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

    static async basePlanRecordGetinfoPost(recordInfoInput: BasePlanDefinition.RecordInfoInput, userId: number):Promise<ApiResponse<BasePlanDefinition.RecordViewInfoOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.RecordViewInfoOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.RecordViewInfoOutput>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_GETINFO,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        recordInfoInput
      );

      return res;
    }

    static async basePlanRecordHistorydatacountPost(userId: number):Promise<ApiResponse<Map<string, number>> | null | undefined> {
      let res: ApiResponse<Map<string, number>> | null | undefined = await post<ApiResponse<Map<string, number>>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_HISTORY_DATA_COUNT,
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

    static async basePlanRecordImportantviewstatisticsPost(input: BasePlanDefinition.ImportantViewStatisticsInput, ip: string, userId: number):Promise<ApiResponse<BasePlanDefinition.ImportantViewStatisticsOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.ImportantViewStatisticsOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.ImportantViewStatisticsOutput>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_IMPORTANT_VIEW_STATISTICS,
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

    static async basePlanRecordImportantviewloadPost(input: BasePlanDefinition.ImportantViewloadInput, ip: string, userId: number):Promise<PaginableResponse<Array<BasePlanDefinition.RecordViewInfoOutput>> | null | undefined> {
      let res: PaginableResponse<Array<BasePlanDefinition.RecordViewInfoOutput>> | null | undefined = await post<PaginableResponse<Array<BasePlanDefinition.RecordViewInfoOutput>>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_IMPORTANT_VIEWLOAD,
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

    static async basePlanRecordMemorialdataPost(input: BasePlanDefinition.DateRangeRequest, userId: number):Promise<ApiResponse<BasePlanDefinition.MatterPageOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.MatterPageOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.MatterPageOutput>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_MEMORIAL_DATA,
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

    static async basePlanRecordRecordviewPost(ip: string, recordViewInput: BasePlanDefinition.RecordViewInput, userId: number):Promise<PaginableResponse<Array<BasePlanDefinition.RecordViewInfoOutput>> | null | undefined> {
      let res: PaginableResponse<Array<BasePlanDefinition.RecordViewInfoOutput>> | null | undefined = await post<PaginableResponse<Array<BasePlanDefinition.RecordViewInfoOutput>>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_RECORDVIEW,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        recordViewInput
      );

      return res;
    }

    static async basePlanRecordRecordviewloadPost(ip: string, recordViewInput: BasePlanDefinition.RecordViewInput, userId: number):Promise<RowResponse<Array<BasePlanDefinition.RecordViewInfoLoadOutput>> | null | undefined> {
      let res: RowResponse<Array<BasePlanDefinition.RecordViewInfoLoadOutput>> | null | undefined = await post<RowResponse<Array<BasePlanDefinition.RecordViewInfoLoadOutput>>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_RECORDVIEWLOAD,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        recordViewInput
      );

      return res;
    }

    static async basePlanRecordRepeatbatchaddPost(ip: string, repeatBatchAddInput: BasePlanDefinition.RepeatBatchAddInput, userId: number):Promise<ApiResponse<BasePlanDefinition.RepeatBatchAddOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.RepeatBatchAddOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.RepeatBatchAddOutput>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_REPEATBATCHADD,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        repeatBatchAddInput
      );

      return res;
    }

    static async basePlanRecordSaveimportancesortPost(dto: BasePlanDefinition.ImportanceSortInput):Promise<ApiResponse<BasePlanDefinition.ImportanceTipsOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.ImportanceTipsOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.ImportanceTipsOutput>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_SAVE_IMPORTANCE_SORT,
        {
        },
        {
        },
        {
        },
        dto
      );

      return res;
    }

    static async basePlanRecordSaveimportancetipsPost(dto: BasePlanDefinition.ImportanceTipsInput, ip: string, userId: number):Promise<ApiResponse<BasePlanDefinition.ImportanceTipsOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.ImportanceTipsOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.ImportanceTipsOutput>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_SAVE_IMPORTANCE_TIPS,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        dto
      );

      return res;
    }

    static async basePlanRecordSimplechecklist2todoPost(channelType: string, dto: BasePlanDefinition.RecordInfoChecklist2TodoInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_SIMPLE_CHECKLIST2TODO,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        dto
      );

      return res;
    }

    static async basePlanRecordSimpletodo2checklistPost(channelType: string, dto: BasePlanDefinition.RecordInfoTodo2ChecklistInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_SIMPLE_TODO2CHECKLIST,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        dto
      );

      return res;
    }

    static async basePlanRecordTabhidePost(ip: string, recordTabHideInput: BasePlanDefinition.RecordTabHideInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_TABHIDE,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        recordTabHideInput
      );

      return res;
    }

    static async basePlanRecordTabsortPost(ip: string, recordTabSortInput: BasePlanDefinition.RecordTabSortInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_TABSORT,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        recordTabSortInput
      );

      return res;
    }

    static async basePlanRecordpostponedPost( request: BasePlanDefinition.RecordPostponedRequest):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_POSTPONED,
        {
        },
        {
        },
        {
        },
        request
      );

      return res;
    }

    static async basePlanRemindGenreminddataPost(userId: number, viewInput: BasePlanDefinition.PlanViewInput):Promise<ApiResponse<BasePlanDefinition.PlanViewOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.PlanViewOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.PlanViewOutput>>(
        BasePlanUrlConstant.BASE_PLAN_REMIND_GENREMINDDATA,
        {
        },
        {
        },
        {
            "user_id": userId,
        },
        viewInput
      );

      return res;
    }

    static async basePlanSavetodosorttypePost(ip: string, request: BasePlanDefinition.TodoSortTypeRequest, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BasePlanUrlConstant.BASE_PLAN_SAVE_TODO_SORT_TYPE,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        request
      );

      return res;
    }

    static async basePlanScheduleTodoviewPost(userId: number, viewInput: BasePlanDefinition.PlanViewInput):Promise<ApiResponse<BasePlanDefinition.TodoViewOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.TodoViewOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.TodoViewOutput>>(
        BasePlanUrlConstant.BASE_PLAN_SCHEDULE_TODOVIEW,
        {
        },
        {
        },
        {
            "user_id": userId,
        },
        viewInput
      );

      return res;
    }

    static async basePlanV1MyappletPost(userId: number):Promise<ApiResponse<BasePlanDefinition.PlanMyAppletUsingPOST> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.PlanMyAppletUsingPOST> | null | undefined = await post<ApiResponse<BasePlanDefinition.PlanMyAppletUsingPOST>>(
        BasePlanUrlConstant.BASE_PLAN_V1_MY_APPLET,
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

    static async basePlanV1SelectMByMIdMInfoPost(request: BasePlanDefinition.IdRequest, userId: number):Promise<ApiResponse<BasePlanDefinition.PlanWxInfoOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.PlanWxInfoOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.PlanWxInfoOutput>>(
        BasePlanUrlConstant.BASE_PLAN_V1_SELECT_BY_ID_INFO_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        request
      );

      return res;
    }

    static async basePlanV1SelectMByMIdsPost(ids: BasePlanDefinition.IdsRequest, userId: number):Promise<RowResponse<Array<BasePlanDefinition.AppletHistoryResponse>> | null | undefined> {
      let res: RowResponse<Array<BasePlanDefinition.AppletHistoryResponse>> | null | undefined = await post<RowResponse<Array<BasePlanDefinition.AppletHistoryResponse>>>(
        BasePlanUrlConstant.BASE_PLAN_V1_SELECT_BY_IDS_URL,
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

    static async basePlanV1ViewSavecomponentconfigPost(input: BasePlanDefinition.PlanComponentConfigInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_V1_VIEW_SAVE_COMPONENT_CONFIG,
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

    static async basePlanV2RecordBatchaddPost(recordBatchAddInput: BasePlanDefinition.RecordBatchAddInput):Promise<ApiResponse<BasePlanDefinition.RecordBatchAddOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.RecordBatchAddOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.RecordBatchAddOutput>>(
        BasePlanUrlConstant.BASE_PLAN_V2_RECORD_BATCHADD,
        {
        },
        {
        },
        {
        },
        recordBatchAddInput
      );

      return res;
    }

    static async basePlanV2RecordRecordviewdata4dailysummaryPost(recordViewInput: BasePlanDefinition.RecordViewInput, userId: number):Promise<ApiResponse<BasePlanDefinition.RecordViewData4DailySummaryUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.RecordViewData4DailySummaryUsingPOSTRsp> | null | undefined = await post<ApiResponse<BasePlanDefinition.RecordViewData4DailySummaryUsingPOSTRsp>>(
        BasePlanUrlConstant.BASE_PLAN_V2_RECORD_RECORD_VIEW_DATA4DAILY_SUMMARY,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        recordViewInput
      );

      return res;
    }

    static async basePlanV2RecordRecordviewPost(ip: string, recordViewInput: BasePlanDefinition.RecordViewInput, userId: number):Promise<PaginableResponse<Array<BasePlanDefinition.RecordViewInfoOutput>> | null | undefined> {
      let res: PaginableResponse<Array<BasePlanDefinition.RecordViewInfoOutput>> | null | undefined = await post<PaginableResponse<Array<BasePlanDefinition.RecordViewInfoOutput>>>(
        BasePlanUrlConstant.BASE_PLAN_V2_RECORD_RECORDVIEW,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        recordViewInput
      );

      return res;
    }

    static async basePlanV2ScheduleTodoviewPost(userId: number, viewInput: BasePlanDefinition.PlanViewInput):Promise<ApiResponse<BasePlanDefinition.TodoViewOutputV2> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.TodoViewOutputV2> | null | undefined = await post<ApiResponse<BasePlanDefinition.TodoViewOutputV2>>(
        BasePlanUrlConstant.BASE_PLAN_V2_SCHEDULE_TODOVIEW,
        {
        },
        {
        },
        {
            "user_id": userId,
        },
        viewInput
      );

      return res;
    }

    static async basePlanV2ViewReciprocalPost(input: BasePlanDefinition.ReciprocalViewInput, userId: number):Promise<RowResponse<Array<BasePlanDefinition.TodoAllDayViewInfoOutput>> | null | undefined> {
      let res: RowResponse<Array<BasePlanDefinition.TodoAllDayViewInfoOutput>> | null | undefined = await post<RowResponse<Array<BasePlanDefinition.TodoAllDayViewInfoOutput>>>(
        BasePlanUrlConstant.BASE_PLAN_V2_VIEW_RECIPROCAL,
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

    static async basePlanViewPlanviewPost(userId: number, viewInput: BasePlanDefinition.PlanViewInput):Promise<ApiResponse<BasePlanDefinition.PlanViewOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.PlanViewOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.PlanViewOutput>>(
        BasePlanUrlConstant.BASE_PLAN_VIEW_PLAN_VIEW,
        {
        },
        {
        },
        {
            "user_id": userId,
        },
        viewInput
      );

      return res;
    }

    static async basePlanViewPlansummaryPost(userId: number, viewInput: BasePlanDefinition.PlanViewInput):Promise<ApiResponse<BasePlanDefinition.PlanChecklistCountOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.PlanChecklistCountOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.PlanChecklistCountOutput>>(
        BasePlanUrlConstant.BASE_PLAN_VIEW_PLANSUMMARY,
        {
        },
        {
        },
        {
            "user_id": userId,
        },
        viewInput
      );

      return res;
    }

    static async basePlanViewReciprocalPost(input: BasePlanDefinition.ReciprocalViewInput, userId: number):Promise<RowResponse<Array<BasePlanDefinition.TodoAllDayViewInfoOutput>> | null | undefined> {
      let res: RowResponse<Array<BasePlanDefinition.TodoAllDayViewInfoOutput>> | null | undefined = await post<RowResponse<Array<BasePlanDefinition.TodoAllDayViewInfoOutput>>>(
        BasePlanUrlConstant.BASE_PLAN_VIEW_RECIPROCAL,
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

    static async basePlanViewRepeatinfobydaterangePost(userId: number, viewInput: BasePlanDefinition.PlanCheckinRangeInput):Promise<RowResponse<Array<BasePlanDefinition.PlanRepeatInfoByDateRangeOutput>> | null | undefined> {
      let res: RowResponse<Array<BasePlanDefinition.PlanRepeatInfoByDateRangeOutput>> | null | undefined = await post<RowResponse<Array<BasePlanDefinition.PlanRepeatInfoByDateRangeOutput>>>(
        BasePlanUrlConstant.BASE_PLAN_VIEW_REPEAT_INFO_BY_DATE_RANGE,
        {
        },
        {
        },
        {
            "user_id": userId,
        },
        viewInput
      );

      return res;
    }
  }


  export class PlanSortController {
    static async basePlanChecklistGetsortPost(userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_CHECKLIST_GETSORT,
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

    static async basePlanChecklistSortPost(ip: string, request: BasePlanDefinition.PlanChecklistSortOperateInput, userId: number):Promise<ApiResponse<BasePlanDefinition.PlanChecklistSortOperateOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.PlanChecklistSortOperateOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.PlanChecklistSortOperateOutput>>(
        BasePlanUrlConstant.BASE_PLAN_CHECKLIST_SORT,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        request
      );

      return res;
    }
  }


  export class OssCallbackController {
    static async basePlanOssCallbackPost():Promise<void | null | undefined> {
      let res: void | null | undefined = await post<void>(
        BasePlanUrlConstant.BASE_PLAN_OSS_CALLBACK,
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


  export class PlanConfigController {
    static async basePlanClosetodoallphoneremindPost(input: BasePlanDefinition.IdRequest, userId: number):Promise<ApiResponse<BasePlanDefinition.UpdatePhoneRemindSwitchOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.UpdatePhoneRemindSwitchOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.UpdatePhoneRemindSwitchOutput>>(
        BasePlanUrlConstant.BASE_PLAN_CLOSE_TODO_ALL_PHONE_REMIND,
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

    static async basePlanGetplanconfigPost():Promise<ApiResponse<BasePlanDefinition.PlanConfigOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.PlanConfigOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.PlanConfigOutput>>(
        BasePlanUrlConstant.BASE_PLAN_GET_PLAN_CONFIG,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async basePlanGettodophoneremindconfigPost(userId: number):Promise<ApiResponse<BasePlanDefinition.TodoPhoneRemindScopeOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.TodoPhoneRemindScopeOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.TodoPhoneRemindScopeOutput>>(
        BasePlanUrlConstant.BASE_PLAN_GET_TODO_PHONE_REMIND_CONFIG,
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

    static async basePlanSavetodophoneremindscopePost(input: BasePlanDefinition.TodoPhoneRemindScopeInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_SAVE_TODO_PHONE_REMIND_SCOPE,
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

    static async basePlanUpdatedefaultclassifyPost(input: BasePlanDefinition.UpdateDefaultClassifyInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_UPDATE_DEFAULT_CLASSIFY,
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

    static async basePlanUpdatedefaultimportancePost(input: BasePlanDefinition.UpdateDefaultImportanceInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_UPDATE_DEFAULT_IMPORTANCE,
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

    static async basePlanUpdatefinishimpressionswitchPost(input: BasePlanDefinition.TodoSwitchInput ):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_UPDATE_FINISH_IMPRESSION_SWITCH,
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

    static async basePlanUpdateisautopostponedPost(input: BasePlanDefinition.UpdateIsAutoPostponedInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_UPDATE_IS_AUTO_POSTPONED,
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

    static async basePlanUpdateiscontinueremindPost(input: BasePlanDefinition.UpdateIsContinueRemindInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_UPDATE_IS_CONTINUE_REMIND,
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

    static async basePlanUpdateisfinishlinePost(input: BasePlanDefinition.UpdateIsFinishLineInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_UPDATE_IS_FINISH_LINE,
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

    static async basePlanUpdateisshowtaskPost(input: BasePlanDefinition.UpdateIsShowTaskInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_UPDATE_IS_SHOW_TASK,
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

    static async basePlanUpdatephoneremindswitchPost(input: BasePlanDefinition.TodoSwitchInput, ip: string, userId: number):Promise<ApiResponse<BasePlanDefinition.UpdatePhoneRemindSwitchOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.UpdatePhoneRemindSwitchOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.UpdatePhoneRemindSwitchOutput>>(
        BasePlanUrlConstant.BASE_PLAN_UPDATE_PHONE_REMIND_SWITCH,
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


  export class PlanAppletHistoryController {
    static async basePlanRecordGetapplethistoryPost(dto: BasePlanDefinition.PlanAppletHistoryInput, userId: number):Promise<RowResponse<Array<BasePlanDefinition.AppletHistoryResponse>> | null | undefined> {
      let res: RowResponse<Array<BasePlanDefinition.AppletHistoryResponse>> | null | undefined = await post<RowResponse<Array<BasePlanDefinition.AppletHistoryResponse>>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_GET_APPLET_HISTORY,
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


  export class CheckAliveController {
    static async checkaliveGet():Promise<number | null | undefined> {
      let res: number | null | undefined = await get<number>(
        BasePlanUrlConstant.CHECKALIVE,
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


  export class PlanClassifyController {
    static async basePlanClassifyAddPost(request: BasePlanDefinition.PlanClassifyAddInput):Promise<BasePlanDefinition.IdResponse | null | undefined> {
      let res: BasePlanDefinition.IdResponse | null | undefined = await post<BasePlanDefinition.IdResponse>(
        BasePlanUrlConstant.BASE_PLAN_CLASSIFY_ADD,
        {
        },
        {
        },
        {
        },
        request
      );

      return res;
    }

    static async basePlanClassifyClassifybgPost(input: BasePlanDefinition.PlanClassifyBgInput):Promise<RowResponse<RowData<BasePlanDefinition.TodoClassifyBackgroundOutput[]>> | null | undefined> {
      let res: RowResponse<RowData<BasePlanDefinition.TodoClassifyBackgroundOutput[]>> | null | undefined = await post<RowResponse<RowData<BasePlanDefinition.TodoClassifyBackgroundOutput[]>>>(
        BasePlanUrlConstant.BASE_PLAN_CLASSIFY_CLASSIFY_BG,
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

    static async basePlanClassifyDeletePost(ip: string, request: BasePlanDefinition.PlanClassifyDeleteInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_CLASSIFY_DELETE,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        request
      );

      return res;
    }

    static async basePlanClassifyDeleteclassifybgPost(input: BasePlanDefinition.IdsRequest):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BasePlanUrlConstant.BASE_PLAN_CLASSIFY_DELETE_CLASSIFY_BG,
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

    static async basePlanClassifyEditPost(request: BasePlanDefinition.PlanClassifyEditInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_CLASSIFY_EDIT,
        {
        },
        {
        },
        {
        },
        request
      );

      return res;
    }

    static async basePlanClassifyInitPost(input: BasePlanDefinition.PlanClassifyInitInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_CLASSIFY_INIT,
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

    static async basePlanClassifyListGet(userId: number):Promise<ApiResponse<BasePlanDefinition.PlanClassifyListOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.PlanClassifyListOutput> | null | undefined = await get<ApiResponse<BasePlanDefinition.PlanClassifyListOutput>>(
        BasePlanUrlConstant.BASE_PLAN_CLASSIFY_LIST,
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

    static async basePlanClassifyListclassifyfolderPost():Promise<RowResponse<RowData<BasePlanDefinition.ClassifyFolderOutput[]>> | null | undefined> {
      let res: RowResponse<RowData<BasePlanDefinition.ClassifyFolderOutput[]>> | null | undefined = await post<RowResponse<RowData<BasePlanDefinition.ClassifyFolderOutput[]>>>(
        BasePlanUrlConstant.BASE_PLAN_CLASSIFY_LIST_CLASSIFY_FOLDER,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async basePlanClassifySaveclassifybgPost(input: BasePlanDefinition.TodoClassifyBackgroundInput):Promise<BasePlanDefinition.IdResponse | null | undefined> {
      let res: BasePlanDefinition.IdResponse | null | undefined = await post<BasePlanDefinition.IdResponse>(
        BasePlanUrlConstant.BASE_PLAN_CLASSIFY_SAVE_CLASSIFY_BG,
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

    static async basePlanClassifySaveclassifyfolderPost(input: BasePlanDefinition.ClassifyFolderInput):Promise<ApiResponse<BasePlanDefinition.ClassifyFolderOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.ClassifyFolderOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.ClassifyFolderOutput>>(
        BasePlanUrlConstant.BASE_PLAN_CLASSIFY_SAVE_CLASSIFY_FOLDER,
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

    static async basePlanClassifySortPost(ip: string, request: BasePlanDefinition.PlanClassifySortInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_CLASSIFY_SORT,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        request
      );

      return res;
    }

    static async basePlanClassifyTransferPost(request: BasePlanDefinition.RecordUpdateClassifyInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_CLASSIFY_TRANSFER,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        request
      );

      return res;
    }

    static async basePlanClassifyUpdatePost(request: BasePlanDefinition.PlanClassifyUpdateInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_CLASSIFY_UPDATE,
        {
        },
        {
        },
        {
        },
        request
      );

      return res;
    }

    static async basePlanV2ClassifyDeletePost(input: BasePlanDefinition.PlanClassifyDeleteInputV2):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_V2_CLASSIFY_DELETE,
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

    static async basePlanV2ClassifyListPost(input: BasePlanDefinition.ListClassifyInput, userId: number):Promise<ApiResponse<BasePlanDefinition.PlanClassifyListOutputV2> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.PlanClassifyListOutputV2> | null | undefined = await post<ApiResponse<BasePlanDefinition.PlanClassifyListOutputV2>>(
        BasePlanUrlConstant.BASE_PLAN_V2_CLASSIFY_LIST,
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

    static async basePlanV2ClassifyListbyfolderPost(input: BasePlanDefinition.ListClassifyByFolderInput, userId: number):Promise<ApiResponse<BasePlanDefinition.PlanClassifyListOutputV2> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.PlanClassifyListOutputV2> | null | undefined = await post<ApiResponse<BasePlanDefinition.PlanClassifyListOutputV2>>(
        BasePlanUrlConstant.BASE_PLAN_V2_CLASSIFY_LIST_BY_FOLDER,
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

    static async basePlanV2ClassifySortPost(input: BasePlanDefinition.PlanClassifySortInputV2):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_V2_CLASSIFY_SORT,
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


  export class PlanDelayController {
    static async basePlanDelayAddPost(request: BasePlanDefinition.DelayAddInput):Promise<ApiResponse<BasePlanDefinition.DelayAddOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.DelayAddOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.DelayAddOutput>>(
        BasePlanUrlConstant.BASE_PLAN_DELAY_ADD,
        {
        },
        {
        },
        {
        },
        request
      );

      return res;
    }
  }


  export class PlanTemplateController {
    static async basePlanV1TemplateAddPost(input: BasePlanDefinition.PlanTemplateInput, ip: string):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_V1_TEMPLATE_ADD,
        {
        },
        {
        },
        {
            "ip": ip,
        },
        input
      );

      return res;
    }

    static async basePlanV1TemplateChecknamePost(input: BasePlanDefinition.PlanTemplateInput, ip: string):Promise<ApiResponse<BasePlanDefinition.BooleanResponse> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.BooleanResponse> | null | undefined = await post<ApiResponse<BasePlanDefinition.BooleanResponse>>(
        BasePlanUrlConstant.BASE_PLAN_V1_TEMPLATE_CHECK_NAME,
        {
        },
        {
        },
        {
            "ip": ip,
        },
        input
      );

      return res;
    }

    static async basePlanV1TemplateDeletePost(input: BasePlanDefinition.IdRequest):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_V1_TEMPLATE_DELETE,
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

    static async basePlanV1TemplateListPost():Promise<RowResponse<RowData<BasePlanDefinition.PlanTemplateOutput[]>> | null | undefined> {
      let res: RowResponse<RowData<BasePlanDefinition.PlanTemplateOutput[]>> | null | undefined = await post<RowResponse<RowData<BasePlanDefinition.PlanTemplateOutput[]>>>(
        BasePlanUrlConstant.BASE_PLAN_V1_TEMPLATE_LIST,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    //    static async basePlanV1TemplateValidPost(channelType: string, ip: string):Promise<ApiResponse<object> | null | undefined> {
    static async basePlanV1TemplateValidPost(ip: string):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_V1_TEMPLATE_VALID,
        {
        },
        {
        },
        {
            "ip": ip,
        },
      );

      return res;
    }
  }


  export class SyncPlanController {
    static async basePlanRecordGetrecordtopPost():Promise<ApiResponse<BasePlanDefinition.RecordTopOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.RecordTopOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.RecordTopOutput>>(
        BasePlanUrlConstant.BASE_PLAN_RECORD_GET_RECORD_TOP,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async basePlanSyncMPlanPost(dto: BasePlanDefinition.SyncDataRequest, userId: number):Promise<SyncRowResponse<Array<BasePlanDefinition.SyncScheduleOutput>> | null | undefined> {
      let res: SyncRowResponse<Array<BasePlanDefinition.SyncScheduleOutput>> | null | undefined = await post<SyncRowResponse<Array<BasePlanDefinition.SyncScheduleOutput>>>(
        BasePlanUrlConstant.BASE_PLAN_SYNC_PLAN_URL,
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

    static async basePlanSyncMPlanMCheckinPost(dto: BasePlanDefinition.SyncDataRequest, ip: string, userId: number):Promise<SyncRowResponse<Array<BasePlanDefinition.TodoFinishOutput>> | null | undefined> {
      let res: SyncRowResponse<Array<BasePlanDefinition.TodoFinishOutput>> | null | undefined = await post<SyncRowResponse<Array<BasePlanDefinition.TodoFinishOutput>>>(
        BasePlanUrlConstant.BASE_PLAN_SYNC_PLAN_CHECKIN_URL,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        dto
      );

      return res;
    }

    static async basePlanSyncMPlanMImpressionPost(dto: BasePlanDefinition.SyncDataRequest, userId: number):Promise<SyncRowResponse<Array<BasePlanDefinition.TodoImpressionOutput>> | null | undefined> {
      let res: SyncRowResponse<Array<BasePlanDefinition.TodoImpressionOutput>> | null | undefined = await post<SyncRowResponse<Array<BasePlanDefinition.TodoImpressionOutput>>>(
        BasePlanUrlConstant.BASE_PLAN_SYNC_PLAN_IMPRESSION_URL,
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

    static async basePlanSyncplanconfigPost(dto: BasePlanDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BasePlanDefinition.PlanConfigOutput>> | null | undefined> {
      let res: RowResponse<Array<BasePlanDefinition.PlanConfigOutput>> | null | undefined = await post<RowResponse<Array<BasePlanDefinition.PlanConfigOutput>>>(
        BasePlanUrlConstant.BASE_PLAN_SYNC_PLAN_CONFIG,
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

    static async basePlanSyncplanpostponedPost(dto: BasePlanDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BasePlanDefinition.TodoPostponedOutput>> | null | undefined> {
      let res: RowResponse<Array<BasePlanDefinition.TodoPostponedOutput>> | null | undefined = await post<RowResponse<Array<BasePlanDefinition.TodoPostponedOutput>>>(
        BasePlanUrlConstant.BASE_PLAN_SYNC_PLAN_POSTPONED,
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

    static async basePlanSynctodoswitchconfigPost(dto: BasePlanDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BasePlanDefinition.TodoSwitchOutput>> | null | undefined> {
      let res: RowResponse<Array<BasePlanDefinition.TodoSwitchOutput>> | null | undefined = await post<RowResponse<Array<BasePlanDefinition.TodoSwitchOutput>>>(
        BasePlanUrlConstant.BASE_PLAN_SYNC_TODO_SWITCH_CONFIG,
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


  export class PlanScheduleController {
    static async basePlanExportHasMTodoMDataPost(dto: BasePlanDefinition.PlanExportDataInput, userId: number):Promise<ApiResponse<BasePlanDefinition.BooleanDataOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.BooleanDataOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.BooleanDataOutput>>(
        BasePlanUrlConstant.BASE_PLAN_EXPORT_HAS_TODO_DATA_URL,
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

    static async basePlanExportRecommendMSectionMTodoMDataPost(userId: number):Promise<ApiResponse<BasePlanDefinition.RecommendSectionPlanData> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.RecommendSectionPlanData> | null | undefined = await post<ApiResponse<BasePlanDefinition.RecommendSectionPlanData>>(
        BasePlanUrlConstant.BASE_PLAN_EXPORT_RECOMMEND_SECTION_TODO_DATA_URL,
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

    static async basePlanRemindTimeAddPost(input: BasePlanDefinition.TodoCustomizeTimeAddInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_REMIND_TIME_ADD,
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

    static async basePlanRemindTimeDeletePost(input: BasePlanDefinition.TodoCustomizeTimeDeleteInput, ip: string, userId: number):Promise<ApiResponse<BasePlanDefinition.DeleteTodoCustomizeTimeOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.DeleteTodoCustomizeTimeOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.DeleteTodoCustomizeTimeOutput>>(
        BasePlanUrlConstant.BASE_PLAN_REMIND_TIME_DELETE,
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

    static async basePlanRemindTimeListPost(ip: string, userId: number):Promise<ApiResponse<BasePlanDefinition.TodoCustomizeTimeListOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.TodoCustomizeTimeListOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.TodoCustomizeTimeListOutput>>(
        BasePlanUrlConstant.BASE_PLAN_REMIND_TIME_LIST,
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

    static async basePlanScheduleBatchmodtime2schedulePost(channelType: string, input: BasePlanDefinition.BatchModTime2ScheduleInput, ip: string, userId: number):Promise<ApiResponse<BasePlanDefinition.BatchModTime2ScheduleOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.BatchModTime2ScheduleOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.BatchModTime2ScheduleOutput>>(
        BasePlanUrlConstant.BASE_PLAN_SCHEDULE_BATCH_MOD_TIME2SCHEDULE,
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

    static async basePlanScheduleBatchaddPost(batchTodoInput: BasePlanDefinition.ScheduleBatchAddInput, ip: string, userId: number):Promise<ApiResponse<BasePlanDefinition.ScheduleBatchAddOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.ScheduleBatchAddOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.ScheduleBatchAddOutput>>(
        BasePlanUrlConstant.BASE_PLAN_SCHEDULE_BATCHADD,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        batchTodoInput
      );

      return res;
    }

    static async basePlanScheduleChecklistMToMRepeatPost(input: BasePlanDefinition.ChecklistToRepeatInput, ip: string, userId: number):Promise<ApiResponse<BasePlanDefinition.RepeatAddTodoInfoOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.RepeatAddTodoInfoOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.RepeatAddTodoInfoOutput>>(
        BasePlanUrlConstant.BASE_PLAN_SCHEDULE_CHECKLIST_TO_REPEAT_URL,
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

    static async basePlanScheduleCopytoschedulePost(input: BasePlanDefinition.ChecklistToScheduleInput, ip: string, userId: number):Promise<ApiResponse<BasePlanDefinition.ScheduleEditOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.ScheduleEditOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.ScheduleEditOutput>>(
        BasePlanUrlConstant.BASE_PLAN_SCHEDULE_COPY_TO_SCHEDULE,
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

    static async basePlanScheduleEditPost(channelType: string, ip: string, scheduleEditInput: BasePlanDefinition.ScheduleEditInput, userId: number):Promise<ApiResponse<BasePlanDefinition.ScheduleEditOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.ScheduleEditOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.ScheduleEditOutput>>(
        BasePlanUrlConstant.BASE_PLAN_SCHEDULE_EDIT,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        scheduleEditInput
      );

      return res;
    }

    static async basePlanScheduleEditprePost(scheduleEditPreInput: BasePlanDefinition.ScheduleEditPreInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_SCHEDULE_EDITPRE,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        scheduleEditPreInput
      );

      return res;
    }

    static async basePlanScheduleFinddailystatisticstodoPost(input: BasePlanDefinition.FindDailyStatisticsTodoInput, userId: number):Promise<ApiResponse<BasePlanDefinition.FindDailyStatisticsTodoOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.FindDailyStatisticsTodoOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.FindDailyStatisticsTodoOutput>>(
        BasePlanUrlConstant.BASE_PLAN_SCHEDULE_FIND_DAILY_STATISTICS_TODO,
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

    static async basePlanScheduleFindtasksPost(findTasksInput: BasePlanDefinition.FindTasksInput, ip: string, userId: number):Promise<ApiResponse<BasePlanDefinition.TodoTaskInfoOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.TodoTaskInfoOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.TodoTaskInfoOutput>>(
        BasePlanUrlConstant.BASE_PLAN_SCHEDULE_FIND_TASKS,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        findTasksInput
      );

      return res;
    }

    static async basePlanScheduleFindtodoPost(findTodoInput: BasePlanDefinition.FindTodoInput, ip: string, userId: number):Promise<ApiResponse<BasePlanDefinition.TodoInfoOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.TodoInfoOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.TodoInfoOutput>>(
        BasePlanUrlConstant.BASE_PLAN_SCHEDULE_FIND_TODO,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        findTodoInput
      );

      return res;
    }

    static async basePlanScheduleGetremindagainPost(userId?: number):Promise<ApiResponse<BasePlanDefinition.PlanRemindAgainOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.PlanRemindAgainOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.PlanRemindAgainOutput>>(
        BasePlanUrlConstant.BASE_PLAN_SCHEDULE_GET_REMIND_AGAIN,
        {
        },
        {
            "userId": userId
        },
        {
        },
      );

      return res;
    }

    static async basePlanScheduleRemindagainPost(open: boolean, interval?: number, ip?: string, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_SCHEDULE_REMIND_AGAIN,
        {
        },
        {
            "open": open,
            "interval": interval,
            "ip": ip,
            "userId": userId
        },
        {
        },
      );

      return res;
    }

    static async basePlanScheduleSchedule2repeatPost(channelType: string, input: BasePlanDefinition.Schedule2RepeatInput, ip: string, userId: number):Promise<ApiResponse<BasePlanDefinition.RepeatAddOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.RepeatAddOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.RepeatAddOutput>>(
        BasePlanUrlConstant.BASE_PLAN_SCHEDULE_SCHEDULE2REPEAT,
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

    static async basePlanV2ScheduleEditPost(channelType: string, ip: string, scheduleEditInput: BasePlanDefinition.ScheduleEditInputV2, userId: number):Promise<ApiResponse<BasePlanDefinition.ScheduleEditOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.ScheduleEditOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.ScheduleEditOutput>>(
        BasePlanUrlConstant.BASE_PLAN_V2_SCHEDULE_EDIT,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        scheduleEditInput
      );

      return res;
    }

    static async basePlanV3ScheduleEditPost(scheduleEditInput: BasePlanDefinition.ScheduleEditInputV2, channelType?: string, ip?: string, userId?: number):Promise<ApiResponse<BasePlanDefinition.ScheduleEditOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.ScheduleEditOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.ScheduleEditOutput>>(
        BasePlanUrlConstant.BASE_PLAN_V3_SCHEDULE_EDIT,
        {
        },
        {
        },
        {
        },
        scheduleEditInput
      );

      return res;
    }
  }


  export class PlanTaskSortProcessController {
    static async basePlanScheduleTasksortprocessPost(channelType: string, clientVersion: string, deviceModel: string, deviceTag: string, deviceType: string, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BasePlanUrlConstant.BASE_PLAN_SCHEDULE_TASK_SORT_PROCESS,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "client_version": clientVersion,
            "device_model": deviceModel,
            "device_tag": deviceTag,
            "device_type": deviceType,
            "ip": ip,
            "user_id": userId
        },
      );

      return res;
    }
  }


  export class SyncChecklistController {
    static async basePlanSyncMChecklistPost(dto: BasePlanDefinition.SyncDataRequest, userId: number):Promise<SyncRowResponse<Array<BasePlanDefinition.ChecklistEditOutput>> | null | undefined> {
      let res: SyncRowResponse<Array<BasePlanDefinition.ChecklistEditOutput>> | null | undefined = await post<SyncRowResponse<Array<BasePlanDefinition.ChecklistEditOutput>>>(
        BasePlanUrlConstant.BASE_PLAN_SYNC_CHECKLIST_URL,
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


  export class UserDataInitController {
    static async basePlanV1GetinituserdatatemplatePost(ip: string, userId: number):Promise<ApiResponse<BasePlanDefinition.InitUserDataTemplateV1Output> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.InitUserDataTemplateV1Output> | null | undefined = await post<ApiResponse<BasePlanDefinition.InitUserDataTemplateV1Output>>(
        BasePlanUrlConstant.BASE_PLAN_V1_GET_INIT_USER_DATA_TEMPLATE,
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

    static async basePlanV1InitPost(dto: BasePlanDefinition.UserDataInitV1Input, ip: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BasePlanUrlConstant.BASE_PLAN_V1_INIT,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        dto
      );

      return res;
    }
  }


  export class ScheduleExportController {
    static async basePlanExportHasMRecordMDataPost(dto: BasePlanDefinition.PlanExportDataInput, userId: number):Promise<ApiResponse<BasePlanDefinition.BooleanDataOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.BooleanDataOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.BooleanDataOutput>>(
        BasePlanUrlConstant.BASE_PLAN_EXPORT_HAS_RECORD_DATA_URL,
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

    static async basePlanExportRecommendMSectionMRecordMDataPost(userId?: number):Promise<ApiResponse<BasePlanDefinition.RecommendSectionPlanData> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.RecommendSectionPlanData> | null | undefined = await post<ApiResponse<BasePlanDefinition.RecommendSectionPlanData>>(
        BasePlanUrlConstant.BASE_PLAN_EXPORT_RECOMMEND_SECTION_RECORD_DATA_URL,
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
  }


  export class PlanScheduleRemindController {
    static async basePlanScheduleGettodoremindunfinishedPost():Promise<ApiResponse<BasePlanDefinition.TodoRemindUnfinishedOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.TodoRemindUnfinishedOutput> | null | undefined = await post<ApiResponse<BasePlanDefinition.TodoRemindUnfinishedOutput>>(
        BasePlanUrlConstant.BASE_PLAN_SCHEDULE_GET_TODO_REMIND_UNFINISHED,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async basePlanScheduleSavetodoremindunfinishedPost(dto: BasePlanDefinition.TodoRemindUnfinishedInput):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BasePlanUrlConstant.BASE_PLAN_SCHEDULE_SAVE_TODO_REMIND_UNFINISHED,
        {
        },
        {
        },
        {
        },
        dto
      );

      return res;
    }
  }

  export class LocalServerPost {
    static async LocalServerUnfinishSchedulePost(): Promise<ApiResponse<BasePlanDefinition.TodoUnfinishScheduleOutput> | null | undefined> {
      let res: ApiResponse<BasePlanDefinition.TodoUnfinishScheduleOutput> | null | undefined =
        await post<ApiResponse<BasePlanDefinition.TodoUnfinishScheduleOutput>>(
          BasePlanUrlConstant.LOCAL_SERVER_UNFINISH_SCHEDULE,
          {},
          {},
          {},
        );

      return res;
    }
  }
}
