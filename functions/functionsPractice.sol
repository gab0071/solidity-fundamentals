// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
pragma abicoder v2;

// @title Functions
// @author catellaTech

contract functionsPractice {
    /* Practice #1: add within an address array, the address of the person executing the function */
    address[] public addresses;

    function newAddress() public {
        addresses.push(msg.sender);
    }

    /* Practice #2: compute the hash of the data provided as parameter */
    
    bytes32 public hash;

    function Hash(string memory _str) public {
        hash = keccak256(abi.encodePacked(_str));
    }

    /* Practice #3:
    ** @dev We declare a complex data type that is Food 
    */

    struct Food {
        string name;
        string ingredient;
    }

    /* @dev let's create a complex data type */
    
    Food public pizza;

    function Pizza(string memory _ingredient) public {
       pizza = Food("Pizza", _ingredient);
    }

    /* Practice #4 
    ** We are going to create a private function where the hash of the personal data of 
    each of the students is calculated and then we are going to create a public function where  
    we are going to save the students and we are going to call the private function.
    */

    // @dev We declare a complex data type that is Students
    struct Students {
        string name;
        address addresses;
        uint age;
    }
    
    bytes32 public student_hash;

    // we calculate the hash of the student
    function studentHash(string memory _name, address _addresses, uint _age) private {
        student_hash = keccak256(abi.encodePacked(_name, _addresses, _age));
    }

    /* @dev we save with the public function within a list the students */
    Students[] public list;

    /* we create a mapping that relates the name of the students with their hash */
    mapping (string => bytes32) students_mapping;

    function newStudent(string memory _name, uint _age) public {
        list.push(Students(_name, msg.sender, _age));
        studentHash(_name, msg.sender, _age);
        students_mapping[_name] = student_hash;
    }
}