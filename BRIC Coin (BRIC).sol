// 0.5.1-c8a2
// Enable optimization
pragma solidity ^0.5.0;

import "./ERC20.sol";
import "./ERC20Detailed.sol";

/**
 * @title SimpleToken
 * @dev Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `ERC20` functions.
 * The BRIC Coin is TRC20 token backed up by the international finance remittance of BRIC (Brazil, Russia, India & China) Countries. The token will be used for cross border transactions among BRIC.
 */
contract BRICCoin is ERC20, ERC20Detailed {

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor () public ERC20Detailed("BRIC Coin", "BRIC", 2) {
        _mint(msg.sender, 3170000000 * (10 ** uint256(decimals())));
    }
}