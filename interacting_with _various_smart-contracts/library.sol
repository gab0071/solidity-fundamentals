// SPDX-License-Identifier: MIT
pragma solidity >=0.4.4 <0.7.0;

// @title simple example about libraries.
// @author catellaTech

library Operaciones {
    function division(uint256 _i, uint256 _j) public pure returns (uint256) {
        require(_j > 0, "No podemos dividir por 0");
        return _i / _j;
    }

    function multiplicacion(uint256 _i, uint256 _j)
        public
        pure
        returns (uint256)
    {
        if ((_i == 0) || (_j == 0)) {
            return 0;
        } else {
            return _i * _j;
        }
    }
}

contract calculos {
    using Operaciones for uint256;

    function calculo(uint256 _a, uint256 _b)
        public
        pure
        returns (uint256, uint256)
    {
        uint256 q = _a.division(_b);
        uint256 m = _a.multiplicacion(_b);
        return (q, m);
    }
}
