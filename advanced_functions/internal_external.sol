// SPDX-License-Identifier: MIT
pragma solidity >=0.4.4 <0.7.0;

// @title Internal and External.
// @author catellaTech

contract Comida {
    struct plato {
        string nombre;
        string ingredientes;
        uint256 tiempo;
    }
    //Declarar un array dinamico de platos
    plato[] platos;
    //Relacionamos con un mapping el nombre del plato con sus ingredientes
    mapping(string => string) ingredientes;

    //Funcion que nos permite dar de alta un nuevo plato
    function NuevoPlato(
        string memory _nombre,
        string memory _ingredientes,
        uint256 _tiempo
    ) internal {
        platos.push(plato(_nombre, _ingredientes, _tiempo));
        ingredientes[_nombre] = _ingredientes;
    }

    function Ingredientes(string memory _nombre)
        internal
        view
        returns (string memory)
    {
        return ingredientes[_nombre];
    }
}

contract Sandwitch is Comida {
    function sandwitch(string memory _ingredientes, uint256 _tiempo) external {
        NuevoPlato('Sandwitch', _ingredientes, _tiempo);
    }

    function verIngredientes() external view returns (string memory) {
        return Ingredientes('Sandwitch');
    }
}
