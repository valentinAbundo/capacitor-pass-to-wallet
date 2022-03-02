export interface CapacitorPassToWalletPlugin {
  addToWallet(options: { base64: string }): Promise<{ base64: string }>;
}

