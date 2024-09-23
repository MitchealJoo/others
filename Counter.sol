// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Counter {
    uint public count;

    function incre() external {
        count += 1;
    }

    function decre() external{
        count -= 1;
    }
}

