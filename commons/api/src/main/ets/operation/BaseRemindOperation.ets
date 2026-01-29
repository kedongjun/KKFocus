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
import { BaseRemindDefinition } from './../definition/BaseRemindDefinition';
import { BaseRemindUrlConstant } from './../constant/BaseRemindUrlConstant';

export namespace BaseRemindOperation {
  export class CheckAliveController {
    static async checkaliveGet():Promise<number | null | undefined> {
      let res: number | null | undefined = await get<number>(
        BaseRemindUrlConstant.CHECKALIVE,
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


  export class RemindJobController {
    static async baseRemindBatchpushPost(pushParams: Array<BaseRemindDefinition.BatchPushParam>):Promise<void | null | undefined> {
      let res: void | null | undefined = await post<void>(
        BaseRemindUrlConstant.BASE_REMIND_BATCH_PUSH,
        {
        },
        {
        },
        {
        },
        pushParams
      );

      return res;
    }

    static async baseRemindPushPost(pushParams: Array<BaseRemindDefinition.PushParam>):Promise<void | null | undefined> {
      let res: void | null | undefined = await post<void>(
        BaseRemindUrlConstant.BASE_REMIND_PUSH,
        {
        },
        {
        },
        {
        },
        pushParams
      );

      return res;
    }

    static async baseRemindPushbatchremindnocheckswitchPost(batchJobPushDtos: Array<BaseRemindDefinition.BatchJobPushDto>):Promise<void | null | undefined> {
      let res: void | null | undefined = await post<void>(
        BaseRemindUrlConstant.BASE_REMIND_PUSH_BATCH_REMIND_NO_CHECK_SWITCH,
        {
        },
        {
        },
        {
        },
        batchJobPushDtos
      );

      return res;
    }

    static async baseRemindTriggerMRemindPost(jobPullOutputs: Array<BaseRemindDefinition.JobPullOutput>):Promise<void | null | undefined> {
      let res: void | null | undefined = await post<void>(
        BaseRemindUrlConstant.BASE_REMIND_TRIGGER_REMIND_URL,
        {
        },
        {
        },
        {
        },
        jobPullOutputs
      );

      return res;
    }
  }
}
