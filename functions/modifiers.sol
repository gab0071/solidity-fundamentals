// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
pragma abicoder v2;

// @title modifiers view, pure and payable.
// @author catellaTech

contract modifiers {
    // state variables 
    uint x = 10;
    string[] students_list;
    mapping(address => wallet) walletCash;
    struct wallet {
        string person_name;
        address person_address;
        uint person_money;
    }


    function newStudent(string memory _student) public {
        students_list.push(_student);
    }
    
    // View modifier
    function seeStudent(uint _position) public view returns(string memory) {
        return students_list[_position];
    }
    
    function sumAx(uint _a) public view returns(uint) {
        return x + _a;
    }
    
    // Pure modifier
    
    function exponentiation(uint _a, uint _b) public pure returns(uint) {
        return _a ** _b;
    }
    
    // Payable modifier
    function Pay(string memory _personName, uint _amount) public payable {
        wallet memory my_wallet;
        my_wallet = wallet(_personName, msg.sender, _amount);
        walletCash[msg.sender] = my_wallet;
    }
    
    function seeBalance() public view returns(wallet memory){
        return walletCash[msg.sender];
    }
}