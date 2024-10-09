// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
 
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
 

contract MINE is ERC20 {
 
    // Constructor that mints the initial supply to the deployer's address
    constructor(uint256 initialSupply) ERC20("MINE", "V44111") {
        _mint(msg.sender, initialSupply); // Mint the initial supply of tokens to the deployer's address
    }
 
    // Function to mint new tokens to a specified address
    function mint(address to, uint256 amount) public {
        _mint(to, amount); // Call internal _mint function to create new tokens
    }
 
    // Function to burn tokens from a specified address
    function burn(address from, uint256 amount) public {
        _burn(from, amount); // Call internal _burn function to destroy tokens
    }
 
    // Override the transfer function to allow sending tokens
    function transfer(address to, uint256 amount) public override returns (bool) {
        _transfer(_msgSender(), to, amount); // Call internal _transfer function
        return true; // Return success
    }
 
    // Override the approve function to allow an address to spend on behalf of the caller
    function approve(address spender, uint256 amount) public override returns (bool) {
        _approve(_msgSender(), spender, amount); // Call internal _approve function
        return true; // Return success
    }
 
    // Override the transferFrom function to allow spending tokens on behalf of an address
    function transferFrom(address from, address to, uint256 amount) public override returns (bool) {
        _transfer(from, to, amount); // Transfer tokens from `from` to `to`
        uint256 currentAllowance = allowance(from, _msgSender());
        require(currentAllowance >= amount, "ERC20: transfer amount exceeds allowance");
        _approve(from, _msgSender(), currentAllowance - amount); // Update allowance
        return true; // Return success
    }
 
    // Function to retrieve the balance of a specific address
    function getBalanceOf(address account) public view returns (uint256) {
        return balanceOf(account); // Call balanceOf to get the balance
    }
}
 
