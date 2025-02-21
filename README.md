# 🎨 AI-Generated Art NFT Smart Contract

## 📜 Overview
This project is a **Solidity Smart Contract** designed to create **NFTs for AI-generated art** with dynamic metadata. The contract is lightweight, without constructors, imports, or input fields required during deployment.

### 🚀 Features
1. **AI Art NFT Creation:** Generates unique NFTs for AI-generated artwork.
2. **Dynamic Metadata:** NFT metadata can update based on conditions or states.
3. **Simple Contract:** No constructors, imports, or deployment inputs.
4. **On-Chain Storage:** Metadata and ownership stored securely on-chain.

## 💰 Smart Contract Address
This contract is deployed on the **Edu Chain** at the following address:
```
0xaAde329429c4baf2098A54CE9Ea3A5d1f1244262
```

## 📝 Contract Functions

1. **Mint NFT:**
```solidity
function mintNFT(address recipient, string memory tokenURI) public
```
- Mints a new NFT for the given recipient with dynamic metadata.

2. **Update Metadata:**
```solidity
function updateTokenURI(uint256 tokenId, string memory newTokenURI) public
```
- Allows updating metadata linked to a specific NFT.

3. **View Metadata:**
```solidity
function tokenURI(uint256 tokenId) public view returns (string memory)
```
- Displays the current metadata URI for an NFT.

## 🌐 Deployment Info
- **Chain:** Edu Chain
- **Deployed Address:** `0xaAde329429c4baf2098A54CE9Ea3A5d1f1244262`

## 📷 Example Use Case
- **AI Art Platforms:** Mint unique NFTs for AI-generated artwork.
- **Dynamic Collections:** Change metadata based on user interaction or milestones.

## 🤝 Contribution
Feel free to fork this repo, submit issues, or suggest enhancements! Let's build the future of AI-generated NFTs together. 🚀

