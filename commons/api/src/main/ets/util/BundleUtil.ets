import { bundleManager } from "@kit.AbilityKit";

export class BundleUtil {
  public static getBundleInfo() {
    return bundleManager.getBundleInfoForSelfSync(bundleManager.BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION);
  }
}