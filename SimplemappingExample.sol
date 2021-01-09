// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

contract SimpleMappingExample {
    
    mapping(uint => bool) public myMapping;
    mapping(address => bool) public MyAddressMapping;
    
    function setValue(uint _index) public {
        myMapping[_index] = true;
    }
    
    function setAddressMapping() public {
        MyAddressMapping[msg.sender] = true;
    }
}
