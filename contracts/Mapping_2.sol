// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Mapping {
    //constructor

    //properties~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    //structs - we can use any data types & combine 
      struct Person { 
        uint _id;
        string _firstName;
        string _lastName; 
        }
    

    //arrays - where we want to store structs
    // Person[] public people;
    // this is an array of type person called people
    // we can reference the array by the index we wish to call;  ex: people(0)  ,, people() does not return all


    // Key = unsigned integer, Value = Person  |  We'll use the key like a database id
    mapping(uint => Person) public people; // this replaces the people array, for us to store Person structs:  Key = unsigned integer, Value = Person

    uint256 public peopleCount; //helps to have a number for iteration through array

    

    //functions~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    //CRUD/API

    //CREATE
    function addPerson(string memory _firstName, string memory _lastName) public {
        peopleCount += 1;
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }

    //calls

}