# 🚀 Master the ERC20 Token Standard

Welcome to the first mission of Scroll Dev Challenge!

All of you are probably familiar with tokens like WETH, USDT, USDC, and many others. Did you know that all of these tokens are designed by following some standard rules?

Let's get started! 💪

## Objective

Your task is to:
1. Develop your own ERC20 token.
2. Deploy it to Scroll Sepolia Testnet.
3. And finally verify it.

If you need help with using a smart contract framework for completing this challenge, the [Level Up: Build with Foundry](https://www.levelup.xyz/content/level-up-foundry) guide might be a helpful start!

If you get stuck, feel free to ask for help in [Level Up Telegram group](https://t.me/+PdNbk5milo1mMTAy).

## High Level Structure

**1. START WITH THE GUIDE IN [LEVEL UP](https://www.levelup.xyz/challenges/ERC20)**

Guide: Begin your journey with the guide. Here you'll find the basic functionality of ERC20 tokens and how to get started.

**2. CLONE THIS REPO AND COMPLETE THE [CHALLENGE](./Challenge/ERC20-Challenge.sol)**

Assignment: Complete this challenge. Put your knowledge to the test by cloning this repo and completing this challenge by deploying your own ERC20 token and deploying it to Scroll Sepolia Testnet with Foundry.

<details>
<summary>Level Up: <a href="https://www.levelup.xyz/challenges/ERC20">ERC20 Challenge Recap</a></summary>

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "./ERC20.sol";

// Define your ERC20 token contract
contract MyToken is ERC20 {

    // Constructor that mints the initial supply to the deployer of the contract
    constructor(uint256 initialSupply) ERC20("MyToken", "MTK") {
        // Mint the initial supply of tokens to the deployer's address
    }

    // Function to mint new tokens to a specified address
    function mint(address to, uint256 amount) public {
        // Implement the mint function using the _mint internal function
    }

    // Function to burn tokens from a specified address
    function burn(address from, uint256 amount) public {
        // Implement the burn function using the _burn internal function
    }

    // Function to transfer tokens from the caller's address to a specified address
    function transfer(address to, uint256 amount) public override returns (bool) {
        // Implement the transfer function using the _transfer internal function
    }

    // Function to approve an address to spend a certain amount of tokens on behalf of the caller
    function approve(address spender, uint256 amount) public override returns (bool) {
        // Implement the approve function using the _approve internal function
    }

    // Function to transfer tokens from one address to another using an allowance
    function transferFrom(address from, address to, uint256 amount) public override returns (bool) {
        // Implement the transferFrom function using the _transfer and _approve internal functions
    }
}
```

</details>

## Conclusion

This mission will be the first step of your smart contract development journey. You will use this practice in the upcoming missions a lot.

Remember, the journey is as rewarding as the destination. Embrace the mission, and let's revolutionize the world of finance together!
