# Echo Navigator — Architecture Notes

This document explains the architectural decisions behind Echo Navigator
and its alignment with Base’s read-only design principles.

---

## Overview

Echo Navigator is a **Base-aligned, read-only inspection tool**.
It is designed to safely query blockchain state without performing
any transactions or state mutations.

Supported networks:
- Base Mainnet
- Base Sepolia

All network metadata is loaded from configuration files.

---

## Read-only Design

Echo Navigator intentionally performs **no write operations**.

Allowed operations:
- ETH balance lookups
- Contract bytecode checks
- Block and chain metadata reads
- Token metadata reads (symbol / decimals)

Disallowed operations:
- Sending transactions
- Signing messages
- Managing private keys
- Modifying onchain state

This ensures predictable behavior and low operational risk.

---

## Base Alignment

- Uses official Base RPC endpoints
- Explorer links always resolve to BaseScan
- Chain IDs are configuration-driven (no hardcoding)
- Testnet-first validation on Base Sepolia

---

## Architectural Rationale

- **Centralized config** → easier audits and updates  
- **Minimal dependencies** → smaller attack surface  
- **Read-only scope** → deterministic validation  

These choices favor reliability and clarity over feature breadth.

---

_Last updated: initial scaffold_
