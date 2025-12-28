#!/usr/bin/env bash
set -e

# Echo Navigator — Deployment Script (Foundry)

if [ -z "$PRIVATE_KEY" ]; then
  echo "❌ PRIVATE_KEY not set"
  exit 1
fi

if [ -z "$NETWORK" ]; then
  echo "❌ NETWORK not set (base-sepolia | base-mainnet)"
  exit 1
fi

case "$NETWORK" in
  base-sepolia)
    RPC_URL="https://sepolia.base.org"
    CHAIN_ID=84532
    ;;
  base-mainnet)
    RPC_URL="https://mainnet.base.org"
    CHAIN_ID=8453
    ;;
  *)
    echo "❌ Unknown network: $NETWORK"
    exit 1
    ;;
esac

CONTRACT="src/BlockCounter.sol:BlockCounter"

echo "🚀 Deploying to $NETWORK"
forge create \
  --rpc-url "$RPC_URL" \
  --private-key "$PRIVATE_KEY" \
  --chain-id "$CHAIN_ID" \
  "$CONTRACT"
