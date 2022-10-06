// SPDX-License-Identifier: MIT
pragma solidity >=0.4.4 <0.7.0;
// you can import in this way ⬇
//import "./bank.sol";

// or this way ⬇
import {Bank} from "./bank.sol";

// @title bank.
// @author catellaTech

contract Client is Bank {
    function registrarCliente(string memory _nombre) public {
        nuevoCliente(_nombre);
    }

    function IngresarDinero(string memory _nombre, uint256 _cantidad) public {
        clientes[_nombre].dinero = clientes[_nombre].dinero + _cantidad;
    }

    function RetirarDinero(string memory _nombre, uint256 _cantidad)
        public
        returns (bool)
    {
        bool flag = true;

        if (int256(clientes[_nombre].dinero) - int256(_cantidad) >= 0) {
            clientes[_nombre].dinero = clientes[_nombre].dinero - _cantidad;
        } else {
            flag = false;
        }

        return flag;
    }

    function ConsultarDinero(string memory _nombre)
        public
        view
        returns (uint256)
    {
        return clientes[_nombre].dinero;
    }
}
