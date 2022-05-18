// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "hardhat/console.sol";
import "./ExampleExternalContract.sol";

contract Staker {

  ExampleExternalContract public exampleExternalContract;

  constructor(address exampleExternalContractAddress) {
      exampleExternalContract = ExampleExternalContract(exampleExternalContractAddress);
  }

  // Collect funds in a payable `stake()` function and track individual `balances` with a mapping:
  //  ( make sure to add a `Stake(address,uint256)` event and emit it for the frontend <List/> display )
  mapping ( address => uint256 ) public balances;

  // After some `deadline` allow anyone to call an `execute()` function
  //  It should either call `exampleExternalContract.complete{value: address(this).balance}()` to send all the value
  uint256 public deadline = block.timestamp + 120 seconds;

  // if the `threshold` was not met, allow everyone to call a `withdraw()` function
  uint256 public constant threshold = 1 ether;

  // 
  event Stake(address indexed sender, uint256 amount);

  // 
  modifier deadlineReached(bool requireReached) {
    uint256 timeRemaing = timeLeft();
    if (requireReached) {
      require(timeRemaing == 0, "dealine is not reached");
    } else {
      require(timeRemaing > 0, "dealine is already reached");
    }
    _;
  }

  // 
  modifier stakeNotCompleted() {
    bool completed = exampleExternalContract.completed();
    require(!completed, "staking already completed");
    _;
  }

  function execute() public stakeNotCompleted deadlineReached(false) {
    uint256 contractBalance = address(this).balance;
    //
    require(contractBalance >= threshold, "threshold not reached");
    //
    (bool sent,) = address(exampleExternalContract).call{value: contractBalance}(abi.encodeWithSignature("complete()"));
    require(sent, "exampleExternalContract.complete failed");
  }

  // 
  function stake() public payable deadlineReached(false) stakeNotCompleted {
    // 
    balances[msg.sender] += msg.value;
    // 
    emit Stake(msg.sender, msg.value);
  }

  // Add a `withdraw()` function to let users withdraw their balance
  function withdraw() public deadlineReached(true) stakeNotCompleted {
    uint256 userBalance = balances[msg.sender];
    //
    require(userBalance > 0, "you don't have enough balance to withdraw");
    // 
    balances[msg.sender] = 0;
    //
    (bool sent, ) = msg.sender.call{value: userBalance}("");
    require(sent, "failed to send user balance back to the user");
  }

  // Add a `timeLeft()` view function that returns the time left before the deadline for the frontend
  function timeLeft() public view returns (uint256 left) {
    if (block.timestamp >= deadline) {
      return 0;
    } else {
      return deadline - block.timestamp;
    }
  }

  // Add the `receive()` special function that receives eth and calls stake()
  receive() external payable {}

}
