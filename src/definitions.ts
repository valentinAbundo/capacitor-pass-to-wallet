export interface CapacitorPassToWalletPlugin {
  addToWallet(options: { base64: string }): Promise<{ message: string }>;
  addMultipleToWallet(options: { base64: string[] }): Promise<{ message: string }>;
}

