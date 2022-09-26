// SPDX-License-Identifier: MIT
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

// @tittle More Variables
// @author catellaTech

contract varibles {
    // @dev we add public keyword to see the value when we deploy our contract
    // string variable
    string myFirstStrVar;
    string public myName = "catellaTech";
    string public greetings = "hi, how are u?";
    string public empty_var = "";

    // boolean variables
    bool myFirstBoolean;
    bool public on = true;
    bool public off = false;

    // bytes variables
    bytes32 myFirstBytesVar;
    bytes4 anotherVar;

    // example 01
    string public name = "catellaTech";
    bytes32 public hash = keccak256(abi.encodePacked(name));

    // example 02
    bytes4 public identifier;

    function exampleBytes4() public {
        identifier = msg.sig; // this return the first 4 bytes
    }

    // address variables
    address myAddress;
    address public myLocalAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
}
