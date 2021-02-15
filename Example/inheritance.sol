// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract Ownable {
    address owner;


constructor() public {
    owner = msg.sender;
    
}

modifier onlyOwner() {
    require(msg.sender == owner, "must be owner");
    _;
    
}
}

contract SecretValut {
    string secret;
    
    constructor(string memory _secret) public {
        secret = _secret;
        }
    function getSecret() public view  returns(string memory) {
        return secret;
        
    }
}


contract MyContract is Ownable {
    address secretVault;
    
    constructor(string memory _secret ) public {
        SecretVault _secretVault = new SecretVault(_secret);
        secretVault = address(_secretVault);
        super;
        
    }
    
    function getSecret() public view onlyOwner returns(string memory) {
        SecretVault_secretVault = SecretVault(secretVault);
        return _secretVault.getSecret();
    }
}
