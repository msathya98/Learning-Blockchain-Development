// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

contract SimpleWallet is Ownable {
    
   

    
   function withdrawMoney(address payable _to, uint _amount) public onlyOwner {
      
       _to.transfer(_amount);
   }
   
  function sendMoney() external payable {
        
    }
}
