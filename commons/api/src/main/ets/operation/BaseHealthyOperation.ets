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
import { BaseHealthyDefinition } from './../definition/BaseHealthyDefinition';
import { BaseHealthyUrlConstant } from './../constant/BaseHealthyUrlConstant';

export namespace BaseHealthyOperation {
  export class MedicineController {
    static async baseHealthyMedicineV1AddPost(input: BaseHealthyDefinition.MedicineAddInput, ip: string, userId: number):Promise<ApiResponse<BaseHealthyDefinition.MedicineAddOutput> | null | undefined> {
      let res: ApiResponse<BaseHealthyDefinition.MedicineAddOutput> | null | undefined = await post<ApiResponse<BaseHealthyDefinition.MedicineAddOutput>>(
        BaseHealthyUrlConstant.BASE_HEALTHY_MEDICINE_V1_ADD,
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

    static async baseHealthyMedicineV1BatchaddPost(inputList: Array<BaseHealthyDefinition.MedicineAddInput>, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseHealthyUrlConstant.BASE_HEALTHY_MEDICINE_V1_BATCH_ADD,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        inputList
      );

      return res;
    }

    static async baseHealthyMedicineV1DeletePost(input: BaseHealthyDefinition.MedicineDeleteInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseHealthyUrlConstant.BASE_HEALTHY_MEDICINE_V1_DELETE,
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

    static async baseHealthyMedicineV1FinishPost(input: BaseHealthyDefinition.MedicineFinishInput, ip: string, userId: number):Promise<ApiResponse<BaseHealthyDefinition.MedicineFinishedOutput> | null | undefined> {
      let res: ApiResponse<BaseHealthyDefinition.MedicineFinishedOutput> | null | undefined = await post<ApiResponse<BaseHealthyDefinition.MedicineFinishedOutput>>(
        BaseHealthyUrlConstant.BASE_HEALTHY_MEDICINE_V1_FINISH,
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

    static async baseHealthyMedicineV1GethomepagePost(input: BaseHealthyDefinition.MedicineHomePageInput, userId: number):Promise<ApiResponse<BaseHealthyDefinition.MedicineHomePageListOutput> | null | undefined> {
      let res: ApiResponse<BaseHealthyDefinition.MedicineHomePageListOutput> | null | undefined = await post<ApiResponse<BaseHealthyDefinition.MedicineHomePageListOutput>>(
        BaseHealthyUrlConstant.BASE_HEALTHY_MEDICINE_V1_GET_HOME_PAGE,
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

    static async baseHealthyMedicineV1InfoPost(input: BaseHealthyDefinition.MedicineInfoInput, userId: number):Promise<ApiResponse<BaseHealthyDefinition.MedicineInfoOutput> | null | undefined> {
      let res: ApiResponse<BaseHealthyDefinition.MedicineInfoOutput> | null | undefined = await post<ApiResponse<BaseHealthyDefinition.MedicineInfoOutput>>(
        BaseHealthyUrlConstant.BASE_HEALTHY_MEDICINE_V1_INFO,
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

    static async baseHealthyMedicineV1MedicinedelayremindaddorupdatePost(input: BaseHealthyDefinition.MedicineDelayRemindInput, ip: string, userId: number):Promise<ApiResponse<BaseHealthyDefinition.MedicineDelayRemindOutput> | null | undefined> {
      let res: ApiResponse<BaseHealthyDefinition.MedicineDelayRemindOutput> | null | undefined = await post<ApiResponse<BaseHealthyDefinition.MedicineDelayRemindOutput>>(
        BaseHealthyUrlConstant.BASE_HEALTHY_MEDICINE_V1_MEDICINE_DELAY_REMIND_ADD_OR_UPDATE,
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

    static async baseHealthyMedicineV1MedicinedelayremindinfoPost(userId: number):Promise<ApiResponse<BaseHealthyDefinition.MedicineDelayRemindOutput> | null | undefined> {
      let res: ApiResponse<BaseHealthyDefinition.MedicineDelayRemindOutput> | null | undefined = await post<ApiResponse<BaseHealthyDefinition.MedicineDelayRemindOutput>>(
        BaseHealthyUrlConstant.BASE_HEALTHY_MEDICINE_V1_MEDICINE_DELAY_REMIND_INFO,
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

    static async baseHealthyMedicineV1MedicinelistPost(userId: number):Promise<RowResponse<Array<BaseHealthyDefinition.MedicineListOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseHealthyDefinition.MedicineListOutput>> | null | undefined = await post<RowResponse<Array<BaseHealthyDefinition.MedicineListOutput>>>(
        BaseHealthyUrlConstant.BASE_HEALTHY_MEDICINE_V1_MEDICINE_LIST,
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

    static async baseHealthyMedicineV1MedicinetemplatePost(userId: number):Promise<RowResponse<Array<BaseHealthyDefinition.MedicineTemplateByTypeOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseHealthyDefinition.MedicineTemplateByTypeOutput>> | null | undefined = await post<RowResponse<Array<BaseHealthyDefinition.MedicineTemplateByTypeOutput>>>(
        BaseHealthyUrlConstant.BASE_HEALTHY_MEDICINE_V1_MEDICINE_TEMPLATE,
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

    static async baseHealthyMedicineV1SearchPost(input: BaseHealthyDefinition.MedicineSearchInput):Promise<RowResponse<Array<BaseHealthyDefinition.MedicineSearchOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseHealthyDefinition.MedicineSearchOutput>> | null | undefined = await post<RowResponse<Array<BaseHealthyDefinition.MedicineSearchOutput>>>(
        BaseHealthyUrlConstant.BASE_HEALTHY_MEDICINE_V1_SEARCH,
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

    static async baseHealthyMedicineV1SortPost(input: BaseHealthyDefinition.MedicineSortInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseHealthyUrlConstant.BASE_HEALTHY_MEDICINE_V1_SORT,
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

    static async baseHealthyMedicineV1SwitchpushPost(input: BaseHealthyDefinition.MedicineSwitchPushInput, ip: string, userId: number):Promise<ApiResponse<BaseHealthyDefinition.MedicineSwitchPushOutput> | null | undefined> {
      let res: ApiResponse<BaseHealthyDefinition.MedicineSwitchPushOutput> | null | undefined = await post<ApiResponse<BaseHealthyDefinition.MedicineSwitchPushOutput>>(
        BaseHealthyUrlConstant.BASE_HEALTHY_MEDICINE_V1_SWITCH_PUSH,
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

    static async baseHealthyMedicineV1SyncdataPost(syncDataInput: BaseHealthyDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseHealthyDefinition.SyncDataAppletResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseHealthyDefinition.SyncDataAppletResponse>> | null | undefined = await post<RowResponse<Array<BaseHealthyDefinition.SyncDataAppletResponse>>>(
        BaseHealthyUrlConstant.BASE_HEALTHY_MEDICINE_V1_SYNC_DATA,
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

    static async baseHealthyMedicineV1SyncfinisheddataPost(syncDataInput: BaseHealthyDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseHealthyDefinition.SyncDataAppletFinishTimeResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseHealthyDefinition.SyncDataAppletFinishTimeResponse>> | null | undefined = await post<RowResponse<Array<BaseHealthyDefinition.SyncDataAppletFinishTimeResponse>>>(
        BaseHealthyUrlConstant.BASE_HEALTHY_MEDICINE_V1_SYNC_FINISHED_DATA,
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

    static async baseHealthyMedicineV1UpdatePost(input: BaseHealthyDefinition.MedicineUpdateInput, ip: string, userId: number):Promise<ApiResponse<BaseHealthyDefinition.MedicineUpdateOutput> | null | undefined> {
      let res: ApiResponse<BaseHealthyDefinition.MedicineUpdateOutput> | null | undefined = await post<ApiResponse<BaseHealthyDefinition.MedicineUpdateOutput>>(
        BaseHealthyUrlConstant.BASE_HEALTHY_MEDICINE_V1_UPDATE,
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

    static async baseMedicineV1GetmedicineidPost(input: BaseHealthyDefinition.IdRequest, userId: number):Promise<ApiResponse<BaseHealthyDefinition.IdResponse> | null | undefined> {
      let res: ApiResponse<BaseHealthyDefinition.IdResponse> | null | undefined = await post<ApiResponse<BaseHealthyDefinition.IdResponse>>(
        BaseHealthyUrlConstant.BASE_MEDICINE_V1_GET_MEDICINE_ID,
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

    static async baseMedicineV1MyappletPost(userId: number):Promise<ApiResponse<BaseHealthyDefinition.MyAppletUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<BaseHealthyDefinition.MyAppletUsingPOSTRsp> | null | undefined = await post<ApiResponse<BaseHealthyDefinition.MyAppletUsingPOSTRsp>>(
        BaseHealthyUrlConstant.BASE_MEDICINE_V1_MY_APPLET,
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

    static async baseMedicineV1SelectMByMIdsPost(ids: BaseHealthyDefinition.IdsRequest, userId: number):Promise<RowResponse<Array<BaseHealthyDefinition.AppletHistoryResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseHealthyDefinition.AppletHistoryResponse>> | null | undefined = await post<RowResponse<Array<BaseHealthyDefinition.AppletHistoryResponse>>>(
        BaseHealthyUrlConstant.BASE_MEDICINE_V1_SELECT_BY_IDS_URL,
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

    static async baseMedicineV1ShortcutappletPost(userId: number):Promise<RowResponse<Array<BaseHealthyDefinition.MedicineHomePageOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseHealthyDefinition.MedicineHomePageOutput>> | null | undefined = await post<RowResponse<Array<BaseHealthyDefinition.MedicineHomePageOutput>>>(
        BaseHealthyUrlConstant.BASE_MEDICINE_V1_SHORTCUT_APPLET,
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

    static async baseMedicineV1TodoviewlistPost(input: BaseHealthyDefinition.MedicineTodoViewInput, userId: number):Promise<ApiResponse<BaseHealthyDefinition.MedicineTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseHealthyDefinition.MedicineTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseHealthyDefinition.MedicineTodoViewListOutput>>(
        BaseHealthyUrlConstant.BASE_MEDICINE_V1_TODO_VIEW_LIST,
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
        BaseHealthyUrlConstant.CHECKALIVE,
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
}
