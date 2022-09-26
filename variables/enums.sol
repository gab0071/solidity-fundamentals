// SPDX-License-Identifier: MIT
pragma solidity >=0.4.4 <0.7.0;

// @tittle Enums
// @author catellaTech

contract enumsInSol {
    //switch enumeration
    enum myStates {on, off}

    // variable enum
    myStates state;

    function switchOn() public {
        state = myStates.on; // with the value 
    }

    function setState(uint _k) public {
      state = myStates(_k);
    }

    // to the states
    function States() public view returns(myStates) {
        return state;
    }

    // address enumeration
    enum myDirections {up,down, right, left}

    // varibla enum
    myDirections directions;

    // up direction
    function Up() public {
        directions = myDirections.up;
    }
     
     // down direction
    function Down() public {
        directions = myDirections.down;
    }
    
    // right direction
    function Right() public {
        directions = myDirections.right;
    }
    
    // left direction
    function Left() public {
        directions = myDirections.left;
    }

    function setDirections(uint _k) public{
        directions = myDirections(_k);
    }

    function Directions() public view returns(myDirections) {
        return directions;
    }

}