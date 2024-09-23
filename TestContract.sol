// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract TestContract{
    string public message;
    uint public number;
    event Log(address caller, string logMessage);

    function foo(string memory _msg, uint256 _num) external {
        message = _msg;
        number = _num;

    }

    fallback() external payable { 
        emit Log(msg.sender, "Fallback was called");
    }

    receive() external payable { }

}


contract Caller {
    function callFoo(address _testContract, string memory _msg, uint256 _num) external {
        (bool success,) = _testContract.call(abi.encodeWithSignature("foo(string,uint256)", _msg,_num));
        require(success,"Call to foo failed");
    }

    function callNonExistentFunction(address _testContract) external  {
       (bool success,) =  _testContract.call(abi.encodeWithSignature("nonExistentFunction()"));
       require(!success,"Call to non-existent function should fail");
    }
}