# capacitor-pass-to-wallet

Allow to add .pkpass file to Apple Wallet

## Install

```bash
npm install capacitor-pass-to-wallet
npx cap sync
```

## API

<docgen-index>

* [`echo(...)`](#echo)
* [`addToWallet(...)`](#addtowallet)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### echo(...)

```typescript
echo(options: { value: string; }) => Promise<{ value: string; }>
```

| Param         | Type                            |
| ------------- | ------------------------------- |
| **`options`** | <code>{ value: string; }</code> |

**Returns:** <code>Promise&lt;{ value: string; }&gt;</code>

--------------------


### addToWallet(...)

```typescript
addToWallet(options: { base64: string; }) => Promise<{ base64: string; }>
```

| Param         | Type                             |
| ------------- | -------------------------------- |
| **`options`** | <code>{ base64: string; }</code> |

**Returns:** <code>Promise&lt;{ base64: string; }&gt;</code>

--------------------

</docgen-api>
