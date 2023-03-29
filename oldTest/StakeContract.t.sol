// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "forge-std/Test.sol";
import "../src/MockERC20.sol";
import "../src/StakeContract.sol";
import "./utils/Cheats.sol";

contract StakeContractTest is Test {
    Cheats internal constant cheats = Cheats(HEVM_ADDRESS);

    StakeContract public stakeContract;
    MockERC20 public mockERC20;

    function setUp() public {
        stakeContract = new StakeContract();
        mockERC20 = new MockERC20();
    }

    function testExample() public {
        uint amount = 10e18;
        mockERC20.approve(address(stakeContract), amount);
        cheats.roll(55);
        bool stakePassed = stakeContract.stake(amount, address(mockERC20));
        assertTrue(stakePassed);
    }
}
