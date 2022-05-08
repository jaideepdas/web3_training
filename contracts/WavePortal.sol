// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    address[] senders;

    constructor() {
        console.log("Wave Portal Smart Contract");
    }

    function wave() public {
        totalWaves += 1;
        senders.push(msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        return totalWaves;
    }

    function getSenders() public view returns (address[] memory) {
        return senders;
    }
}
