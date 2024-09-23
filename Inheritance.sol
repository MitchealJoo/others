// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract ContractA {
    function foo() external virtual pure returns (string memory){
        return 'AAA';
    }

     function bar() external virtual pure returns (string memory){
        return 'aaa';
    }

}


contract ContractB is ContractA{
    function foo() external override pure returns (string memory){
        return 'BBB';
    }

    function bar() external override virtual pure returns (string memory){
        return 'bbb';
    }

}


contract ContractC is ContractB{
     function bar() external override pure returns (string memory){
        return 'CCC';
    }
}