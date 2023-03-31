// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ExampleContract1 {

    uint256 val1;
    uint256 val2;
    uint256 val3;

    function addToA(uint256 amount) external {
        val1 += amount;
        val3 += amount;
    }

    function addToB(uint256 amount) external {
        val2 += amount;
        val3 += amount;
    }

}