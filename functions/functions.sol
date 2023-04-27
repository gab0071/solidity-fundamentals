// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract functions {
    // state variable
    uint256 x = 100;
    
    // Funciones de tipo Pure
    function getName() public pure returns (string memory){
        return "Joan";
    }

    // Funciones de tipo View
    function getNumber() public view returns (uint256){
        return x * 2;
    }
}