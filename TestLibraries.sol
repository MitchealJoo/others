// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

library MathLib {
    function min(uint a,uint b) external pure returns(uint){
        return  a >= b ? b:a;
    }
}

library ArrayUtils {
    function sum(uint[] memory arr)external pure returns (uint total){
        for (uint i = 0; i < arr.length; i++) {
            total += arr[i];
        }
        return total;
         
    }
}

contract TestLibraries {
    function testMath(uint _a, uint _b) external pure returns (uint){
        return MathLib.min(_a,_b);
    }

    using ArrayUtils for uint[];

    uint[] public numbers;
    constructor() {
        numbers = [1,2,3,4,5,6,7,8,9,10];
    }

    function testArrayUtils()external view returns (uint){
        return numbers.sum();
    }
}