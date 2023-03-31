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

    function test_setNumber(uint16 _number) external {
        counter.setNumber(_number);
        assertEq(counter.number(), _number);

    }
}