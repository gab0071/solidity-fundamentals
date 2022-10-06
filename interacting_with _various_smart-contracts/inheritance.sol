// SPDX-License-Identifier: MIT
pragma solidity >=0.4.4 <0.7.0;

// @title inherintance.
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
