// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {

    uint256 totalWaves;
    address[] wavers;

    event NewWave(address indexed from, uint256 timestamp, string message);

    struct Wave {
        address waver;
        string message;
        uint256 timestamp;
    }

    // stores all waves of type struct!
    Wave[] waves;

    constructor() {
        console.log("I AM A SMART CONTRACT");
    }

    function wave(string memory _message) public {
        totalWaves += 1;
        console.log("%s has waved, with message %s", msg.sender, _message);

        waves.push(Wave(msg.sender, _message, block.timestamp));
        // wavers.push(msg.sender);

        // Emit so transaction log shows this on lookup
        emit NewWave(msg.sender, block.timestamp, _message);
    }

    function getAllWaves() public view returns (Wave[] memory) {
        console.log("Getting all waves");
        return waves;
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