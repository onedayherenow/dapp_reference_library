//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

//************** IMPORTANT RESPONSIBILITIES FOR TOKEN CONTRACT :*/
//*************  mint function, name, and balances mapping */



contract ERC20Token {
    
    //constructory

    //properties
    string name;
    // mapping
    mapping(address => uint256) public balances;



    //FUNCTIONS

    // crud

    // functions
    // function mint() public {
    // balances[msg.sender] += 1;
    // }


    

     function mint() public {
        balances[tx.origin] += 1;      
    }


    // modifiers

    // events
    
}