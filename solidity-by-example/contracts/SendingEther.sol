// SPDX-License-Identifier: MIT
// https://solidity-by-example.org/sending-ether
pragma solidity ^0.8.10;

/**
How to send Ether?
You can send Ether to other contracts by

transfer (2300 gas, throws error)
send (2300 gas, returns bool)
call (forward all gas or set gas, returns bool)
How to receive Ether?
A contract receiving Ether must have at least one of the functions below

receive() external payable
fallback() external payable
receive() is called if msg.data is empty, otherwise fallback() is called.

Which method should you use?
call in combination with re-entrancy guard is the recommended method to use after December 2019.

Guard against re-entrancy by

making all state changes before calling other contracts
using re-entrancy guard modifier
 */
contract ReceiveEther {
    /*
    Which function is called, fallback() or receive()?

           send Ether
               |
         msg.data is empty?
              / \
            yes  no
            /     \
receive() exists?  fallback()
         /   \
        yes   no
        /      \
    receive()   fallback()
    */

    

}

contract SendEther {

}