// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/NFT.sol";

contract MyScript is Script {
    function run() external {
        vm.startBroadcast();

        NFT nft = new NFT("ZK_QUEST", "ZKQ", "baseUri");
        
        vm.stopBroadcast();
    }
}
