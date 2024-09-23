// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract ContractA {
    function functionA() external virtual  pure returns (string memory){
        return 'A';
    }

}

contract ContractB is ContractA{
    function functionA() external virtual  override  pure returns (string memory){
        return 'B';
    }
}

contract ContractC is ContractA,ContractB{
    function functionA() external override(ContractA, ContractB)  pure returns (string memory){
        return 'A+B';
    }
}