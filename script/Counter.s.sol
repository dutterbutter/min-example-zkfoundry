// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/Counter.sol";

contract CounterScript is Script {
    Counter counter;

    function setUp() public {
        // Deploy the Counter contract
        counter = new Counter();
    }

    function run() public {
        // Set the number to a specific value
        uint256 initialValue = 42;
        vm.prank(address(this));
        counter.setNumber(initialValue);

        // Increment the number
        vm.prank(address(this));
        counter.increment();
    }
}