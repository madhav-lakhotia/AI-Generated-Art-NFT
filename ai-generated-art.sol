// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DynamicMetadataNFT {
    struct NFT {
        string name;
        string description;
        string imageURI;
    }

    mapping(uint256 => NFT) public nfts; // Mapping from token ID to NFT data
    mapping(address => uint256[]) public ownerToTokens; // Mapping from owner to their token IDs
    uint256 public totalSupply; // Total number of NFTs minted

    // Function to mint a new NFT
    function mintNFT(string memory _name, string memory _description, string memory _imageURI) public {
        totalSupply++;
        nfts[totalSupply] = NFT(_name, _description, _imageURI);
        ownerToTokens[msg.sender].push(totalSupply);
    }

    // Function to update metadata of an existing NFT
    function updateMetadata(uint256 _tokenId, string memory _name, string memory _description, string memory _imageURI) public {
        require(_tokenId > 0 && _tokenId <= totalSupply, "Invalid token ID");
        // In a real contract, you would check if the caller is the owner of the NFT
        nfts[_tokenId] = NFT(_name, _description, _imageURI);
    }

    // Function to get NFT details
    function getNFT(uint256 _tokenId) public view returns (string memory, string memory, string memory) {
        require(_tokenId > 0 && _tokenId <= totalSupply, "Invalid token ID");
        NFT memory nft = nfts[_tokenId];
        return (nft.name, nft.description, nft.imageURI);
    }

    // Function to get all tokens owned by an address
    function getOwnedTokens() public view returns (uint256[] memory) {
        return ownerToTokens[msg.sender];
    }
}
