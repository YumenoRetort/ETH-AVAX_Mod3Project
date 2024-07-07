// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 < 0.9.0;

contract MyToken {

    // public variables here
    address public contractOwner;
    string public tokenName = "META";
    string public tokenAbbrv = "MTA";
    uint256 public totalSupply = 0;

    // mapping variable here
    mapping(address => uint256) public balances;

    constructor() {
        contractOwner = msg.sender;
        balances[msg.sender]= totalSupply;
    }

    // mint function
    function mint (address _address, uint256 _value)public {
        require(_address==contractOwner, "Only the contract owner can mint tokens");
        totalSupply += _value;
        balances[_address] += _value;
    }

    // burn function
    function burn (address _address, uint256 _value)public {
        require(balances[_address] >= _value, "Insufficient balance!");
        totalSupply -= _value;
        balances[_address] -= _value;
    }

     // transfer function
    function transferTokens(address _toAddress, uint256 _value) public {
         require(balances[msg.sender] >= _value, "Insufficient balance!");
         balances[msg.sender] -= _value;
         balances[_toAddress] += _value;
    }
}

