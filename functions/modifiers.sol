// SPDX-License-Identifier: MIT
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

// @title modifiers view, pure and payable.
// @author catellaTech

contract view_pure_payable{
    
    // View modifier
    string[] students_list;
    
    function newStudent(string memory _student) public{
        students_list.push(_student);
    }
    
    function seeStudent(uint _position) public view returns(string memory){
        return students_list[_position];
    }
    
    uint x = 10;
    function sumAx(uint _a) public view returns(uint){
        return x + _a;
    }
    
    // Pure modifier
    
    function exponentiation(uint _a, uint _b) public pure returns(uint){
        return _a ** _b;
    }
    
    // Payable modifier
    
    mapping(address => wallet) walletCash;
    
    struct wallet{
        string person_name;
        address person_address;
        uint person_money;
    }
    
    function Pay(string memory _personName, uint _amount) public payable{
        wallet memory my_wallet;
        my_wallet = wallet(_personName, msg.sender, _amount);
        walletCash[msg.sender] = my_wallet;
    }
    
    function seeBalance() public view returns(wallet){
        return walletCash[msg.sender];
    }
    
    
}