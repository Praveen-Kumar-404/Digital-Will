# Digital Will Smart Contract

## Overview
This is a simple Solidity-based smart contract for a **Digital Will**, allowing asset transfers to a beneficiary on a future date. The contract ensures that funds are securely stored and only released to the beneficiary after a predefined time.

## Features
- **Secure Asset Storage**: The contract holds funds until the release time.
- **Automated Transfer**: Funds are automatically transferred to the beneficiary once the time condition is met.
- **No Input on Deployment**: The contract works without requiring inputs during deployment.
- **Immutable Execution**: Once deployed, the contract ensures the will's execution as coded.

## Deployed Contract Details
- **Blockchain**: Edu Chain
- **Contract Address**: `0x9750E8A9670F6fEDD44F67930Dff74f7C7748fA0`

## How It Works
1. The owner deploys the contract with a predefined **release time** and **beneficiary address**.
2. The owner deposits funds into the contract.
3. After the release time, the beneficiary can claim the funds.

## Usage Instructions
1. **Deposit Funds**: The owner sends Ether to the contract.
2. **Wait for Release Time**: Funds remain locked until the specified timestamp.
3. **Claim Funds**: The beneficiary calls the `withdraw()` function after the release time to receive the funds.

## Smart Contract Code
Find the contract code in the repository under `DigitalWill.sol`.

## License
This project is open-source and available under the MIT License.

