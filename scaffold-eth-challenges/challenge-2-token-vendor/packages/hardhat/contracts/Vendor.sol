pragma solidity 0.8.4;
// SPDX-License-Identifier: MIT

import "@openzeppelin/contracts/access/Ownable.sol";
import "./YourToken.sol";

contract Vendor is Ownable {

  event BuyTokens(address buyer, uint256 amountOfETH, uint256 amountOfTokens);

  YourToken public yourToken;

  constructor(address tokenAddress) {
    yourToken = YourToken(tokenAddress);
  }

  // ToDo: create a payable buyTokens() function:
  uint256 public constant tokensPerEth = 100;

  function buyTokens() public payable {

    uint256 amountOfTokens = msg.value * tokensPerEth;
    //
    yourToken.transfer(msg.sender, amountOfTokens);
    //
    emit BuyTokens(msg.sender, msg.value, amountOfTokens);
  }

  // ToDo: create a withdraw() function that lets the owner withdraw ETH
  // function withdraw() public {
  // }

  // ToDo: create a sellTokens() function:
  // function sellTokens() public {
  // }
  
}
