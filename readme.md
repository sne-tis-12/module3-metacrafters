# MyToken Smart Contract

This repository contains a simple Solidity smart contract named `MyToken`. It is an ERC20-compatible token contract that allows token creation, token transfers, and token burning.


## Contract Details

- `tokenName`: A public string variable that represents the name of the token.
- `tokenAbbvr`: A public string variable that represents the abbreviation or symbol of the token.
- `totalTokens`: A public unsigned integer variable that stores the total number of tokens created.
- `balances`: A mapping that associates addresses with their token balances.
- `owner`: An address variable that stores the owner's address.

### Functions

- `constructor()`: The constructor function that initializes the contract and sets the contract deployer as the owner.
- `getBalance()`: A view function that returns the token balance of the caller.
- `mint(address receiver, uint amount)`: A function that allows the owner to create new tokens and assign them to the specified receiver.
- `transfer(address receiver, uint amount)`: A function that allows users to transfer tokens from their own address to the specified receiver.
- `burn(uint amount)`: A function that allows users to burn a specified amount of their own tokens, reducing the total supply.

## Usage

1. Deploy the `MyToken` contract on an Ethereum-compatible blockchain network.
2. The owner of the contract can mint new tokens by calling the `mint` function and specifying the receiver's address and the desired amount of tokens.
3. Users can check their token balance by calling the `getBalance` function.
4. Users can transfer their tokens to another address by calling the `transfer` function and specifying the receiver's address and the amount of tokens to transfer.
5. Users can burn their tokens by calling the `burn` function and specifying the amount of tokens to burn.


## Acknowledgment

I would like to express my gratitude to MetaCrafters for their contributions and collaboration in the development of this code. Their expertise and assistance have been invaluable in creating this Solidity smart contract.
Thank you to the team at MetaCrafters for their valuable input and efforts.


Author:
- [Snetis](https://www.linkedin.com/in/snetis/)