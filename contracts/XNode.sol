// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./IThorNode.sol";

contract XNode {
    address ThorAuction = 0xb81E9C5f9644Dec9e5e3Cac86b4461A222072302;

    function getMetadataForOwner(address _owner)
        external
        view
        returns (
            address owner,
            uint8 level,
            bool isOnUpgrade,
            bool isOnAuction,
            uint64 lastTransferTime,
            uint64 createdAt,
            uint64 updatedAt
        )
    {
        uint256 tokenId = IThorNode(ThorAuction).ownerToId(_owner);
        return IThorNode(ThorAuction).getMetadata(tokenId);
    }

    function isXNode(address _owner) external view returns (bool isX) {
        return IThorNode(ThorAuction).isX(_owner);
    }
}
