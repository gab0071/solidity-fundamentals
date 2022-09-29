// SPDX-License-Identifier: MIT
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

// @tittle Mappings
// @author catellaTech

contract mappings {
    // We declare a Mapping to choose a number

    mapping(address => uint) public chooseNumber;

    function setNumber(uint _number) public {
        chooseNumber[msg.sender] = _number;
    }

    function viewNumber() public view returns (uint) {
        return chooseNumber[msg.sender];
    }

    //we declare a mapping to relate the name of a person with his amount of money

    mapping(string => uint) public money;

    function amountOfMoney(string memory _name, uint _amount) public {
        money[_name] = _amount;
    }

    function getMoney(string memory _name) public view returns (uint) {
        return money[_name];
    }

    // Example of mapping with struct

    struct persons {
        string name;
        uint age;
    }

    mapping(uint => persons) person;

    function dniPerson(
        uint _dniNumber,
        string memory _name,
        uint _age
    ) public {
        person[_dniNumber] = persons(_name, _age);
    }

    function getPerson(uint _dni) public view returns (persons memory) {
        return person[_dni];
    }
}
