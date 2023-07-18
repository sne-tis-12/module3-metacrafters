// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

/*A new token is created on the local HardHat network
Only contract owner should be able to mint tokens
Any user can transfer tokens
Any user can burn tokens*/

contract MyToken {
    
    string public tokenName = "mytoken";
    string public tokenAbbvr = "MT";
    uint public totalTokens = 0;
    mapping(address => uint) balances;

    address private owner;

    constructor() {
        owner = msg.sender;
    }

    function getBalance() public view returns(uint){
        address sender = msg.sender;
        return balances[sender];
    }

    function mint(address receiver, uint amount ) public {
        require(msg.sender == owner, "Only owner can mint tokens");
        balances[receiver] += amount;
        totalTokens += amount;
    }

    function transfer(address receiver, uint amount) public {
        address sender = msg.sender; 
        uint balanceOfSender = balances[sender];
        require(balanceOfSender >= amount, "Insufficient Funds");
        balances[receiver] += amount;
        balances[sender] -= amount;
    }

    function burn(uint amount) public {
        address sender = msg.sender;
        uint balanceOfSender = balances[sender];
        require(balanceOfSender >= amount, "Insufficient Funds");
        balances[sender] -= amount;
        totalTokens -= amount;
    }

}