# Hardhat Token with Remix IDE

## Introduction

This repository contains a basic ERC20 token smart contract developed using Solidity. The purpose of this project is to provide a simple example for learning about Ethereum development, particularly in creating ERC20 tokens with functionalities for minting, burning, and transferring tokens. The smart contract is designed to be deployed on a local Hardhat network for local testing and can be interacted with using Remix IDE.

## Project Features

- **Minting**: The contract owner can mint new tokens and add them to the specified address. This function allows the creation of new tokens.

- **Burning**: Token holders can burn their own tokens, reducing the total supply. This function allows users to destroy their tokens permanently.

- **Transfers**: Token holders can transfer tokens from their address to other addresses. This function enables token transactions between different accounts.

## Smart Contract Details

- **Token Name**: SuperCoin
- **Token Symbol**: SUP
- **Total Supply**: 0 (initially)

## Deployment and Interacting with the Contract

1. **Development Environment Setup**:
   - Ensure you have Node.js and npm installed on your machine.
   - Clone this repository to your local system using the following command:
     ```
     git clone https://github.com/codebreaker-pk/Hardhat-Token-Remix.git
     ```
   - Navigate into the project directory:
     ```
     cd Hardhat-Token-Remix
     ```

2. **Install Dependencies**:
   - Install the required dependencies using npm:
     ```
     npm install
     ```

3. **Compile Smart Contract**:
   - Use the following command to compile the smart contract:
     ```
     npx hardhat compile
     ```

4. **Start a Local Hardhat Node**:
   - Run a local Hardhat node with the following command:
     ```
     npx hardhat node
     ```
   - This will start a local Ethereum node on your machine.

5. **Deployment**:
   - Deploy the smart contract on the local Hardhat network with the following command:
     ```
     npx hardhat run scripts/deploy.js --network hardhat
     ```

6. **Interacting with the Contract using Remix IDE**:
   - Once deployed, use Remix IDE or any compatible Ethereum wallet (like MetaMask) to interact with your smart contract.
   - Connect Remix IDE to your local Hardhat network. Open Remix IDE at [Remix IDE](https://remix.ethereum.org/).
   - Use the deployed contract's address to interact with the mint, burn, and transfer functions.

## Author

**Prashant Kumar**

- GitHub: [github.com/codebreaker-pk](https://github.com/codebreaker-pk)
- Email: official.pk.900@gmail.com

## License

This project is licensed under the MIT License. See [LICENSE](LICENSE) for details.
