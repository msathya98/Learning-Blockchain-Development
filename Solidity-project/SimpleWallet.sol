// SPDX-License-Identifier: MIT

pragma solidity ^0.5.13;

contract SimpleWallet {
    
    address public owner;
    
    constructor() public {
        owner = msg.sender;
        
    }
    
   function withdrawMoney(address payable _to, uint _amount) public {
       require(owner == msg.sender, "You are not the owner");
       _to.transfer(_amount);
   }
   
  function sendMoney() external payable {
        
    }
}
