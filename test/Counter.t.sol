// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Counter.sol";

contract CounterTest is Test {

    Counter counter;
    uint256 public number2;

    function setUp() external {
        counter = new Counter();
        counter.setNumber(0);
    }

    function test_setNumber() external {
        counter.setNumber(10);
        assertEq(counter.number(), 10);

    }
}