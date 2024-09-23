// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract SimpleBank {
    
    mapping(address=>uint) public balances;

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint amount) public {
        require(amount <= balances[msg.sender],"money is not enough");
        payable(msg.sender).transfer(amount);
        balances[msg.sender] -= amount;
    }

    function checkBalance() public view returns(uint){
        return balances[msg.sender];
    }
}