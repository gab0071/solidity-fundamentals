// SPDX-License-Identifier: MIT
pragma solidity >=0.4.4 <0.7.0;


// @tittle Arrays
// @author catellaTech

contract arrays {
    //Array of fixed-length integers 5
    uint[5] public array_intigers = [1,2,3];
    
    //Array of fixed-length 32-bit integers with 7 positions
    uint32[7] array_intigers_32_bits;
    
    //Array of fixed length strings 15
    string[15] array_strings;
    
    //Dynamic array of integers
    uint [] public dynamic_array_integers;
    
    struct Person{
        string name;
        uint age;
    }
    
    //Dynamic Array of type Person
    Person [] public dynamic_array_people;
    
    function modificar_array() public{
     //dynamic_array_integers.push(_number);
     //dynamic_array_people.push(Person(_name, _age));
       array_intigers[2]=56;
    }
    
    uint public test = array_intigers[2];
}