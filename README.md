# Echo Navigator (Built for Base)

Echo Navigator is a small but well-structured read-only tool designed for working with the Base ecosystem. It helps developers safely inspect onchain data, validate network configuration, and confirm testnet deployments without submitting transactions or modifying blockchain state.

---

## Intended Use

This repository is built for verification and exploration tasks. It is especially useful when you need to:
- Ensure your wallet is connected to the correct Base network  
- Confirm the expected chainId is active (84532)  
- Inspect balances, transaction counts, and contract bytecode  
- Review recent block data and gas usage  
- Validate deployments using Basescan  

All interactions are non-invasive and strictly read-only.

---

## Project Layout

- **app/echo-navigator.ts**  
  Primary entry script that connects to Coinbase Wallet and queries Base Sepolia RPC endpoints.

- **contracts/**  
  Solidity contracts deployed on Base Sepolia for testnet validation:
  - `errors.sol` — defines custom errors or uses require / revert
  - `Minimaltoken.sol` — minimal fungible token contract (simplified ERC-20–like)
  - `ERC20token` — manages balances, transfers, and allowances

- **config/base.networks.json**  
  Static configuration defining RPC URLs, explorers, and chainIds for Base networks.

- **docs/architecture.md**  
  Notes explaining architectural decisions and the read-only design approach.

- **docs/testnet-validation.md**  
  Records of validation steps and outcomes on Base Sepolia.

- **scripts/sample-addresses.json**  
  Example addresses used for repeatable inspection and testing.

- **scripts/deploy-contracts.sh**  
  Utility script for deploying contracts to Base networks.

- **logs/run-output.log**  
  Example output collected from local script execution.

- **package.json**  
  Dependency manifest referencing Base and Coinbase repositories.

- **README.md**  
  This documentation file.

---

## Network Scope

Base Sepolia  
chainId (decimal): 84532  
Explorer: https://sepolia.basescan.org  

---

## How It Operates

Echo Navigator connects to Coinbase Wallet using the Coinbase Wallet SDK and communicates with Base Sepolia via viem. It retrieves public blockchain data such as balances, transaction counts, bytecode presence, and block metadata, and provides direct explorer links for independent verification.

No transactions are signed or broadcast at any stage.

---

## Tooling Overview

This project relies on a small set of trusted tools:
- Coinbase Wallet SDK for wallet connectivity  
- OnchainKit references for Base-aligned primitives  
- viem for type-safe and efficient RPC communication  
- Selected Base and Coinbase GitHub repositories  

---

## License

MIT License  
Copyright (c) 2025 YOUR_NAME

---

## Author contacts

GitHub: https://github.com/fuzzy00-rutile

Email: fuzzy00_rutile@icloud.com 

Twitter: https://x.com/bajinnaw81 

---

## Testnet Deployment (Base Sepolia)

The following contracts were deployed to Base Sepolia to validate tooling behavior and network compatibility.

Network: Base Sepolia  
chainId (decimal): 84532  
Explorer: https://sepolia.basescan.org  

Contract errors.sol address:  
0xf94D78154d619b7c50073b10e524A25A4A9251fC 

Deployment and verification:
- https://sepolia.basescan.org/address/0xf94D78154d619b7c50073b10e524A25A4A9251fC 
- https://sepolia.basescan.org/0xf94D78154d619b7c50073b10e524A25A4A9251fC/0#code  

Contract Minimaltoken.sol address:  
0xeD2D31D2BD5Ce6b0c34BbD77386EF4d4052B1242 

Deployment and verification:
- https://sepolia.basescan.org/address/0xeD2D31D2BD5Ce6b0c34BbD77386EF4d4052B1242 
- https://sepolia.basescan.org/0xeD2D31D2BD5Ce6b0c34BbD77386EF4d4052B1242/0#code  

Contract ERC20token.sol address:  
0xAEdCd9fEa557aD04696528F584608Cc524Ec8357

Deployment and verification:
- https://sepolia.basescan.org/address/0xAEdCd9fEa557aD04696528F584608Cc524Ec8357
- https://sepolia.basescan.org/0xAEdCd9fEa557aD04696528F584608Cc524Ec8357/0#code  

These testnet deployments provide a controlled environment for validating Base tooling, account abstraction flows, and read-only onchain interactions prior to Base Mainnet usage.
