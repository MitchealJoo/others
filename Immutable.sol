// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract ImmutableExample {
    address public immutable owner;
    constructor() {
        owner = msg.sender;
    }

    function getOwner() public view returns (address){
        return owner;
    }

}