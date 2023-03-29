// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "forge-std/Test.sol";
import "../src/Safe.sol";

contract SafeTest is Test {

    Safe public safe;

    function setUp() public {
        safe = new Safe();
    }

    function test_Whitdraw() public {
         payable(address(safe)).transfer(1 ether);
        uint256 preBalance = address(this).balance;
        safe.withdraw();
        uint256 postBalance = address(this).balance;
        assertEq(preBalance + 1 ether, postBalance);
    }
}

