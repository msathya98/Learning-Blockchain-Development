// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract Counter {
    uint count;
    
    constructor() public {
        public count = 0;
    }
    

    function incrementCount() public {
         count++;
        
    }
}
