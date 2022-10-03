// SPDX-License-Identifier: MIT
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

// @title Events.
// @author catellaTech


contract Events{
    
    // We declare the events to use
    event event_one (string _personName);
    event event_two (string _personName, uint _personAge);
    event event_three(string, uint, address, bytes32);
    event missionAbort();
    
    function EmitirEvento1(string memory _personName) public{
        emit event_one(_personName);
    }
    
    function EmitirEvento2(string memory _personName, uint _age) public{
        emit event_two(_personName, _age);
    }
    
    function EmitirEvento3(string memory _personName, uint _age) public{
        bytes32 hash_id = keccak256(abi.encodePacked(_personName, _age, msg.sender)); 
        emit event_three(_personName, _age, msg.sender, hash_id);
    }
    
    function missionAborted() public {
        emit missionAbort();
    }
}