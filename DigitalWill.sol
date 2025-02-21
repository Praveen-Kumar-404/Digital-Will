// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DigitalWill {
    address payable public beneficiary = payable(0x1234567890123456789012345678901234567890); // Set beneficiary address
    uint256 public releaseTime = 1735689600; // Set future release time (Unix timestamp)
    address public owner = msg.sender; // Owner of the will

    // Function to deposit funds into the contract
    function deposit() external payable {}

    // Function to withdraw funds after the release time
    function claimInheritance() external {
        require(block.timestamp >= releaseTime, "Funds are locked until the release time");
        require(msg.sender == beneficiary, "Only the beneficiary can claim the funds");
        payable(beneficiary).transfer(address(this).balance);
    }
}
