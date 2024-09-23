// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract DeleteElements {

    function deleteArrayElement(uint[] memory arr, uint index) public pure returns(uint[] memory){
        require(index < arr.length, "index out of bounds");
        uint[]memory newArr =new uint[](arr.length - 1);
        for (uint i = 0; i < index; i++) {
            newArr[i] =arr[i];
        }

        for (uint i = index; i < arr.length; i++) {
            newArr[i] =arr[i+1];
        }

        return newArr;
    }
}