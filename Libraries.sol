// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.6.4;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/math/SafeMath.sol";

contract LibrariesExample {
    
    using SafeMath for uint;
    
mapping(address => uint) public tokenBalance;

constructor() public { 
    tokenBalance[msg.sender] = 1;
}

function sendToken(address _to, uint _amount) public returns(bool) {
tokenBalance[msg.sender] -= _amount; 
tokenBalance[_to] += _amount;
        return true;
    }
}
