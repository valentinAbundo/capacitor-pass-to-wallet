import { registerPlugin } from '@capacitor/core';

import type { CapacitorPassToWalletPlugin } from './definitions';

const CapacitorPassToWallet = registerPlugin<CapacitorPassToWalletPlugin>(
  'CapacitorPassToWallet',
  {
    web: () => import('./web').then(m => new m.CapacitorPassToWalletWeb()),
  },
);

export * from './definitions';
export { CapacitorPassToWallet };
