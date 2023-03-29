// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Safe {

receive() external payable {}

function withdraw() external payable {
    payable(msg.sender).transfer(address(this).balance);
}

function send() external payable {
    payable(address(this)).transfer(msg.value);
}

function sendTo(address _address) external payable {
    payable(_address).transfer(msg.value);
}

}