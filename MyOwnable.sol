// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract MyOwnable {
    address public owner;
    uint public conut = 0;

    modifier onlyOwner(){
        require(msg.sender == owner, "the owner is wrong");
        _;
    }

    constructor(){
        owner = msg.sender;
    }

    function transferOwnership(address newOwner) external onlyOwner{
        require(msg.sender != address(0), "owner cannot be 0");
        owner = newOwner;
    }

    
    function allCanSet(uint num) external {
        conut = num;
    }
}