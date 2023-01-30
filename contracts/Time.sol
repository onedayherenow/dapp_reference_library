// SPDK-License-Identifier: MIT
pragma solidity ^0.8.13;


contract Time {

    //constructor
    constructor() public {
        startTime = 1544668513;   // unix time = number of seconds passed since Thursday 1, January 1970
    }

    //properties
    uint256 startTime;
    address owner;

    //structs
    struct Person {
        uint256 peopleCount;
        string _firstName;
        string _lastName;
    }


    //arrays
    mapping(uint => Person) public people; // this replaces the people array, for us to store Person structs:  Key = unsigned integer, Value = Person

    uint256 public peopleCount; //helps to have a number for iteration through array


    //FUNCTIONS BELOW
    //crud
    function addPerson (
        string memory _firstName, 
        string memory _lastName
        ) 
        public 
        onlyWhileOpen
        {
        incrementCount();
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
        }
    

    //functions
    function incrementCount() internal {
        peopleCount += 1;
    }

    //modifiers
    modifier onlyWhileOpen() {
       require(block.timestamp >= startTime);
       _;
   }
}