// SPDX-License-Identifier: MIT
// https://solidity-by-example.org/app/iterable-mapping
pragma solidity ^0.8.10;

library IterableMapping {
    // Iterable mapping from address to uint;
    struct Map {
        address[] keys;
        mapping(address => uint) values;
        mapping(address => uint) indexOf;
        mapping(address => bool) inserted;
    }

    

}

contract TestIterableMap {

}
