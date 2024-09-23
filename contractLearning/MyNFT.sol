// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;


interface IERC165 {
    function supportsInterface(bytes4 interfaceId) external view returns (bool);

}

interface IERC721 is IERC165{
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);

    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);

    event ApprovalForAll(address indexed owner, address indexed operator, bool approved);


    function balanceOf(address owner) external view returns (uint256 balance);

    function ownerOf(uint256 tokenId) external view returns (address owner);

    function safeTransferFrom(address from, address to, uint256 tokenId) external;

    function transferFrom(address from, address to, uint256 tokenId) external;

    function approve(address to, uint256 tokenId) external;

    function getApproved(uint256 tokenId) external view returns (address operator);
    
    function setApprovalForAll(address operator, bool _approved) external;

    function isApprovedForAll(address owner, address operator) external view returns (bool);

    function safeTransferFrom(address from, address to, uint256 tokenId, bytes calldata data) external; 
}


interface IERC721Receiver {
    function onERC721Received(
        address operator,
        address from,
        uint tokenId,
        bytes calldata data
    ) external returns (bytes4);
}


abstract contract ERC721 is IERC721{
    mapping (uint => address) _owners;
    mapping (address => uint) _banlances;
    

    function balanceOf(address owner) external view returns (uint256 balance){
        
    }

    function ownerOf(uint256 tokenId) external view returns (address owner){}

    function safeTransferFrom(address from, address to, uint256 tokenId) external{}

    function transferFrom(address from, address to, uint256 tokenId) external{}

    function approve(address to, uint256 tokenId) external{}

    function getApproved(uint256 tokenId) external view returns (address operator){}
    
    function setApprovalForAll(address operator, bool _approved) external{}

    function isApprovedForAll(address owner, address operator) external view returns (bool){}

    function safeTransferFrom(address from, address to, uint256 tokenId, bytes calldata data) external{}
}



contract MyNFT is ERC721 {
   
}