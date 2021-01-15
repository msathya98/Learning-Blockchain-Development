// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

contract SimpleWallet is Ownable {
    
    mapping(address => uint) public allowance;
    
    function addAllowance(address _who, uint _amount) public onlyOwner {
        allowance[_who] = _amount;
    }
   
 
   modifier ownerOrAllowed(uint _amount ) {
       address owner;
      owner == msg.sender;
      
       require( ( msg.sender == owner) || allowance[msg.sender] >= _amount, "You are not the owner");
       _;
    
      }

    function reduceAllowance(address _who, uint _amount ) internal {
        allowance[_who] -= _amount;
    }
   function withdrawMoney(address payable _to, uint _amount) public ownerOrAllowed(_amount) {
      require(_amount <= address(this).balance, "there are not enough funds in smart contract");
      if(msg.sender != owner) {
          reduceAllowance(msg.sender, _amount);
      }
       _to.transfer(_amount);
   }
   
  function sendMoney() external payable {
        
    }
}
