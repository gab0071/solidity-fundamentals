// SPDX-License-Identifier: MIT
pragma solidity >=0.4.4 <0.7.0;

contract globals_functions {
    // msg.sender function
    function MsgSender() public view returns (address) {
        return msg.sender;
    }

    // now function
    function Now() public view returns (uint) {
        return now;
    }

    // block.coinbase function
    function blockCoinbase() public view returns (address) {
        return block.coinbase;
    }

    // block.difficulty function
    function blockDifficulty() public view returns (uint) {
        return block.difficulty;
    }

    // block.number function
    function blockNumber() public view returns (uint) {
        return block.number;
    }

    // msg.sig function
    function msgSig() public view returns (bytes4) {
        return msg.sig;
    }

    // tx.gasprice function
    function txGasPrice() public view returns (uint) {
        return tx.gasprice;
    }
}
