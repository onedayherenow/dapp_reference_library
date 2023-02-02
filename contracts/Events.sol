// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


//IMPORTANT EVENT INFORMATION
//****** YOU can get the entire event stream from a smart contract 
//****** Which is a nice way to get entire history of a function


/// @title A title that should describe the contract/interface
/// @author The name of the author
/// @notice Explain to an end user what this does
/// @dev Explain to a developer any extra details

contract Events {

    //constructor
    constructor(address payable _wallet, ERC20Token _token) public {
        wallet = _wallet;
        token = _token;
    }

    /////////////
    //PROPERTIES////////
    
    //properties
    address payable wallet;  // 0.5.1 standard = payable keyword must included in address declaration
    address public token; // using for testing ERC20 contract

    //structs

    //mapping
    mapping(address => uint256) public balances;  // this mapping here gives us a balance value for each address/mapping



    /////////////
    //FUNCTIONS////////
    
    //crud

    //functions
    function buyToken() public payable {   // payable assures that this is a payable function, ether can safely be recieved here
        balances[msg.sender] += 1; // msg.sender is the caller of the smart contract
        wallet.transfer(msg.value);    // we can transfer ether to a wallet by calling (address).transfer
        emit Purchase(msg.sender, 1); //we can trigger the purchase event
    }

    
    //event    ---->  listen to them directly,, it's nice to call a function and see an event triggered as a confirmation test
    event Purchase(
        address indexed _buyer,
        uint256 _amount
    );


    //modifiers

    

}