# capacitor-pass-to-wallet

Allow to add .pkpass file to Apple Wallet

## Install

```bash
npm install capacitor-pass-to-wallet
npx cap sync
```

## API

<docgen-index>

* [`addToWallet(...)`](#addtowallet)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->


### addToWallet(...)

```typescript
  import { CapacitorPassToWallet } from 'capacitor-pass-to-wallet';
  
  
  async addToWallet(base64: string){
    try {
        await CapacitorPassToWallet.addToWallet({base64});
    } catch (error) {
        console.log(error);
    }
  }
  

```

| Param         | Type                             |
| ------------- | -------------------------------- |
| **`options`** | <code>{ base64: string; }</code> |

**Returns:** <code>Promise&lt;{ base64: string; }&gt;</code>

--------------------

</docgen-api>
