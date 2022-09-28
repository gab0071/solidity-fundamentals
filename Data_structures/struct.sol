// SPDX-License-Identifier: MIT
pragma solidity >=0.4.4 <0.7.0;

// @tittle struct
// @author catellaTech

contract struct {
    // e-commerce client
    struct client {
        uint id;
        string name;
        string dni;
        string email;
        uint phoneNum;
        uint creditCard;
        uint secretNumb;
    }

    client clientOne =
        client(
            1,
            "catellaTech",
            "23456BC",
            "catellatech@gmail.com",
            12345678,
            345621,
            12
        );

    // e-commerce item
    struct item {
        string nameItm;
        string model;
        uint price;
    }
    item phoneItem = item("apple", "iphone14 pro", 1900);

    // NGOs to help various causes
    struct NGOs {
        address direction;
        string name;
    }

    NGOs NGO_one = NGOs(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2, "godHelpU");

    // causes
    struct cause {
        uint id;
        string name;
        uint priceObj;
    }

    cause causeOne = cause(1, "helpingDogs", 5000);
}
