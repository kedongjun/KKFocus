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

import { BaseClassDefinition } from './../definition/BaseClassDefinition';
import { BaseClassUrlConstant } from './../constant/BaseClassUrlConstant';

export namespace BaseClassOperation {

//测试
  export class LocalServerPost {
    static async LocalServerUnfinishSchedulePost(): Promise<ApiResponse<BaseClassDefinition.TodoUnfinishScheduleOutput> | null | undefined> {
      let res: ApiResponse<BaseClassDefinition.TodoUnfinishScheduleOutput> | null | undefined =
        await post<ApiResponse<BaseClassDefinition.TodoUnfinishScheduleOutput>>(
          BaseClassUrlConstant.LOCAL_SERVER_UNFINISH_SCHEDULE,
          {},
          {},
          {},
        );

      return res;
    }
  }

  export class ClassLocalServerPost {
    static async GetCurrentCourseListPost(dto: BaseClassDefinition.ClassGetCurrentCourseListInput): Promise<ApiResponse<BaseClassDefinition.ClassGetCurrentCourseListOutput> | null | undefined> {
      let res: ApiResponse<BaseClassDefinition.ClassGetCurrentCourseListOutput> | null | undefined =
        await post<ApiResponse<BaseClassDefinition.ClassGetCurrentCourseListOutput>>(
          BaseClassUrlConstant.LOCAL_SERVER_SCHOOL_GET_CURRENTCOURSELIST,
          {},
          {},
          {},
          dto
        );

      return res;
    }
  }

}