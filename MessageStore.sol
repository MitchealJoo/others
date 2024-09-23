// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract MessageStore {

    string public message;

    function setMessage(string calldata _str) external {
        message = _str;
    }
    
    function getMessage() external view returns (string memory){
        return  message;
    }
}