# Metacrafter_ETH_PROOF
This Solidity program is a simple program that demonstrates how the contract allows the creation (minting) and destruction (burning) of tokens while keeping track of the total supply and individual balances, with a safeguard to prevent burning more tokens than are available in an address's balance.

## Description

* This contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
* This contract will have a mapping of addresses to balances (address => uint)
* We will have a mint function that takes two parameters: an address and a value. The function then increases the total supply by that number and increases the balance of the address by that amount.
* This contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. It will take an address and value just like the mint functions. It will then deduct the value from the total supply and from the balance of the address.
* Lastly, burn function should have conditionals to make sure the balance of account is greater than or equal to the amount that is supposed to be burned.

## Getting Started
### Executing program
* To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

* Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension. Copy and paste the following code into the file:
```
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
```

## Help
* To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "ETH_PROOF_Assesment.sol" button.

* Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MYTOKEN-ETH_PROOF" contract from the dropdown menu, and then click on the "Deploy" button.

* Once the contract is deployed, you can interact with burn, mint, Abbr, Name, totalSupply, balances function. Click on the "Name" contract in the left-hand sidebar we will be able to see the name of the token i.e."ETH_Token". Then you can click on "Abbr", you will be able to see Abbrebiation of the token i.e. "ETK". 
* After that we can mint by coping the account address and pasting it in the mint function then adding the amount to it followed by clicking on the "trancast" button. You will now be able to see in the "totalSupply" the amount you have minted. 
* Similarly you can burn the amount but if you try to burn greater amount than the totalSupply then you will get an error message "Insufficient balance to burn".
Authors





## Authors

Saswat Pragyan Samantaray<BR>
mailID: saswatsamantaray9853@gmail.com

## License
This project is licensed under the MIT License - see the LICENSE.md file for details
