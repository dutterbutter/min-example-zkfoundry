// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/NFT.sol";

contract MyScript is Script {
    function run() external {
        uint256 privateKey = uint256(bytes32(bytes20(keccak256(abi.encodePacked("PRIVATE-KEY")))));
        vm.startBroadcast(privateKey);

        NFT nft = new NFT("NFT_tutorial", "TUT", "baseUri");
        
        vm.stopBroadcast();
    }
}
