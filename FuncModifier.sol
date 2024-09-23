// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract FuncModifier {
    
    uint private number = 1;

    modifier nonZero(){
        require(number !=0 , "number is zero and cannot be processed. ");
        _;
    }

    function doubleNumber() external nonZero{
        number *= 2;
    }

    function resetNumber() external nonZero{
        number = 0;
    }
}