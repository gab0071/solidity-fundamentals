// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/* link for more info about it 
 https://medium.com/coinmonks/solidity-transfer-vs-send-vs-call-function-64c92cfc878a
 
*/
contract ethSend {
    // Eventos 
    event SendStatus(bool);
    event CallStatus(bool, bytes);

    constructor() payable {}
    receive() external payable {}
    // Transfer
    function sendViaTransfer(address payable _to) public payable {
        _to.transfer(1 ether);
    }

    // Send
    function sendViaSend(address payable _to) public payable {
        bool sent = _to.send(1 ether);
        emit SendStatus(sent);
        require(sent == true, "El envio ha fallado");
    }

    // Call
    function sendViaCall(address payable _to) public payable {
        (bool success, bytes memory data) = _to.call{value: 1 ether}("");
        emit CallStatus(success, data);
        require(success == true, "El envio ha fallado");
    }

}


contract ethReceiver {

    event log(uint amount, uint gas);

    receive() external payable {
        emit log(address(this).balance, gasleft());
    }

} 