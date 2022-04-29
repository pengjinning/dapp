// SPDX-License-Identifier: MIT
// https://solidity-by-example.org/ether-units
pragma solidity ^0.8.10;

/**
Transactions are paid with ether.

Similar to how one dollar is equal to 100 cent, one ether is equal to 1018 wei.
 */
contract EtherUnits {
    uint public oneWei = 1 wei;
    bool public isOneWei = 1 wei == 1;
    //
    uint public oneEther = 1 ether;
    bool public isOneEther = 1 ether == 1e18;
}