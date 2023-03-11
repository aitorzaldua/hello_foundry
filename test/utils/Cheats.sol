// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

abstract contract Cheats {
    // sets the block tiemstamp to x
    function wrap(uint256 x) public virtual;

    // sets the block number to x
    function roll(uint x) public virtual;

    // sets the slot loc of cobtract c to val
    function store(
        address c,
        bytes32 loc,
        bytes32 val
    ) public virtual;

    //etc....
}