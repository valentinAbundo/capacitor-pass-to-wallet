export interface CapacitorPassToWalletPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
  addToWallet(options: { base64: string }): Promise<{ base64: string }>;
}

