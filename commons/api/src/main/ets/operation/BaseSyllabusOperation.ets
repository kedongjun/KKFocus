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
import { BaseSyllabusDefinition } from './../definition/BaseSyllabusDefinition';
import { BaseSyllabusUrlConstant } from './../constant/BaseSyllabusUrlConstant';

export namespace BaseSyllabusOperation {
  export class CourseImportController {
    static async baseSyllabusV1CourseExcelimportPost(input: BaseSyllabusDefinition.CourseImportInput, ip?: string,
      userId?: number): Promise<RowResponse<Array<BaseSyllabusDefinition.CourseInfoOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseSyllabusDefinition.CourseInfoOutput>> | null | undefined =
        await post<RowResponse<Array<BaseSyllabusDefinition.CourseInfoOutput>>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_V1_COURSE_EXCEL_IMPORT,
          {},
          {},
          {
            // "ip": ip,
            // "user_id": userId
          },
          input
        );

      return res;
    }
  }


  export class SyllabusV2Controller {
    static async baseSyllabusV2AddcoursenamePost(input: BaseSyllabusDefinition.CourseNameInput, ip: string,
      userId: number): Promise<ApiResponse<BaseSyllabusDefinition.CourseNameOutput> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.CourseNameOutput> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.CourseNameOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_V2_ADD_COURSE_NAME,
          {},
          {},
          {
            "ip": ip,
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseSyllabusV2AddtermPost(input: BaseSyllabusDefinition.TermAddInput, ip: string,
      userId: number): Promise<ApiResponse<BaseSyllabusDefinition.TermNewOutput> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.TermNewOutput> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.TermNewOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_V2_ADD_TERM,
          {},
          {},
          {
            "ip": ip,
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseSyllabusV2BatchaddcoursePost(input: BaseSyllabusDefinition.CourseBatchAddV2Input, ip?: string,
      userId?: number): Promise<RowResponse<Array<BaseSyllabusDefinition.CourseInfoOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseSyllabusDefinition.CourseInfoOutput>> | null | undefined =
        await post<RowResponse<Array<BaseSyllabusDefinition.CourseInfoOutput>>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_V2_BATCH_ADD_COURSE,
          {},
          {},
          {
            // "ip": ip,
            // "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseSyllabusV2DeletecoursenamePost(input: BaseSyllabusDefinition.IdRequest, ip?: string,
      userId?: number): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseSyllabusUrlConstant.BASE_SYLLABUS_V2_DELETE_COURSE_NAME,
        {},
        {},
        {
          // "ip": ip,
          // "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseSyllabusV2DeletetermPost(input: BaseSyllabusDefinition.IdRequest, ip?: string,
      userId?: number): Promise<ApiResponse<BaseSyllabusDefinition.TermNewOutput> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.TermNewOutput> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.TermNewOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_V2_DELETE_TERM,
          {},
          {},
          {
          },
          input
        );

      return res;
    }

    static async baseSyllabusV2EditcoursenamePost(input: BaseSyllabusDefinition.CourseNameEditInput, ip?: string,
      userId?: number): Promise<ApiResponse<BaseSyllabusDefinition.CourseNameOutput> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.CourseNameOutput> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.CourseNameOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_V2_EDIT_COURSE_NAME,
          {},
          {},
          {
            // "ip": ip,
            // "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseSyllabusV2EdittermPost(input: BaseSyllabusDefinition.TermEditInput, ip: string,
      userId: number): Promise<ApiResponse<BaseSyllabusDefinition.TermNewOutput> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.TermNewOutput> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.TermNewOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_V2_EDIT_TERM,
          {},
          {},
          {
            "ip": ip,
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseSyllabusV2GetcoursenamelistPost(input: BaseSyllabusDefinition.IdRequest, ip?: string,
      userId?: number): Promise<RowResponse<Array<BaseSyllabusDefinition.CourseNameOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseSyllabusDefinition.CourseNameOutput>> | null | undefined =
        await post<RowResponse<Array<BaseSyllabusDefinition.CourseNameOutput>>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_V2_GET_COURSE_NAME_LIST,
          {},
          {},
          {
            // "ip": ip,
            // "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseSyllabusV2GetcoursetypePost(input: BaseSyllabusDefinition.DataVersionInput, ip: string,
      userId: number): Promise<RowResponse<Array<string>> | null | undefined> {
      let res: RowResponse<Array<string>> | null | undefined = await post<RowResponse<Array<string>>>(
        BaseSyllabusUrlConstant.BASE_SYLLABUS_V2_GET_COURSE_TYPE,
        {},
        {},
        {
          "ip": ip,
          "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseSyllabusV2GetcurrenttermPost(ip: string,
      userId: number): Promise<ApiResponse<BaseSyllabusDefinition.TermNewOutput> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.TermNewOutput> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.TermNewOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_V2_GET_CURRENT_TERM,
          {},
          {},
          {
            "ip": ip,
            "user_id": userId
          },
        );

      return res;
    }

    static async baseSyllabusV2GettermlistPost(userId?: number): Promise<RowResponse<Array<BaseSyllabusDefinition.TermNewOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseSyllabusDefinition.TermNewOutput>> | null | undefined =
        await post<RowResponse<Array<BaseSyllabusDefinition.TermNewOutput>>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_V2_GET_TERM_LIST,
          {},
          {},
          {
            // "user_id": userId
          },
        );

      return res;
    }

    static async baseSyllabusV2LessonnewSetPost(input: BaseSyllabusDefinition.SetLessonConfigNewInput,
      userId?: number): Promise<ApiResponse<BaseSyllabusDefinition.TermNewOutput> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.TermNewOutput> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.TermNewOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_V2_LESSON_NEW_SET,
          {},
          {},
          {
            // "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseSyllabusV2SortcoursenamePost(input: BaseSyllabusDefinition.CourseNameSortInput, ip?: string,
      userId?: number): Promise<RowResponse<Array<BaseSyllabusDefinition.CourseNameOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseSyllabusDefinition.CourseNameOutput>> | null | undefined =
        await post<RowResponse<Array<BaseSyllabusDefinition.CourseNameOutput>>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_V2_SORT_COURSE_NAME,
          {},
          {},
          {
            // "ip": ip,
            // "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseSyllabusV2SorttermPost(input: BaseSyllabusDefinition.IdsRequest, ip?: string,
      userId?: number): Promise<RowResponse<Array<BaseSyllabusDefinition.TermNewOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseSyllabusDefinition.TermNewOutput>> | null | undefined =
        await post<RowResponse<Array<BaseSyllabusDefinition.TermNewOutput>>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_V2_SORT_TERM,
          {},
          {},
          {
            // "ip": ip,
            // "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseSyllabusV2SwitchcurrentPost(input: BaseSyllabusDefinition.IdRequest, ip?: string,
      userId?: number): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseSyllabusUrlConstant.BASE_SYLLABUS_V2_SWITCH_CURRENT,
        {},
        {},
        {
          // "ip": ip,
          // "user_id": userId
        },
        input
      );

      return res;
    }
  }


  export class SyllabusV3Controller {
    static async baseSyllabusV3AddtermPost(input: BaseSyllabusDefinition.TermAddInput, ip?: string,
      userId?: number): Promise<ApiResponse<BaseSyllabusDefinition.TermNewOutput> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.TermNewOutput> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.TermNewOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_V3_ADD_TERM,
          {},
          {},
          {
            // "ip": ip,
            // "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseSyllabusV3AddtermbyqrcodePost(input: BaseSyllabusDefinition.AddTermByQrCodeInput, ip?: string,
      userId?: number): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseSyllabusUrlConstant.BASE_SYLLABUS_V3_ADD_TERM_BY_QR_CODE,
        {},
        {},
        {
          // "ip": ip,
          // "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseSyllabusV3EditlessonnoPost(input: BaseSyllabusDefinition.LessonConfigInput, ip?: string,
      userId?: number): Promise<ApiResponse<BaseSyllabusDefinition.TermNewOutput> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.TermNewOutput> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.TermNewOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_V3_EDIT_LESSON_NO,
          {},
          {},
          {
            // "ip": ip,
            // "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseSyllabusV3EdittermPost(input: BaseSyllabusDefinition.TermEditInput, ip?: string,
      userId?: number): Promise<ApiResponse<BaseSyllabusDefinition.TermNewOutput> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.TermNewOutput> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.TermNewOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_V3_EDIT_TERM,
          {},
          {},
          {
            // "ip": ip,
            // "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseSyllabusV3GetlatesttermbycoursetypePost(input: BaseSyllabusDefinition.TermQueryInput, ip: string,
      userId: number): Promise<ApiResponse<BaseSyllabusDefinition.TermNewOutput> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.TermNewOutput> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.TermNewOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_V3_GET_LATEST_TERM_BY_COURSE_TYPE,
          {},
          {},
          {
            "ip": ip,
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseSyllabusV3GetqrcodePost(channelType: string, input: BaseSyllabusDefinition.QrCodeInput, ip?: string,
      userId?: number): Promise<ApiResponse<BaseSyllabusDefinition.QrCodeOutput> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.QrCodeOutput> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.QrCodeOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_V3_GET_QR_CODE,
          {},
          {},
          {
            "channel_type": channelType,
          },
          input
        );

      return res;
    }

    static async baseSyllabusV3GettermbyqrcodePost(input: BaseSyllabusDefinition.QrCodeStringInput, ip?: string,
      userId?: number): Promise<ApiResponse<BaseSyllabusDefinition.TermNewOutput> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.TermNewOutput> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.TermNewOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_V3_GET_TERM_BY_QR_CODE,
          {},
          {},
          {
            // "ip": ip,
            // "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseSyllabusV3ValidlessonnoPost(input: BaseSyllabusDefinition.LessonConfigInput, ip: string,
      userId: number): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseSyllabusUrlConstant.BASE_SYLLABUS_V3_VALID_LESSON_NO,
        {},
        {},
        {
          "ip": ip,
          "user_id": userId
        },
        input
      );

      return res;
    }
  }


  export class SyllabusV4Controller {
    static async baseSyllabusV4AddcoursenamePost(input: BaseSyllabusDefinition.CourseNameV4Input, ip?: string,
      userId?: number): Promise<ApiResponse<BaseSyllabusDefinition.CourseNameOutput> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.CourseNameOutput> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.CourseNameOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_V4_ADD_COURSE_NAME,
          {},
          {},
          {
            // "ip": ip,
            // "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseSyllabusV4CourseDeletePost(input: BaseSyllabusDefinition.CourseDeleteV4Input,
      userId: number): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseSyllabusUrlConstant.BASE_SYLLABUS_V4_COURSE_DELETE,
        {},
        {},
        {
          "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseSyllabusV4CourseDragPost(input: BaseSyllabusDefinition.CourseDragV4Input, ip?: string,
      userId?: number): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseSyllabusUrlConstant.BASE_SYLLABUS_V4_COURSE_DRAG,
        {},
        {},
        {
          // "ip": ip,
          // "user_id": userId
        },
        input
      );

      return res;
    }


    static async baseSyllabusV4CourseFilterholidaySetPost(input: BaseSyllabusDefinition.TermFilterHolidayInput,
      ip?: string, userId?: number): Promise<ApiResponse<BaseSyllabusDefinition.TermNewOutput> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.TermNewOutput> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.TermNewOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_V4_COURSE_FILTER_HOLIDAY_SET,
          {},
          {},
          {
          },
          input
        );

      return res;
    }

    static async baseSyllabusV4EditcoursefromdetailPost(input: BaseSyllabusDefinition.CourseNameEditV4Input, ip: string,
      userId: number): Promise<ApiResponse<BaseSyllabusDefinition.CourseNameOutput> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.CourseNameOutput> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.CourseNameOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_V4_EDIT_COURSE_FROM_DETAIL,
          {},
          {},
          {
            "ip": ip,
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseSyllabusV4EditcoursenamePost(input: BaseSyllabusDefinition.CourseNameEditV4Input, ip?: string,
      userId?: number): Promise<ApiResponse<BaseSyllabusDefinition.CourseNameOutput> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.CourseNameOutput> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.CourseNameOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_V4_EDIT_COURSE_NAME,
          {},
          {},
          {
            // "ip": ip,
            // "user_id": userId
          },
          input
        );

      return res;
    }
  }


  export class SyllabusController {
    static async baseSyllabusConfigSetPost(input: BaseSyllabusDefinition.SetRemindConfigInput, ip: string,
      userId: number): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseSyllabusUrlConstant.BASE_SYLLABUS_CONFIG_SET,
        {},
        {},
        {
          "ip": ip,
          "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseSyllabusCourseAddPost(input: BaseSyllabusDefinition.CourseBatchAddInput, ip: string,
      userId: number): Promise<RowResponse<Array<BaseSyllabusDefinition.CourseInfoOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseSyllabusDefinition.CourseInfoOutput>> | null | undefined =
        await post<RowResponse<Array<BaseSyllabusDefinition.CourseInfoOutput>>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_COURSE_ADD,
          {},
          {},
          {
            "ip": ip,
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseSyllabusCourseAddfinishwebPost(input: BaseSyllabusDefinition.AddFinishedWebInput, ip: string,
      userId: number): Promise<ApiResponse<BaseSyllabusDefinition.LessonNoteOutput> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.LessonNoteOutput> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.LessonNoteOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_COURSE_ADD_FINISH_WEB,
          {},
          {},
          {
            "ip": ip,
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseSyllabusCourseDailyURemindUJobUElementsPost(input: BaseSyllabusDefinition.JobPullInput): Promise<Array<BaseSyllabusDefinition.JobPullOutput> | null | undefined> {
      let res: Array<BaseSyllabusDefinition.JobPullOutput> | null | undefined =
        await post<Array<BaseSyllabusDefinition.JobPullOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_COURSE_DAILY_REMIND_JOB_ELEMENTS_URL,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async baseSyllabusCourseDeletePost(input: BaseSyllabusDefinition.CourseDeleteInput,
      userId: number): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseSyllabusUrlConstant.BASE_SYLLABUS_COURSE_DELETE,
        {},
        {},
        {
          "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseSyllabusCourseEditPost(input: BaseSyllabusDefinition.CourseEditInput, ip: string,
      userId: number): Promise<ApiResponse<BaseSyllabusDefinition.CourseInfoOutput> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.CourseInfoOutput> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.CourseInfoOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_COURSE_EDIT,
          {},
          {},
          {
            "ip": ip,
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseSyllabusCourseFinishPost(input: BaseSyllabusDefinition.AddFinishedInput): Promise<ApiResponse<BaseSyllabusDefinition.LessonNoteOutput> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.LessonNoteOutput> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.LessonNoteOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_COURSE_FINISH,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async baseSyllabusCourseIsconflictPost(input: BaseSyllabusDefinition.CourseBatchAddInput, ip: string,
      userId: number): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseSyllabusUrlConstant.BASE_SYLLABUS_COURSE_ISCONFLICT,
        {},
        {},
        {
          "ip": ip,
          "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseSyllabusCourseJobUElementsPost(input: BaseSyllabusDefinition.JobPullInput): Promise<Array<BaseSyllabusDefinition.JobPullOutput> | null | undefined> {
      let res: Array<BaseSyllabusDefinition.JobPullOutput> | null | undefined =
        await post<Array<BaseSyllabusDefinition.JobPullOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_COURSE_JOB_ELEMENTS_URL,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async baseSyllabusEducationUpdatePost(input: BaseSyllabusDefinition.EducationUpdateInput, ip: string,
      userId: number): Promise<RowResponse<Array<BaseSyllabusDefinition.TermInfoOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseSyllabusDefinition.TermInfoOutput>> | null | undefined =
        await post<RowResponse<Array<BaseSyllabusDefinition.TermInfoOutput>>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_EDUCATION_UPDATE,
          {},
          {},
          {
            "ip": ip,
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseSyllabusGetappletdataPost(deviceType: string, input: BaseSyllabusDefinition.GetAppletDataInput,
      userId: number): Promise<ApiResponse<BaseSyllabusDefinition.GetAppletOutput> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.GetAppletOutput> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.GetAppletOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_GET_APPLET_DATA,
          {},
          {},
          {
            "device_type": deviceType,
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseSyllabusGetappletrangedataPost(input: BaseSyllabusDefinition.DateRangeRequest,
      userId: number): Promise<RowResponse<Array<BaseSyllabusDefinition.GetAppletItemOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseSyllabusDefinition.GetAppletItemOutput>> | null | undefined =
        await post<RowResponse<Array<BaseSyllabusDefinition.GetAppletItemOutput>>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_GET_APPLET_RANGE_DATA,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseSyllabusGetcourselistPost(userId: number): Promise<ApiResponse<BaseSyllabusDefinition.CourseListOutput> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.CourseListOutput> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.CourseListOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_GET_COURSE_LIST,
          {},
          {},
          {
            "user_id": userId
          },
        );

      return res;
    }

    static async baseSyllabusGetnextcoursePost(userId: number): Promise<ApiResponse<BaseSyllabusDefinition.NextCourseOutput> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.NextCourseOutput> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.NextCourseOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_GET_NEXT_COURSE,
          {},
          {},
          {
            "user_id": userId
          },
        );

      return res;
    }

    static async baseSyllabusGetremindelementsPost(input: BaseSyllabusDefinition.SyllabusTodoViewInput,
      userId: number): Promise<ApiResponse<BaseSyllabusDefinition.SyllabusTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.SyllabusTodoViewListOutput> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.SyllabusTodoViewListOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_GETREMINDELEMENTS,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseSyllabusLessonNoteseditPost(input: BaseSyllabusDefinition.LessonNoteEditInput, ip: string,
      userId: number): Promise<ApiResponse<BaseSyllabusDefinition.LessonNoteOutput> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.LessonNoteOutput> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.LessonNoteOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_LESSON_NOTESEDIT,
          {},
          {},
          {
            "ip": ip,
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseSyllabusLessonSetPost(input: BaseSyllabusDefinition.SetLessonConfigInput,
      userId?: number): Promise<ApiResponse<BaseSyllabusDefinition.TermInfoOutput> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.TermInfoOutput> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.TermInfoOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_LESSON_SET,
          {},
          {},
          {
            // "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseSyllabusProcessrediscolourGet(id?: number): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await get<ApiResponse<object>>(
        BaseSyllabusUrlConstant.BASE_SYLLABUS_PROCESS_REDIS_COLOUR,
        {},
        {
          "id": id
        },
        {},
      );

      return res;
    }

    static async baseSyllabusRepairPost(userId: number): Promise<RowResponse<Array<number>> | null | undefined> {
      let res: RowResponse<Array<number>> | null | undefined = await post<RowResponse<Array<number>>>(
        BaseSyllabusUrlConstant.BASE_SYLLABUS_REPAIR,
        {},
        {},
        {
          "user_id": userId
        },
      );

      return res;
    }

    static async baseSyllabusTermGetcurrentPost(): Promise<ApiResponse<BaseSyllabusDefinition.TermInfoOutput> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.TermInfoOutput> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.TermInfoOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_TERM_GETCURRENT,
          {},
          {},
          {
            // "user_id": userId
          },
        );

      return res;
    }

    static async baseSyllabusTermGetlistPost(userId: number): Promise<ApiResponse<BaseSyllabusDefinition.GradeTermInfoOutput> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.GradeTermInfoOutput> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.GradeTermInfoOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_TERM_GETLIST,
          {},
          {},
          {
            "user_id": userId
          },
        );

      return res;
    }

    static async baseSyllabusTermSwitchPost(input: BaseSyllabusDefinition.SwitchCurrentTermInput, ip?: string,
      userId?: number): Promise<ApiResponse<BaseSyllabusDefinition.TermInfoOutput> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.TermInfoOutput> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.TermInfoOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_TERM_SWITCH,
          {},
          {},
          {
            // "ip": ip,
            // "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseSyllabusTodoUViewUListPost(input: BaseSyllabusDefinition.SyllabusTodoViewInput,
      userId: number): Promise<ApiResponse<BaseSyllabusDefinition.SyllabusTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.SyllabusTodoViewListOutput> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.SyllabusTodoViewListOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_TODO_VIEW_LIST_URL,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseSyllabusUserGuidancePost(input: BaseSyllabusDefinition.UserGuidanceInput, ip: string,
      userId: number): Promise<ApiResponse<BaseSyllabusDefinition.TermInfoOutput> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.TermInfoOutput> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.TermInfoOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_USER_GUIDANCE,
          {},
          {},
          {
            "ip": ip,
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseSyllabusV1DaterangecountPost(input: BaseSyllabusDefinition.DateRangeRequest,
      userId: number): Promise<ApiResponse<BaseSyllabusDefinition.CourseCountOutput> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.CourseCountOutput> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.CourseCountOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_V1_DATE_RANGE_COUNT,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseSyllabusV1ExportPost(input: BaseSyllabusDefinition.SyllabusTransferConditionV2,
      userId: number): Promise<ApiResponse<BaseSyllabusDefinition.SyllabusTransferDataV2> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.SyllabusTransferDataV2> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.SyllabusTransferDataV2>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_V1_EXPORT,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseSyllabusV1GetapplethistoryPost(idsRequest: BaseSyllabusDefinition.IdsRequest,
      userId: number): Promise<RowResponse<Array<BaseSyllabusDefinition.AppletHistoryResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseSyllabusDefinition.AppletHistoryResponse>> | null | undefined =
        await post<RowResponse<Array<BaseSyllabusDefinition.AppletHistoryResponse>>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_V1_GET_APPLET_HISTORY,
          {},
          {},
          {
            "user_id": userId
          },
          idsRequest
        );

      return res;
    }

    static async baseSyllabusV1GettermbyidPost(input: BaseSyllabusDefinition.IdRequest,
      userId: number): Promise<ApiResponse<BaseSyllabusDefinition.TermNewOutput> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.TermNewOutput> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.TermNewOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_V1_GET_TERM_BY_ID,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseSyllabusV1HistorydatacountPost(userId: number): Promise<ApiResponse<Map<string, number>> | null | undefined> {
      let res: ApiResponse<Map<string, number>> | null | undefined = await post<ApiResponse<Map<string, number>>>(
        BaseSyllabusUrlConstant.BASE_SYLLABUS_V1_HISTORY_DATA_COUNT,
        {},
        {},
        {
          "user_id": userId
        },
      );

      return res;
    }

    static async baseSyllabusV1ImportPost(input: BaseSyllabusDefinition.SyllabusTransferDataV2,
      userId: number): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseSyllabusUrlConstant.BASE_SYLLABUS_V1_IMPORT,
        {},
        {},
        {
          "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseSyllabusV1SearchcoursePost(input: BaseSyllabusDefinition.KeywordRequest,
      userId: number): Promise<RowResponse<Array<BaseSyllabusDefinition.CourseSearchOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseSyllabusDefinition.CourseSearchOutput>> | null | undefined =
        await post<RowResponse<Array<BaseSyllabusDefinition.CourseSearchOutput>>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_V1_SEARCH_COURSE,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseSyllabusWeekSetPost(input: BaseSyllabusDefinition.SetCurrentWeekInput,
      userId: number): Promise<ApiResponse<BaseSyllabusDefinition.TermInfoOutput> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.TermInfoOutput> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.TermInfoOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_WEEK_SET,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }
  }


  export class CheckAliveController {
    static async checkaliveGet(): Promise<number | null | undefined> {
      let res: number | null | undefined = await get<number>(
        BaseSyllabusUrlConstant.CHECKALIVE,
        {},
        {},
        {},
      );

      return res;
    }
  }


  export class SyncsyllabusController {
    static async baseSyllabusCourseMRemindPost(dto: BaseSyllabusDefinition.SyncDataRequest,
      userId: number): Promise<RowResponse<Array<BaseSyllabusDefinition.CourseRemindOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseSyllabusDefinition.CourseRemindOutput>> | null | undefined =
        await post<RowResponse<Array<BaseSyllabusDefinition.CourseRemindOutput>>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_COURSE_REMIND_URL,
          {},
          {},
          {
            "user_id": userId
          },
          dto
        );

      return res;
    }

    static async baseSyllabusSyncMCoursePost(dto: BaseSyllabusDefinition.SyncDataRequest, ip: string,
      userId: number): Promise<RowResponse<Array<BaseSyllabusDefinition.CourseInfoOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseSyllabusDefinition.CourseInfoOutput>> | null | undefined =
        await post<RowResponse<Array<BaseSyllabusDefinition.CourseInfoOutput>>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_SYNC_COURSE_URL,
          {},
          {},
          {
            "ip": ip,
            "user_id": userId
          },
          dto
        );

      return res;
    }

    static async baseSyllabusSyncMLessonMNotePost(dto: BaseSyllabusDefinition.SyncDataRequest,
      userId: number): Promise<RowResponse<Array<BaseSyllabusDefinition.LessonNoteOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseSyllabusDefinition.LessonNoteOutput>> | null | undefined =
        await post<RowResponse<Array<BaseSyllabusDefinition.LessonNoteOutput>>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_SYNC_LESSON_NOTE_URL,
          {},
          {},
          {
            "user_id": userId
          },
          dto
        );

      return res;
    }

    static async baseSyllabusSyncMTermPost(dto: BaseSyllabusDefinition.SyncDataRequest,
      userId: number): Promise<RowResponse<Array<BaseSyllabusDefinition.TermInfoOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseSyllabusDefinition.TermInfoOutput>> | null | undefined =
        await post<RowResponse<Array<BaseSyllabusDefinition.TermInfoOutput>>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_SYNC_TERM_URL,
          {},
          {},
          {
            "user_id": userId
          },
          dto
        );

      return res;
    }

    static async baseSyllabusV2SyncMTermPost(userId: number): Promise<RowResponse<Array<BaseSyllabusDefinition.TermNewOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseSyllabusDefinition.TermNewOutput>> | null | undefined =
        await post<RowResponse<Array<BaseSyllabusDefinition.TermNewOutput>>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_V2_SYNC_TERM_URL,
          {},
          {},
          {
            "user_id": userId
          },
        );

      return res;
    }

    static async baseSyllabusV2SynccoursenamePost(ip: string,
      userId: number): Promise<RowResponse<Array<BaseSyllabusDefinition.CourseNameOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseSyllabusDefinition.CourseNameOutput>> | null | undefined =
        await post<RowResponse<Array<BaseSyllabusDefinition.CourseNameOutput>>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_V2_SYNC_COURSE_NAME,
          {},
          {},
          {
            "ip": ip,
            "user_id": userId
          },
        );

      return res;
    }

    static async baseSyllabusV2SynconlinecoursePost(dto: BaseSyllabusDefinition.SyncDataRequest, ip: string,
      userId: number): Promise<RowResponse<Array<BaseSyllabusDefinition.CourseInfoOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseSyllabusDefinition.CourseInfoOutput>> | null | undefined =
        await post<RowResponse<Array<BaseSyllabusDefinition.CourseInfoOutput>>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_V2_SYNC_ONLINE_COURSE,
          {},
          {},
          {
            "ip": ip,
            "user_id": userId
          },
          dto
        );

      return res;
    }
  }


  export class LocalServerController {
    static async baseSyllabusGetCurrentCourseListPost(input: BaseSyllabusDefinition.CurrentCourseInput): Promise<ApiResponse<BaseSyllabusDefinition.CurrentCourseListOutput> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.CurrentCourseListOutput> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.CurrentCourseListOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_GET_CURRENT_COURSE_LIST,
          {},
          {},
          {},
          input,
        );
      return res;
    }


    static async baseSyllabusV2SwitchcurrentPost(input: BaseSyllabusDefinition.IdRequest): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseSyllabusUrlConstant.BASE_SYLLABUS_V2_SWITCH_CURRENT,
        {},
        {},
        {},
        input
      );
      return res;
    }

    static async baseSyllabusQueryCourseDetailByCourseName(input: BaseSyllabusDefinition.QueryCoursesDetailInput): Promise<RowResponse<Array<BaseSyllabusDefinition.CourseDetailOutPut>> | null | undefined> {
      let res: RowResponse<Array<BaseSyllabusDefinition.CourseDetailOutPut>> | null | undefined =
        await post<RowResponse<Array<BaseSyllabusDefinition.CourseDetailOutPut>>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_V2_QUERY_COURSE_DETAIL,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async baseSyllabusQueryCurrentPreviewCourseList(input: BaseSyllabusDefinition.QueryCoursesListInput): Promise<RowResponse<Array<BaseSyllabusDefinition.QueryTermPreviewCourse>> | null | undefined> {
      let res: RowResponse<Array<BaseSyllabusDefinition.QueryTermPreviewCourse>> | null | undefined =
        await post<RowResponse<Array<BaseSyllabusDefinition.QueryTermPreviewCourse>>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_LOCAL_QUERY_CURRENT_COURSE_LIST,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async baseSyllabusQueryAddFasterConflict(input: BaseSyllabusDefinition.FastAddConflictCheckInput): Promise<ApiResponse<BaseSyllabusDefinition.FastAddConflictCheckResult> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.FastAddConflictCheckResult> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.FastAddConflictCheckResult>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_LOCAL_FAST_ADD_CHECK_RESULT,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async baseSyllabusQueryCourseDetailByID(input: BaseSyllabusDefinition.QueryCoursesDetailByIDInput): Promise<ApiResponse<BaseSyllabusDefinition.QueryIDCourseDetailOutPut> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.QueryIDCourseDetailOutPut> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.QueryIDCourseDetailOutPut>>(
          BaseSyllabusUrlConstant.LOCAL_SERVER_QUERY_COURSE_BY_ID,
          {},
          {},
          {},
          input
        );

      return res;
    }
  }


  export class OnlineCourseController {
    static async baseSyllabusOnlinecourseGetonlinecoursePost(input: BaseSyllabusDefinition.GetOnlineCourse,
      userId: number): Promise<RowResponse<Array<BaseSyllabusDefinition.OnlineCourseOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseSyllabusDefinition.OnlineCourseOutput>> | null | undefined =
        await post<RowResponse<Array<BaseSyllabusDefinition.OnlineCourseOutput>>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_ONLINE_COURSE_GET_ONLINE_COURSE,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseSyllabusOnlinecourseGetonlinecourseselectiorPost(userId: number): Promise<ApiResponse<BaseSyllabusDefinition.OnlineCourseSelectiorOutput> | null | undefined> {
      let res: ApiResponse<BaseSyllabusDefinition.OnlineCourseSelectiorOutput> | null | undefined =
        await post<ApiResponse<BaseSyllabusDefinition.OnlineCourseSelectiorOutput>>(
          BaseSyllabusUrlConstant.BASE_SYLLABUS_ONLINE_COURSE_GET_ONLINE_COURSE_SELECTIOR,
          {},
          {},
          {
            "user_id": userId
          },
        );

      return res;
    }
  }
}
