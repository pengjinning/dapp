// SPDX-License-Identifier: MIT
// https://solidity-by-example.org/data-locations
pragma solidity ^0.8.10;

/**
Variables are declared as either storage, memory or calldata to explicitly specify the location of the data.

storage - variable is a state variable (store on blockchain)
memory - variable is in memory and it exists while a function is being called
calldata - special data location that contains function arguments
 */
contract DataLocations {
    uint[] public arr;
    mapping(uint => address) map;
    struct MyStruct {
        uint foo;
    }
    mapping(uint => MyStruct) myStructs;

    function f() public {

    }

    function _f(
        uint[] storage _arr,
        mapping(uint => address) storage _map,
        MyStruct storage _myStruct
    ) internal {

    }

    // You can return memory variables
    function g(uint[] memory _arr) public returns (uint[] memory) {
        // do something with memory array
    }

    function h(uint[] calldata _arr) external {
        // do something with calldata array
    }
    
}