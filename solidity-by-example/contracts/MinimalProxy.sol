// SPDX-License-Identifier: MIT
// https://solidity-by-example.org/app/minimal-proxy
pragma solidity ^0.8.10;

// original code
// https://github.com/optionality/clone-factory/blob/master/contracts/CloneFactory.sol

/**
If you have a contract that will be deployed multiple times, use minimal proxy contract to deploy them cheaply.
 */
contract MinimalProxy {

    function clone(address target) external returns (address) {
        // convert address to 20 bytes
        bytes20 targetBytes = bytes20(target);

        assembly {
            
        }

    }

}