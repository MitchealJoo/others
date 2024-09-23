// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract Parents {
    uint private priValue;
    uint internal intValue;
    uint public pubValue;

    function priFunction() private pure returns(string memory){
        return "priFunction";
    }

    function intFunction() internal pure returns(string memory){
        return "intFunction";
    }

    function pubFunction() public  pure returns(string memory){
        return "pubFunction";
    }

    function extFunction() external  pure returns(string memory){
        return "extFunction";
    }

}