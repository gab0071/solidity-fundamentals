// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// @title Functions/ returns
// @author catellaTech

contract returnsValues {
   /* function that returns a greeting */

    function Greeting() public pure returns(string memory) {
       return "Hi";
    }

    /* This function calculates the result of a multiplication of two integers. */
    
    function Multiply(uint _a, uint _b) public pure returns(uint) {
        return _a * _b;
    }

    /* we are going to return a function that tells us if the number is pair or odd */
    /* * true === pair
       * false != pair
    */


    function pair_odd(uint _a) public pure returns(bool) {
        bool flag;
        if(_a % 2 == 0) flag = true;
        else flag = false;
        return flag;
    }

    /* a function that makes us a division, that gives us the quotient, the remainder and that gives us a boolean variable that in case the remainder of the division gives us zero it returns true and in the opposite case it returns false */

    function DivToNumb(uint _a, uint _b) public pure returns(uint, uint, bool) {
        uint quotient = _a / _b;
        uint residue = _a % _b;
        bool multiple;
        
        if(residue == 0) multiple = true;
        else multiple = false;

        return (quotient, residue, multiple);
    }

    /* * Practice for return values
       * Program us a function that returns us enough values
    */

    function Numbers() public pure returns(uint, uint, uint, uint, uint, uint) {
        return (1,2,3,4,5,6);
    }

    // multiple assignment
    function allTheVal() public pure {
        /* We declare the variables where the return values of the Numbers function are stored */
        uint a;
        uint b;
        uint c;
        uint d;
        uint e;
        uint f;
        
        // perform multiple mapping
        (a, b, c, d , e, f) = Numbers();
    }

    function lastValue() public pure  {
        (,,,,,uint last) = Numbers();
    }


}