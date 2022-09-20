// SPDX-License-Identifier: MIT
pragma solidity >=0.4.4 <0.7.0;

import './ERC20.sol';

 /*
 * @title simple contract.
 * @author catellaTech
 */
contract firstContract{
     
    address owner;
    ERC20basic token;

    constructor() public {
        owner = msg.sender;
        token = new ERC20Basic(1000)
    }
}