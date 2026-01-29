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
} from './BaseDefinition'

export namespace BasePayDefinition {
  export interface AddIapOrderInput {
    amount: number;
    payType: string;
    product: string;
    productName?: string;
    productType: string;
  }

  export interface AddIapOrderInputV2 {
    amount: number;
    outOrderId?: number;
    payType: string;
    product: string;
    productName?: string;
    productType: string;
  }

  export interface AddOrderAndPayInput {
    addressId?: number;
    amount: number;
    img?: string;
    outOrderId?: number;
    payType: string;
    product: string;
    productName?: string;
    productType: string;
    productValue?: number;
    returnUrl?: string;
    tradeType: string;
  }

  export interface AddOrderInput {
    addressId?: number;
    amount: number;
    img?: string;
    outOrderId?: number;
    product: string;
    productName?: string;
    productType: string;
    productValue?: number;
  }

  export interface AddPayInput {
    amount: number;
    orderId: number;
    payType: string;
    returnUrl?: string;
    tradeType: string;
  }

  export interface ApplePayInput {
    orderId?: number;
    originalTransactionId?: string;
    productId?: string;
    receiptData?: string;
    transactionId?: string;
  }

  export interface IdData {
    id?: number;
  }

  export interface IdRequest {
    id: number;
  }

  export interface IdResponse {
    code?: number;
    data?: IdData;
    msg?: string;
  }

  export interface OrderStatusOutput {
    orderStatus?: string;
  }

  export interface PaymentOrderOutput {
    clientParam?: object;
    orderId?: number;
  }

  export interface RewardProductInfo {
    amount?: number;
    productId?: string;
    productName?: string;
  }

  export interface TransferOutput {
    orderNo?: string;
    result?: string;
    resultCode?: string;
  }

  export interface TransferQueryInput {
    orderNo?: string;
  }

  export interface UserProductOrderLogOutput {
    amount?: number;
    id?: number;
    name?: string;
    payTime?: Date;
    productName?: string;
    productType?: string;
  }

  export interface UserProductPageInput {
    currentPage: number;
    keyword?: string;
    pageSize: number;
    productType?: string;
  }

  export interface WxTransferDto {
    id?: number;
    openid?: string;
    orderNo?: string;
    remark?: string;
    transferAmount?: number;
    userName?: string;
  }
}
