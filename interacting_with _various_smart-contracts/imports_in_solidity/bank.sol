// SPDX-License-Identifier: MIT
pragma solidity >=0.4.4 <0.7.0;

// @title bank.
// @author catellaTech

contract Bank {
    //Definimos un tipo de dato complejo cliente
    struct cliente {
        string _nombre;
        address direccion;
        uint256 dinero;
    }

    //mapping que nos relacionar el nombre del cliente con el tipo de dato cliente
    mapping(string => cliente) clientes;

    //Funcion que nos permita dar de alta un nuevo cliente

    function nuevoCliente(string memory _nombre) public {
        clientes[_nombre] = cliente(_nombre, msg.sender, 0);
    }
}
