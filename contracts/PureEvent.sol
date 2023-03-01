// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract PureEvent{
    
    //-------------ATTRIBUTES|ELEMENTS|PROPERTIES-----------------
    // constructor
    constructor(){

    }
    
    //properties
    address payable wallet;

    //mapping
    mapping(address => uint256) public balances;


    //-------------FUNCTIONS|METHODS|PROGRAMMABILITY-----------------
    //CRUD
    //CREATE
    function buytoken() public payable {
        balances[msg.sender] += 1;
        wallet.transfer(msg.value);  //wallet is variable name, transfer is keyword in solidity
    }  //msg.value gets value of ether sent in by function caller

    //READ

    //UPDATE

    //DELETE


    //MODIFIERS


    //EVENTS



}