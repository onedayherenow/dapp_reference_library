// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


contract Events {

    //constructor
    constructor(address payable _wallet) public {
        wallet = _wallet;
    }


    /////////////
    //PROPERTIES////////
    
    //properties
    address payable wallet;  // 0.5.1 standard = payable keyword must included in address declaration

    //structs

    //mapping
    mapping(address => uint256) public balances;





    /////////////
    //FUNCTIONS////////
    
    //crud

    //functions
    function buyToken() public payable {   // payable assures that this is a payable function, ether can safely be recieved here
        balances[msg.sender] += 1; // msg.sender is the caller of the smart contract
        wallet.transfer(msg.value);    // we can transfer ether to a wallet by calling (address).transfer
    }

    

    //modifiers

    

}