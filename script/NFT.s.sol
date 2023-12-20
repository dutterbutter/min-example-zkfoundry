// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/NFT.sol";

contract MyScript is Script {
    function run() external {
        // Simulate a transaction from a specific address with the required ETH value
        // Address used here is from era-test-node rich wallets
        address someAddress = address(0x42F3dc38Da81e984B92A95CBdAAA5fA2bd5cb1Ba);
        uint256 mintPrice = 0.08 ether;

        vm.deal(someAddress, mintPrice);
        vm.prank(someAddress);

        // Deploy the NFT contract
        NFT nft = new NFT("NFT_tutorial", "TUT", "baseUri");

        // Mint an NFT to someAddress
        vm.prank(someAddress);
        uint256 tokenId = nft.mintTo{value: mintPrice}(someAddress);
        // Should be viewable in era-test-node
        console.log("NFT Contract deployed and token minted. Token ID:", tokenId);
    }
}
