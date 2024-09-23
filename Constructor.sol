// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract Constructor {
    uint public num;
    address public owner;

    constructor(uint _x) {
        owner = msg.sender;
        num = _x;
    }
}