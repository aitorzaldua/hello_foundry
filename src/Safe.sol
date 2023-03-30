// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Safe {
    receive() external payable {}

    function withdraw() external {
        payable(msg.sender).transfer(address(this).balance);
    }
}
