// contracts/MyContract.sol
// SPDX-License-Identifier: MIT
// https://docs.openzeppelin.com/contracts/4.x/access-control
pragma solidity ^0.8.12;

import "@openzeppelin/contracts/access/Ownable.sol";

contract MyContract is Ownable {
    function normalThing() public {
        // anyone can call this normalThing()
    }

    function specialThing() public onlyOwner {
        // only the owner can call specialThing()!
    }
}