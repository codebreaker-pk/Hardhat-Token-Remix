// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {
    // Public variables here
    string public tokenName = "SuperCoin";
    string public tokenAbbrv = "SUP";
    uint public totalSupply = 0;

    // Mapping variable here
    mapping(address => uint) public balances;
    address public owner;

    // Events for token transfer and burn
    event Transfer(address indexed from, address indexed to, uint value);
    event Burn(address indexed burner, uint value);

    // Constructor to set the contract owner
    constructor() {
        owner = msg.sender;
    }

    // Modifier to check if the caller is the owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can call this function");
        _;
    }

    // Mint function, callable only by the owner
    function mint(address _address, uint _value) public onlyOwner {
        totalSupply = totalSupply + _value;
        balances[_address] = balances[_address] + _value;
    }

    // Burn function
    function burn(uint _value) public {
        require(balances[msg.sender] >= _value, "Insufficient balance");
        totalSupply = totalSupply - _value;
        balances[msg.sender] = balances[msg.sender] - _value;
        emit Burn(msg.sender, _value);
    }

    // Transfer function
    function transfer(address _to, uint _value) public {
        require(_to != address(0), "Invalid address");
        require(balances[msg.sender] >= _value, "Insufficient balance");
        
        balances[msg.sender] = balances[msg.sender] - _value;
        balances[_to] = balances[_to] + _value;
        emit Transfer(msg.sender, _to, _value);
    }
}
