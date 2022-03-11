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
* [`addMultipleToWallet(...)`](#addmultipletowallet)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### addToWallet(...)

```typescript
addToWallet(options: { base64: string; }) => Promise<{ message: string; }>
```

| Param         | Type                             |
| ------------- | -------------------------------- |
| **`options`** | <code>{ base64: string; }</code> |

**Returns:** <code>Promise&lt;{ message: string; }&gt;</code>

--------------------


### addMultipleToWallet(...)

```typescript
addMultipleToWallet(options: { base64: string[]; }) => Promise<{ message: string; }>
```

| Param         | Type                               |
| ------------- | ---------------------------------- |
| **`options`** | <code>{ base64: string[]; }</code> |

**Returns:** <code>Promise&lt;{ message: string; }&gt;</code>

--------------------

</docgen-api>
