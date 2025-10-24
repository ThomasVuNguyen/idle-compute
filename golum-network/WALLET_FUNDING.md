# Wallet Funding Guide

## Wallet Information
- **Address**: `0xf2f02839d70e54f546ce1a91ef55259d6d215abb`
- **Current Balance**: 0 GLM
- **Network**: Mainnet (Ethereum)

## Required Funding

### 1. GLM Tokens (Mainnet)
- **Purpose**: Earnings from providing compute resources
- **Recommended**: Start with 10-50 GLM for testing
- **Source**: Purchase from exchanges like Binance, Coinbase, or Uniswap

### 2. Gas Tokens (Polygon Network)
- **Purpose**: Pay for transaction fees on Polygon
- **Token**: MATIC (Polygon's native token)
- **Recommended**: 1-5 MATIC for gas fees
- **Source**: Bridge from Ethereum or purchase directly

## Funding Steps

### Step 1: Get GLM Tokens
1. **Purchase GLM** from a cryptocurrency exchange
2. **Transfer to your wallet** address: `0xf2f02839d70e54f546ce1a91ef55259d6d215abb`
3. **Verify on Etherscan**: https://etherscan.io/address/0xf2f02839d70e54f546ce1a91ef55259d6d215abb

### Step 2: Get MATIC for Gas
1. **Bridge ETH to Polygon** using Polygon Bridge
2. **Or purchase MATIC directly** on Polygon
3. **Ensure wallet has MATIC** for transaction fees

### Step 3: Verify Funding
```bash
# Check wallet balance
golemsp status

# Should show GLM balance > 0
```

## Alternative: Testnet Mode
If you want to test without real funds:
```bash
# Switch to testnet (if available)
# This allows testing without real GLM
```

## Security Notes
- **Never share your private keys**
- **Use hardware wallet if possible**
- **Keep backups secure and offline**
- **Start with small amounts for testing**

## Monitoring Earnings
- Check `golemsp status` regularly
- Monitor transaction history on Etherscan
- Set up alerts for incoming payments
