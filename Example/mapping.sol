// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract MyContract {
    mapping(uint => string) public names;
      mapping(uint => Student ) public student ;
      mapping(address => mapping(uint => Student)) public myStudent;
      
      struct Student {
          string name;
          string subject;
      }
constructor() public {
    names[1] = "kushal";
    names[2] = "ajay";
    names[4] = "mahi";
    names[6] = "pramod";
}

function addStudent(uint _id, string memory _name, string memory _subject) public {
    student[_id] = Student(_name, _subject);
    
}

function addMyStudent(uint _id, string memory _name, string memory _subject) public {
    myStudent[msg.sender][_id] = Student(_name, _subject);
}
}
