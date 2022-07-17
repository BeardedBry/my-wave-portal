// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {

    uint256 totalWaves;
    address[] wavers;

    constructor() {
        console.log("Hey there!");
    }

    function wave() public {
        totalWaves += 1;
        console.log("%s has waved!", msg.sender);
        wavers.push(msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves.", totalWaves);
        return totalWaves;
    }

    function getWavers() public view {
        console.log("stored waver addresses");
        for (uint i = 0; i < wavers.length; i++ ) {
            console.log(wavers[i]);
        }
    }

}