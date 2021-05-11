pragma solidity ^0.5.0;

import './OwnableOperatorRole.sol';
import './IERC721.sol';

contract TransferProxyForDeprecated is OwnableOperatorRole {

    function erc721TransferFrom(IERC721 token, address from, address to, uint256 tokenId) external onlyOperator {
        token.transferFrom(from, to, tokenId);
    }
}