// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract FuncOutputs{
    uint public _a;
    bool public _b;
    string public _c;

    
    function returnMultiple() external pure returns (uint a, bool b, string memory){
        return (11, true, "3344");
    }

    function captureOutputs() external{
        (_a, _b, _c) = this.returnMultiple();
        
    }

    function displayOutputs() external view returns (uint a, bool b, string memory){
        return (_a, _b , _c);
    }
}