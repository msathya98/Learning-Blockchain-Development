// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

contract FunctionExample {
    
    mapping(address => uint) public balanceRecieved;
    
    address payable owner;
    
    constructor() public {
        owner = msg.sender;
        
    }
    
    function destroySmartContract() public {
        require(msg.sender == owner, "You are not the owner");
        selfdestruct(owner);
    }
    
    function getOwner() public view returns(address) {
        return owner;
    }
    
    function convertWeiToEther(uint _amountInWei) public pure returns(uint) {
        return _amountInWei / 1 ether;
    }
    
    function recieveMoney() public payable {
        assert(balanceRecieved[msg.sender] + msg.value >= balanceRecieved[msg.sender]);
        
         balanceRecieved[msg.sender] += msg.value;
    }
    
    function withdrawMoney(address payable _to, uint _amount) public {
        require(balanceRecieved[msg.sender] >= _amount, "Not enought funds");
        assert(balanceRecieved[msg.sender] >= balanceRecieved[msg.sender] - _amount);
        balanceRecieved[msg.sender] -= _amount;
        _to.transfer(_amount);
    }
    
  recieve() external payable {
      
        recieveMoney();
    }
    
}
