// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
pragma abicoder v2;

// @title Events.
// @author catellaTech
contract Events {
    // We declare the events to use
    event Event_one (string _personName);
    event Event_two (string _personName, uint _personAge);
    event Event_three(string, uint, address indexed, bytes32);
    event MissionAbort();
    
    function EmitirEvento1(string memory _personName) public {
        emit Event_one(_personName);
    }
    
    function EmitirEvento2(string memory _personName, uint _age) public {
        emit Event_two(_personName, _age);
    }
    
    function EmitirEvento3(string memory _personName, uint _age) public {
        bytes32 hash_id = keccak256(abi.encodePacked(_personName, _age, msg.sender)); 
        emit Event_three(_personName, _age, msg.sender, hash_id);
    }
    
    function missionAborted() public {
        emit MissionAbort();
    }
}