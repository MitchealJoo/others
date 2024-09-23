// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract FallbackExample {
    event Log(string message,address sender,uint amount,bytes data);

    fallback() external payable { 
        emit Log('fallback', msg.sender, msg.value, msg.data);
    }

    receive() external payable {
        emit Log('receive', msg.sender, msg.value, '');
     }
}