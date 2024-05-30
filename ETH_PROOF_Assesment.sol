// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // Public variables to store the details about the coin
    string public Name = "ETH_Token";
    string public Abbr = "ETK";
    uint256 public totalSupply;

    // Mapping of addresses to balances
    mapping(address => uint256) public balances;

    // Mint function to create new tokens
    function mint(address add, uint256 amount) public {
        totalSupply += amount;
        balances[add] += amount;
    }

    // Burn function to destroy tokens
    function burn(address add, uint256 amount) public {
        require(balances[add] >= amount, "Insufficient balance to burn");
        totalSupply -= amount;
        balances[add] -= amount;
    }
}
