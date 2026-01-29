import { UserDeviceInfo } from "./BaseDefinition";

export namespace CollectionanalysisBehaviorDefinition {
  export interface EventDataParamsOutput{
    first?:boolean,
    pageName?:string,
    souceName?:string,
    fromPath?:string,
    toPath?:string,
  }
  export interface EventDataItemOutput{
    currentPath?:string,
    eventName?:string,
    eventType?:string,
    operTime?:string,
    params:EventDataParamsOutput,
  }

  export interface ReceiverInput {
    eventDatas:Array<EventDataItemOutput>,
    device?: UserDeviceInfo;
    needToken?:string,
  }
}