// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract SendEther {
    fallback() external payable { }
    receive() external payable { }

    function sendByTransfer(address payable _to, uint amount) payable public  {
        _to.transfer(amount);
    }

    function sendBySend(address payable _to, uint amount) payable public returns (bool) {
       bool send = _to.send(amount);
       require(send,"send fail");
       return send;
    }

    function sendByCall(address payable _to, uint amount) payable public returns (bool)  {
        (bool sucess,) = _to.call{value: amount}("");
        require(sucess,"call fail");
        return sucess;
    }
}

contract ReceiveEther {
    event Log(uint amount, uint gas);

    receive() external payable { 
        emit Log(msg.value, gasleft());
    }
}