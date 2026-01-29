import preferences from '@ohos.data.preferences';
import { AppUtil } from '@pura/harmony-utils';


/**
 * 类功能描述：首选项工具类，相比PreferencesUtil，PrefsManager支持多文件、多实例，提供同步/异步读写、批量操作和数据变更监听功能。
 * @author kedongjun
 * @since 2025-9-3
 */

export class PrefsManager {
  private static instances: Map<string, PrefsInstance> = new Map();

  // 禁止实例化
  private constructor() {}

  /**
   * 获取实例（同步）
   * @param preferenceName 文件名，不传默认 DEFAULT_PREFERENCE_NAME
   */
  static getInstanceSync(preferenceName: string = DEFAULT_PREFERENCE_NAME): PrefsInstance {
    if (!PrefsManager.instances.has(preferenceName)) {
      PrefsManager.instances.set(preferenceName, new PrefsInstance(preferenceName));
    }
    return PrefsManager.instances.get(preferenceName)!;
  }

  /**
   * 获取实例（异步，可扩展，兼容未来异步获取）
   */
  static async getInstance(preferenceName: string = DEFAULT_PREFERENCE_NAME): Promise<PrefsInstance> {
    // 目前仍然同步创建，可异步优化
    return PrefsManager.getInstanceSync(preferenceName);
  }
}

const DEFAULT_PREFERENCE_NAME = 'default_pref';

export class PrefsInstance {
  private pref: preferences.Preferences;

  constructor(preferenceName: string) {
    this.pref = preferences.getPreferencesSync(AppUtil.getContext(), { name: preferenceName });
  }

  // ---------------- 同步操作 ----------------
  getSync<T extends preferences.ValueType>(key: string, defValue: T): T {
    return this.pref.getSync(key, defValue) as T;
  }

  putSync(key: string, value: preferences.ValueType): void {
    this.pref.putSync(key, value);
    this.pref.flush();
  }

  deleteSync(key: string): void {
    this.pref.deleteSync(key);
    this.pref.flush();
  }

  clearSync(): void {
    this.pref.clearSync();
    this.pref.flush();
  }

  // ---------------- 异步操作 ----------------
  async get<T extends preferences.ValueType>(key: string, defValue: T): Promise<T> {
    return (await this.pref.get(key, defValue)) as T;
  }

  async put(key: string, value: preferences.ValueType): Promise<void> {
    await this.pref.put(key, value);
    await this.pref.flush();
  }

  async delete(key: string): Promise<void> {
    await this.pref.delete(key);
    await this.pref.flush();
  }

  async clear(): Promise<void> {
    await this.pref.clear();
    await this.pref.flush();
  }

  // ---------------- 监听 ----------------
  onChange(callback: (key: string) => void): void {
    this.pref.on('change', callback);
  }

  offChange(callback?: (key: string) => void): void {
    if (callback) {
      this.pref.off('change', callback);
    } else {
      this.pref.off('change');
    }
  }
}

