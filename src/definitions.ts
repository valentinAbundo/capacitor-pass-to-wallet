export interface CapacitorPassToWalletPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
