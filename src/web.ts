import { WebPlugin } from '@capacitor/core';

import type { CapacitorPassToWalletPlugin } from './definitions';

export class CapacitorPassToWalletWeb
  extends WebPlugin
  implements CapacitorPassToWalletPlugin {
  addToWallet(options: { base64: string }): Promise<{ base64: string; }> {
    console.log(options.base64, 'Method not implemente on web.');
    throw new Error('Method not implemented on web.');
  }
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
