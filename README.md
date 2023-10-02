# capacitor-pass-to-wallet

Allow to add .pkpass file to Apple Wallet

Buy me a coffee if you think this plugin was very useful for your project
https://paypal.me/nitnelavah?country.x=MX&locale.x=es_XC

## Example
https://youtu.be/FUt2J385yCQ
https://github.com/NitnelavAH/IonicAdd2Wallet

## Compatibility

| Capacitor Version  | Plugin Version |
| ------------- | ------------- |
| 4.x  | 1.x  |
| 5.x  | 2.x |

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
