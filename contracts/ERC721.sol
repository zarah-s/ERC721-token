// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract NFT is ERC721URIStorage, Ownable {
    constructor() ERC721("PydeFT", "Pyde Token") Ownable(msg.sender) {}

    function mint(
        address _to,
        uint256 _tokenId,
        string calldata _tokenUri
    ) external onlyOwner {
        _mint(_to, _tokenId);
        _setTokenURI(_tokenId, _tokenUri);
    }
}
