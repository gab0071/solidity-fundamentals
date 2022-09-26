// SPDX-License-Identifier: MIT
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

// @tittle Enums
// @author catellaTech

contract modifiers_public_private_internal  {
    // Modifier public 
    uint public my_intiger = 45;
    string public my_string = "CatellaTech";
    address public owner;
    
    constructor() public{
        owner = msg.sender;
    }
    
    //modifier private
    uint private my_private_intiger = 10;
    bool private flag =true;
    
    function test(uint _k) public{
        my_private_intiger = _k;
    }
    
    //modifier internal
    bytes32 internal hash = keccak256(abi.encodePacked("hello, we are in love with the blockchain tech"));
    address internal addresses = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
}