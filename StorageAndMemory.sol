// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract StorageAndMemory {
    struct Struct{
        string str;
        uint [] arr;
    }

    Struct myStruct;

    function updateStruct(string calldata _str) external{
       Struct storage _struct  = myStruct;
       _struct.str = _str;
    }

    function getStruct(uint [] calldata _arr) external view returns(uint[] memory){
       Struct memory _struct  = myStruct;
       _struct.arr = _arr;
       return _struct.arr;
    }

}