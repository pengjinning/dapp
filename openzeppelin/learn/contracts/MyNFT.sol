// contracts/MyNFT.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

// IDE问题，不影响运行。解决方法？
// import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";

// contract MyNFT is ERC721 {
contract MyCollectible is ERC721Upgradeable {

    // constructor() ERC721("MyNFT", "MNFT") {
    // }
    // constructor() ERC721("MyCollectible", "MyCollectible") {
    // }
    function initialize() initializer public {
       __ERC721_init("MyCollectible", "MCO");
    }
    
}
