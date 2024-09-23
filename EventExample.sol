// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract EventExample {
    event LogMessage(address indexed from,address indexed to, string message);

    function sendMessage(address _receive, string calldata _message) external {
        emit LogMessage(msg.sender, _receive, _message);
    }
}