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
import { ServiceTransferFutureDefinition } from './../definition/ServiceTransferFutureDefinition';
import { ServiceTransferFutureUrlConstant } from './../constant/ServiceTransferFutureUrlConstant';

export namespace ServiceTransferFutureOperation {
  export class TransferFutureControllerV1 {
    static async serviceTransferV1GetsgxuserinfoPost(userId: number):Promise<ApiResponse<ServiceTransferFutureDefinition.UserSimpleByMobileOutput> | null | undefined> {
      let res: ApiResponse<ServiceTransferFutureDefinition.UserSimpleByMobileOutput> | null | undefined = await post<ApiResponse<ServiceTransferFutureDefinition.UserSimpleByMobileOutput>>(
        ServiceTransferFutureUrlConstant.SERVICE_TRANSFER_V1_GET_SGX_USER_INFO,
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

    static async serviceTransferV1GettransferlistPost(userId: number):Promise<RowResponse<Array<ServiceTransferFutureDefinition.GetTransferListV1UsingPOSTRsp>> | null | undefined> {
      let res: RowResponse<Array<ServiceTransferFutureDefinition.GetTransferListV1UsingPOSTRsp>> | null | undefined = await post<RowResponse<Array<ServiceTransferFutureDefinition.GetTransferListV1UsingPOSTRsp>>>(
        ServiceTransferFutureUrlConstant.SERVICE_TRANSFER_V1_GET_TRANSFER_LIST,
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

    static async serviceTransferV1StarttransferPost(input: ServiceTransferFutureDefinition.TransferInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        ServiceTransferFutureUrlConstant.SERVICE_TRANSFER_V1_START_TRANSFER,
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
        ServiceTransferFutureUrlConstant.CHECKALIVE,
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


  export class TransferFutureControllerV3 {
    static async serviceTransferV3UsertransferlogPost(ip: string, userId: number):Promise<ApiResponse<ServiceTransferFutureDefinition.UserTransferLogOutput> | null | undefined> {
      let res: ApiResponse<ServiceTransferFutureDefinition.UserTransferLogOutput> | null | undefined = await post<ApiResponse<ServiceTransferFutureDefinition.UserTransferLogOutput>>(
        ServiceTransferFutureUrlConstant.SERVICE_TRANSFER_V3_USER_TRANSFER_LOG,
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


  export class TransferFutureControllerV2 {
    static async serviceTransferV2GetsgxuserinfoPost(userId: number):Promise<ApiResponse<ServiceTransferFutureDefinition.UserSimpleByMobileOutput> | null | undefined> {
      let res: ApiResponse<ServiceTransferFutureDefinition.UserSimpleByMobileOutput> | null | undefined = await post<ApiResponse<ServiceTransferFutureDefinition.UserSimpleByMobileOutput>>(
        ServiceTransferFutureUrlConstant.SERVICE_TRANSFER_V2_GET_SGX_USER_INFO,
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

    static async serviceTransferV2GettransferlistPost(userId: number):Promise<RowResponse<Array<ServiceTransferFutureDefinition.GetTransferListV1UsingPOSTRsp>> | null | undefined> {
      let res: RowResponse<Array<ServiceTransferFutureDefinition.GetTransferListV1UsingPOSTRsp>> | null | undefined = await post<RowResponse<Array<ServiceTransferFutureDefinition.GetTransferListV1UsingPOSTRsp>>>(
        ServiceTransferFutureUrlConstant.SERVICE_TRANSFER_V2_GET_TRANSFER_LIST,
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

    static async serviceTransferV2StarttransferPost(input: ServiceTransferFutureDefinition.TransferInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        ServiceTransferFutureUrlConstant.SERVICE_TRANSFER_V2_START_TRANSFER,
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
}
