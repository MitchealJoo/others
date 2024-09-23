// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract ErrorHandling{

    function requireTest(uint i) public pure {
        require(i<=10, "i>10");
    }

    function revertTest(uint i) public pure {
        if(i > 10){
            revert("i>10");
        }
    }

    uint num = 111;
    function assertTest() public view {
        assert(num == 111);
    }

    error myError(address caller, uint i);
    function myErrorTest(uint i) public view {
        if(i > 10){
            revert myError(msg.sender, i);
        }
    }
}

