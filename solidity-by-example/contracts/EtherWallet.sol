// SPDX-License-Identifier: MIT
// https://solidity-by-example.org/app/ether-wallet
pragma solidity ^0.8.10;

contract EtherWallet {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    receive() external payable {}

    function withdraw(uint _amount) {
        require(msg.sender == owner, "caller is not sender");
        payable(msg.sender).transfer(_amount);
    }

    function getBalance() external view returns(uint) {
        return address(this).balance;
    }

}