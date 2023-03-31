// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "forge-std/Test.sol";
import "../src/ExampleContract1.sol";

contract ExampleContract1Test is Test {
    ExampleContract1 public exampleContract1;
    uint amount = 20;

    function setUp() external {
        exampleContract1 = new ExampleContract1();
    }

    function Invariant_addToA() external {
        exampleContract1.addToA(amount);
    }
}
