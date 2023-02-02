// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


//IMPORTANT EVENT INFORMATION
//****** YOU can get the entire event stream from a smart contract 
//****** Which is a nice way to get entire history of a function


/// @title A title that should describe the contract/interface
/// @author The name of the author
/// @notice Explain to an end user what this does
/// @dev Explain to a developer any extra details

contract EventTokenContract {

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



    /////////////
    //FUNCTIONS////////
    
    //crud

    //functions
    // REFACTORED CODE (LOOK AT EVENT2.SOL FOR ORIGINAL)
    // ! ! ! ! ! ! ! ! ! !   
    function buyTokenOriginal() public payable {
        ERC20Token _token = ERC20Token(address(token));
        _token.mint();  // minting 'instantiates' data into working memory, into the blockchain - written to blockchain
        wallet.transfer(msg.value);
    }


    function buyToken() public payable {
        ERC20Token(address(token)).mint();
        wallet.transfer(msg.value);
    }



    // function mint() public {              
    //    balances[msg.sender] += 1;     <----------- We do not use msg.sender 
    //                                   <----------- because it always returns the address that started the contract
    // }                                 <----------- so we use tx.origin instead to reference the address that invoked the transaction


    //event    ---->  listen to them directly,, it's nice to call a function and see an event triggered as a confirmation test
    event Purchase(
        address indexed _buyer,
        uint256 _amount
    );


    //modifiers



}