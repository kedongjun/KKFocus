import { get, post, put, remove, options, head, patch, ApiResponse } from 'utils';
import { CollectionanalysisBehaviorUrlConstant } from '../constant/CollectionanalysisBehaviorUrlConstant';
import { CollectionanalysisBehaviorDefinition } from '../definition/CollectionanalysisBehaviorDefinition';


export namespace CollectionanalysisBehaviorOperation {
  export class BehaviorController {
    static async CollectionanalysisBehaviorReceiverPost(input: CollectionanalysisBehaviorDefinition.ReceiverInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        CollectionanalysisBehaviorUrlConstant.COLLECTIONANALYSIS_BEHAVIOR_RECEIVER,
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
