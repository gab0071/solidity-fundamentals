// SPDX-License-Identifier: MIT
pragma solidity >=0.4.4 <0.7.0;

// @tittle uses case with safemath
// @author catellaTech

import "./SafeMath.sol";


contract calculosSeguros{
    
    //Debemos declarar para que tipo de datos usaremos la libreria
    using SafeMath for uint;
    
    //Funcion suma segura
    
    function suma(uint _a, uint _b) public pure returns(uint){
        return _a.add(_b);
    }
    
    //Funcion resta
    function resta(uint _a, uint _b) public pure returns(uint){
        return _a.sub(_b);
    }
    
    //funcion multiplicacion
    function multiplicacion(uint _a, uint _b) public pure returns(uint){
        return _a.mul(_b);
    }

    // funcion division
    function division(uint _a, uint _b) public pure returns(uint){
        return _a.div(_b);
    }
    
}

