pragma solidity >=0.4.16 <0.7.0;
library Search {
function indexOf(uint[] storage self, uint value)
        public
        view
        returns (uint)
{
for (uint i = 0; i < self.length; i++)
            if (self[i] == value) return i;
        return uint(-1);
} }
contract NotUsingForExample { 
uint[] data;
function append(uint value) public { data.push(value);
}
function replace(uint _old, uint _new) public {
} }
