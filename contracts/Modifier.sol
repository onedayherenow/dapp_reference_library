// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Modifier {

    //constructor
    constructor() public {
        owner = msg.sender;
    }

    //properties
    address owner;

    //structs
    struct Person {
        uint _id;
        string _firstName;
        string _lastName;
    }


    //arrays
    mapping(uint => Person) public people; // MAPPING = this replaces the people array, for us to store Person structs:  Key = unsigned integer, Value = Person

    uint256 public peopleCount; //COUNTER = helps to have a number for iteration through array


    //crud
    function addPerson (
        string memory _firstName, 
        string memory _lastName
        ) 
        public 
        onlyOwner
        {
        incrementCount();
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
        }
    

    //functions
    function incrementCount() internal {
        peopleCount += 1;
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
}