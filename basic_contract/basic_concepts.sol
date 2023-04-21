// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import {IERC20} from './IERC20.sol';

 /*
 * @title simple contract.
 * @author catellaTech
 */
contract basic_concepts {
    address public immutable OWNER;
    ERC20basic token;

    constructor() public {
        OWNER = msg.sender;
        token = new ERC20Basic(1000)
    }
}