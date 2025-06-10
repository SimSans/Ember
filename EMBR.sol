// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title EMBER Token
 * @dev ERC20 Token with fixed supply, no taxes, no minting after deployment.
 */
contract EMBER is ERC20, Ownable {
    constructor() ERC20("EMBER", "EMBR") {
        _mint(msg.sender, 1_000_000_000 * 10 ** decimals());
    }
}
