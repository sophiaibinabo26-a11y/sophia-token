//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/SophiaToken.sol";

contract DeploySophiaToken is Script {
    function run() external {
        vm.startBroadcast();
        new SophiaToken(
            "Sophia Token",
            "SPT",
            1_000_000
        );
        vm.stopBroadcast();
    }
}