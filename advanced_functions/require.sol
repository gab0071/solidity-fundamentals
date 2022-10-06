pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

// @title Require.
// @author catellaTech

contract Require {
    //Funcion que verfique la contraseña
    function password(string memory _pas) public pure returns (string memory) {
        require(
            keccak256(abi.encodePacked(_pas)) ==
                keccak256(abi.encodePacked('12345')),
            'Contraseña incorrecta'
        );
        return 'contraseña correcta';
    }

    //Funcion para pagar
    uint256 tiempo = 0;
    uint256 public cartera = 0;

    function pagar(uint256 _cantidad) public returns (uint256) {
        require(now > tiempo + 5 seconds, 'Aun no puedes pagar');
        tiempo = now;
        cartera = cartera + _cantidad;
        return cartera;
    }

    //funcion con una lista

    string[] nombres;

    function nuevoNombre(string memory _nombre) public {
        for (uint256 i = 0; i < nombres.length; i++) {
            require(
                keccak256(abi.encodePacked(_nombre)) !=
                    keccak256(abi.encodePacked(nombres[i])),
                'ya está en la lista'
            );
        }

        nombres.push(_nombre);
    }
}
