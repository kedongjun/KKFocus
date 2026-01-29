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
import { BaseAuntDefinition } from './../definition/BaseAuntDefinition';
import { BaseAuntUrlConstant } from './../constant/BaseAuntUrlConstant';

export namespace BaseAuntOperation {
  export class AuntController {
    static async baseAuntAddadvancedayPost(input: BaseAuntDefinition.AddAdvanceDayInput):Promise<ApiResponse<BaseAuntDefinition.AuntRemindAdvanceDayOutput> | null | undefined> {
      let res: ApiResponse<BaseAuntDefinition.AuntRemindAdvanceDayOutput> | null | undefined = await post<ApiResponse<BaseAuntDefinition.AuntRemindAdvanceDayOutput>>(
        BaseAuntUrlConstant.BASE_AUNT_ADD_ADVANCE_DAY,
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

    static async baseAuntAddUAuntURecordPost(input: BaseAuntDefinition.AddAuntRecordInput):Promise<ApiResponse<BaseAuntDefinition.AuntListOutput> | null | undefined> {
      let res: ApiResponse<BaseAuntDefinition.AuntListOutput> | null | undefined = await post<ApiResponse<BaseAuntDefinition.AuntListOutput>>(
        BaseAuntUrlConstant.BASE_AUNT_ADD_AUNT_RECORD_URL,
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

    static async baseAuntAddUFinishPost(input: BaseAuntDefinition.AddFinishedInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseAuntUrlConstant.BASE_AUNT_ADD_FINISH_URL,
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

    static async baseAuntAuntstatisticsPost(input: BaseAuntDefinition.AuntStatisticsInput, userId: number):Promise<ApiResponse<BaseAuntDefinition.AuntStatisticsOutput> | null | undefined> {
      let res: ApiResponse<BaseAuntDefinition.AuntStatisticsOutput> | null | undefined = await post<ApiResponse<BaseAuntDefinition.AuntStatisticsOutput>>(
        BaseAuntUrlConstant.BASE_AUNT_AUNT_STATISTICS,
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

    static async baseAuntConfigUInfoPost():Promise<ApiResponse<BaseAuntDefinition.AuntConfigOutput> | null | undefined> {
      let res: ApiResponse<BaseAuntDefinition.AuntConfigOutput> | null | undefined = await post<ApiResponse<BaseAuntDefinition.AuntConfigOutput>>(
        BaseAuntUrlConstant.BASE_AUNT_CONFIG_INFO_URL,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseAuntDeladvancedayPost(input: BaseAuntDefinition.DelAdvanceDayInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseAuntUrlConstant.BASE_AUNT_DEL_ADVANCE_DAY,
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

    static async baseAuntDeleteURecordPost(input: BaseAuntDefinition.DeleteAuntRecordInput):Promise<ApiResponse<BaseAuntDefinition.AuntListOutput> | null | undefined> {
      let res: ApiResponse<BaseAuntDefinition.AuntListOutput> | null | undefined = await post<ApiResponse<BaseAuntDefinition.AuntListOutput>>(
        BaseAuntUrlConstant.BASE_AUNT_DELETE_RECORD_URL,
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

    static async baseAuntExportdataPost(condition: BaseAuntDefinition.AuntTransferConditionV3, userId: number):Promise<ApiResponse<BaseAuntDefinition.AuntImportExportData> | null | undefined> {
      let res: ApiResponse<BaseAuntDefinition.AuntImportExportData> | null | undefined = await post<ApiResponse<BaseAuntDefinition.AuntImportExportData>>(
        BaseAuntUrlConstant.BASE_AUNT_EXPORT_DATA,
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

    static async baseAuntGetmyappletPost(input: BaseAuntDefinition.SearchUserAuntRecordByMonthInput, ip: string, userId: number):Promise<ApiResponse<BaseAuntDefinition.AuntListOutput> | null | undefined> {
      let res: ApiResponse<BaseAuntDefinition.AuntListOutput> | null | undefined = await post<ApiResponse<BaseAuntDefinition.AuntListOutput>>(
        BaseAuntUrlConstant.BASE_AUNT_GET_MY_APPLET,
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

    static async baseAuntGetremindconfigPost():Promise<ApiResponse<BaseAuntDefinition.AuntRemindOutput> | null | undefined> {
      let res: ApiResponse<BaseAuntDefinition.AuntRemindOutput> | null | undefined = await post<ApiResponse<BaseAuntDefinition.AuntRemindOutput>>(
        BaseAuntUrlConstant.BASE_AUNT_GET_REMIND_CONFIG,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseAuntGetshortcutappletPost(input: BaseAuntDefinition.SearchUserAuntRecordByWeekCustomInput, ip: string, userId: number):Promise<ApiResponse<BaseAuntDefinition.AuntListOutput> | null | undefined> {
      let res: ApiResponse<BaseAuntDefinition.AuntListOutput> | null | undefined = await post<ApiResponse<BaseAuntDefinition.AuntListOutput>>(
        BaseAuntUrlConstant.BASE_AUNT_GET_SHORTCUT_APPLET,
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

    static async baseAuntGetremindelementsPost(input: BaseAuntDefinition.AuntRemindViewInput, userId: number):Promise<ApiResponse<BaseAuntDefinition.AuntTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseAuntDefinition.AuntTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseAuntDefinition.AuntTodoViewListOutput>>(
        BaseAuntUrlConstant.BASE_AUNT_GETREMINDELEMENTS,
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

    static async baseAuntImportdataPost(data: BaseAuntDefinition.AuntImportExportData, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseAuntUrlConstant.BASE_AUNT_IMPORT_DATA,
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

    static async baseAuntMemorialdataPost(input: BaseAuntDefinition.DateRangeRequest, userId: number):Promise<ApiResponse<BaseAuntDefinition.AuntPageOutput> | null | undefined> {
      let res: ApiResponse<BaseAuntDefinition.AuntPageOutput> | null | undefined = await post<ApiResponse<BaseAuntDefinition.AuntPageOutput>>(
        BaseAuntUrlConstant.BASE_AUNT_MEMORIAL_DATA,
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

    static async baseAuntNextauntvobeginPost(userId: number):Promise<ApiResponse<BaseAuntDefinition.NextAuntVoBeginOutput> | null | undefined> {
      let res: ApiResponse<BaseAuntDefinition.NextAuntVoBeginOutput> | null | undefined = await post<ApiResponse<BaseAuntDefinition.NextAuntVoBeginOutput>>(
        BaseAuntUrlConstant.BASE_AUNT_NEXT_AUNT_VO_BEGIN,
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

    static async baseAuntQueryintentPost():Promise<ApiResponse<BaseAuntDefinition.AuntIntentOutput> | null | undefined> {
      let res: ApiResponse<BaseAuntDefinition.AuntIntentOutput> | null | undefined = await post<ApiResponse<BaseAuntDefinition.AuntIntentOutput>>(
        BaseAuntUrlConstant.BASE_AUNT_QUERY_INTENT,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseAuntQueryusertemperaturebypagePost(input: BaseAuntDefinition.PaginableRequest, userId: number):Promise<PaginableResponse<Array<BaseAuntDefinition.AuntTemperatureListOutput>> | null | undefined> {
      let res: PaginableResponse<Array<BaseAuntDefinition.AuntTemperatureListOutput>> | null | undefined = await post<PaginableResponse<Array<BaseAuntDefinition.AuntTemperatureListOutput>>>(
        BaseAuntUrlConstant.BASE_AUNT_QUERY_USER_TEMPERATURE_BY_PAGE,
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

    static async baseAuntRemindadvancedaylistPost(userId: number):Promise<ApiResponse<BaseAuntDefinition.RemindAdvanceDayListOutput> | null | undefined> {
      let res: ApiResponse<BaseAuntDefinition.RemindAdvanceDayListOutput> | null | undefined = await post<ApiResponse<BaseAuntDefinition.RemindAdvanceDayListOutput>>(
        BaseAuntUrlConstant.BASE_AUNT_REMIND_ADVANCE_DAY_LIST,
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

    static async baseAuntSearchuserauntrecordbyrangePost(input: BaseAuntDefinition.SearchUserAuntRecordByRangeInput):Promise<ApiResponse<BaseAuntDefinition.AuntListOutput> | null | undefined> {
      let res: ApiResponse<BaseAuntDefinition.AuntListOutput> | null | undefined = await post<ApiResponse<BaseAuntDefinition.AuntListOutput>>(
        BaseAuntUrlConstant.BASE_AUNT_SEARCH_USER_AUNT_RECORD_BY_RANGE,
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

    static async baseAuntSearchuserauntrecordbyweekPost(input: BaseAuntDefinition.SearchUserAuntRecordByWeekInput, ip: string, userId: number):Promise<ApiResponse<BaseAuntDefinition.AuntListOutput> | null | undefined> {
      let res: ApiResponse<BaseAuntDefinition.AuntListOutput> | null | undefined = await post<ApiResponse<BaseAuntDefinition.AuntListOutput>>(
        BaseAuntUrlConstant.BASE_AUNT_SEARCH_USER_AUNT_RECORD_BY_WEEK,
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

    static async baseAuntSearchuserauntrecordbyweekcustomPost(input: BaseAuntDefinition.SearchUserAuntRecordByWeekCustomInput, ip: string, userId: number):Promise<ApiResponse<BaseAuntDefinition.AuntListOutput> | null | undefined> {
      let res: ApiResponse<BaseAuntDefinition.AuntListOutput> | null | undefined = await post<ApiResponse<BaseAuntDefinition.AuntListOutput>>(
        BaseAuntUrlConstant.BASE_AUNT_SEARCH_USER_AUNT_RECORD_BY_WEEK_CUSTOM,
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

    static async baseAuntSearchUUserUAuntURecordUByUMonthPost(input: BaseAuntDefinition.SearchUserAuntRecordByMonthInput):Promise<ApiResponse<BaseAuntDefinition.AuntListOutput> | null | undefined> {
      let res: ApiResponse<BaseAuntDefinition.AuntListOutput> | null | undefined = await post<ApiResponse<BaseAuntDefinition.AuntListOutput>>(
        BaseAuntUrlConstant.BASE_AUNT_SEARCH_USER_AUNT_RECORD_BY_MONTH_URL,
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

    static async baseAuntTodoUViewUListPost(input: BaseAuntDefinition.AuntTodoViewInput, userId: number):Promise<ApiResponse<BaseAuntDefinition.AuntTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseAuntDefinition.AuntTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseAuntDefinition.AuntTodoViewListOutput>>(
        BaseAuntUrlConstant.BASE_AUNT_TODO_VIEW_LIST_URL,
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

    static async baseAuntUpdateadvancedayPost(input: BaseAuntDefinition.UpdateAdvanceDayInput, ip: string, userId: number):Promise<ApiResponse<BaseAuntDefinition.AuntRemindAdvanceDayOutput> | null | undefined> {
      let res: ApiResponse<BaseAuntDefinition.AuntRemindAdvanceDayOutput> | null | undefined = await post<ApiResponse<BaseAuntDefinition.AuntRemindAdvanceDayOutput>>(
        BaseAuntUrlConstant.BASE_AUNT_UPDATE_ADVANCE_DAY,
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

    static async baseAuntUpdateadvancedayselectedPost(input: BaseAuntDefinition.UpdateAdvanceDaySelectedInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseAuntUrlConstant.BASE_AUNT_UPDATE_ADVANCE_DAY_SELECTED,
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

    static async baseAuntUpdatebeginremindswitchPost(input: BaseAuntDefinition.UpdateBeginRemindSwitch):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseAuntUrlConstant.BASE_AUNT_UPDATE_BEGIN_REMIND_SWITCH,
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

    static async baseAuntUpdatedysmenorrheaPost(input: BaseAuntDefinition.UpdateDysmenorrheaInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseAuntUrlConstant.BASE_AUNT_UPDATE_DYSMENORRHEA,
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

    static async baseAuntUpdateflowPost(input: BaseAuntDefinition.UpdateFlowInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseAuntUrlConstant.BASE_AUNT_UPDATE_FLOW,
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

    static async baseAuntUpdateremindinfoPost(input: BaseAuntDefinition.UpdateRemindInfoInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseAuntUrlConstant.BASE_AUNT_UPDATE_REMIND_INFO,
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

    static async baseAuntUpdatetemperaturePost(input: BaseAuntDefinition.UpdateTemperatureInput):Promise<ApiResponse<BaseAuntDefinition.AuntTemperatureOutput> | null | undefined> {
      let res: ApiResponse<BaseAuntDefinition.AuntTemperatureOutput> | null | undefined = await post<ApiResponse<BaseAuntDefinition.AuntTemperatureOutput>>(
        BaseAuntUrlConstant.BASE_AUNT_UPDATE_TEMPERATURE,
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

    static async baseAuntUpdateUConfigPost(input: BaseAuntDefinition.UpdateConfigInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseAuntUrlConstant.BASE_AUNT_UPDATE_CONFIG_URL,
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

    static async baseAuntUpdateULoveUTypePost(input: BaseAuntDefinition.UpdateLoveInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseAuntUrlConstant.BASE_AUNT_UPDATE_LOVE_TYPE_URL,
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

    static async baseAuntUpdateURecordUEndPost(input: BaseAuntDefinition.UpdateAuntRecordEndInput):Promise<ApiResponse<BaseAuntDefinition.AuntListOutput> | null | undefined> {
      let res: ApiResponse<BaseAuntDefinition.AuntListOutput> | null | undefined = await post<ApiResponse<BaseAuntDefinition.AuntListOutput>>(
        BaseAuntUrlConstant.BASE_AUNT_UPDATE_RECORD_END_URL,
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

    static async baseAuntUpdateURecordUStartPost(input: BaseAuntDefinition.UpdateAuntRecordStartInput):Promise<ApiResponse<BaseAuntDefinition.AuntListOutput> | null | undefined> {
      let res: ApiResponse<BaseAuntDefinition.AuntListOutput> | null | undefined = await post<ApiResponse<BaseAuntDefinition.AuntListOutput>>(
        BaseAuntUrlConstant.BASE_AUNT_UPDATE_RECORD_START_URL,
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

    static async baseAuntUpdateURemarkPost(input: BaseAuntDefinition.UpdateRemarkInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseAuntUrlConstant.BASE_AUNT_UPDATE_REMARK_URL,
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

    static async baseAuntV2TodoviewlistPost(input: BaseAuntDefinition.AuntTodoViewInput, userId: number):Promise<ApiResponse<BaseAuntDefinition.AuntTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseAuntDefinition.AuntTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseAuntDefinition.AuntTodoViewListOutput>>(
        BaseAuntUrlConstant.BASE_AUNT_V2_TODO_VIEW_LIST,
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

    static async baseAuntViewReciprocalPost(input: BaseAuntDefinition.ReciprocalViewRequest, userId: number):Promise<ApiResponse<BaseAuntDefinition.AuntReciprocalViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseAuntDefinition.AuntReciprocalViewListOutput> | null | undefined = await post<ApiResponse<BaseAuntDefinition.AuntReciprocalViewListOutput>>(
        BaseAuntUrlConstant.BASE_AUNT_VIEW_RECIPROCAL,
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


  export class CheckAliveController {
    static async checkaliveGet():Promise<number | null | undefined> {
      let res: number | null | undefined = await get<number>(
        BaseAuntUrlConstant.CHECKALIVE,
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


  export class AuntSyncDataController {
    static async baseAuntSyncUAuntUConfigUDataPost(syncDataInput: BaseAuntDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseAuntDefinition.SyncDataAppletResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseAuntDefinition.SyncDataAppletResponse>> | null | undefined = await post<RowResponse<Array<BaseAuntDefinition.SyncDataAppletResponse>>>(
        BaseAuntUrlConstant.BASE_AUNT_SYNC_AUNT_CONFIG_DATA_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        syncDataInput
      );

      return res;
    }

    static async baseAuntSyncUAuntUExtUDataPost(syncDataInput: BaseAuntDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseAuntDefinition.AuntExtraDataSync>> | null | undefined> {
      let res: RowResponse<Array<BaseAuntDefinition.AuntExtraDataSync>> | null | undefined = await post<RowResponse<Array<BaseAuntDefinition.AuntExtraDataSync>>>(
        BaseAuntUrlConstant.BASE_AUNT_SYNC_AUNT_EXT_DATA_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        syncDataInput
      );

      return res;
    }

    static async baseAuntSyncUAuntURecordUDataPost(syncDataInput: BaseAuntDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseAuntDefinition.SyncDataAppletResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseAuntDefinition.SyncDataAppletResponse>> | null | undefined = await post<RowResponse<Array<BaseAuntDefinition.SyncDataAppletResponse>>>(
        BaseAuntUrlConstant.BASE_AUNT_SYNC_AUNT_RECORD_DATA_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        syncDataInput
      );

      return res;
    }

    static async baseAuntSyncUFinishUDataPost(input: BaseAuntDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseAuntDefinition.SyncDataAppletFinishResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseAuntDefinition.SyncDataAppletFinishResponse>> | null | undefined = await post<RowResponse<Array<BaseAuntDefinition.SyncDataAppletFinishResponse>>>(
        BaseAuntUrlConstant.BASE_AUNT_SYNC_FINISH_DATA_URL,
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

    static async baseAuntV2SyncUAuntUConfigUDataPost(syncDataInput: BaseAuntDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseAuntDefinition.SyncDataAppletResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseAuntDefinition.SyncDataAppletResponse>> | null | undefined = await post<RowResponse<Array<BaseAuntDefinition.SyncDataAppletResponse>>>(
        BaseAuntUrlConstant.BASE_AUNT_V2_SYNC_AUNT_CONFIG_DATA_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        syncDataInput
      );

      return res;
    }

    static async baseAuntV2SyncUAuntURecordUDataPost(syncDataInput: BaseAuntDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseAuntDefinition.SyncDataAppletResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseAuntDefinition.SyncDataAppletResponse>> | null | undefined = await post<RowResponse<Array<BaseAuntDefinition.SyncDataAppletResponse>>>(
        BaseAuntUrlConstant.BASE_AUNT_V2_SYNC_AUNT_RECORD_DATA_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        syncDataInput
      );

      return res;
    }
  }


  export class AuntTissueConifgController {
    static async baseAuntAunttissueconifgUpdateisremindPost(input: BaseAuntDefinition.UpdateIsRemindInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseAuntUrlConstant.BASE_AUNT_AUNT_TISSUE_CONIFG_UPDATE_IS_REMIND,
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

    static async baseAuntAunttissueconifgUpdatepushcontentPost(input: BaseAuntDefinition.UpdatePushContentInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseAuntUrlConstant.BASE_AUNT_AUNT_TISSUE_CONIFG_UPDATE_PUSH_CONTENT,
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

    static async baseAuntAunttissueconifgUpdateremindtimePost(input: BaseAuntDefinition.UpdateRemindTimeInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseAuntUrlConstant.BASE_AUNT_AUNT_TISSUE_CONIFG_UPDATE_REMIND_TIME,
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
