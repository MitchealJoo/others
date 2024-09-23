// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract PayableExample {
    address payable recipient;
    constructor() {
        recipient = payable(msg.sender);
    }
    
    function receiveEther() external payable {}

    //查询余额
    function queryBalance() external view returns(uint){
        return address(this).balance;
    }

    // 处理接收以太币的函数（无数据的交易）
    receive() external payable {
        // 这里可以添加处理逻辑，例如：
        // recipient.transfer(msg.value); // 将收到的以太币转给 recipient
    }

    // 处理接收以太币的函数（有数据的交易）
    fallback() external payable {
        // 这里可以添加处理逻辑，例如记录日志
        // 但通常 fallback() 函数不应接收以太币，如果有数据传入时应当调用
    }
}