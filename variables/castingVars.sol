// SPDX-License-Identifier: MIT
pragma solidity >=0.4.4 <0.7.0;

// @tittle Enums
// @author catellaTech

contract castingVars {

    uint8 intigerEight = 42;
    uint64 intiger64 = 60000;
    uint intiger256 = 1000000;

    int16 intiger16Bits = 156;
    int120 intiger120Bits = 900000;
    int intiger = 5000000;


    // casting 
    uint64 public castingOne = uint64(intigerEight);
    uint64 public castingTwo = uint64(intiger256);
    uint8 public castingThree = uint8(intiger16Bits);
    int public castingFour = int(intiger120Bits);
    int public castingFive = int(intiger256);

    function converting(uint8 _k) public pure returns(uint64) {
        return uint64(_k);
    }
}