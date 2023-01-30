// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Structures {
    //constructor

    //properties~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    //structs - we can use any data types & combine 
    struct Person {
        string _firstName;
        string _lastName;
    }

    //arrays - where we want to store structs
    Person[] public people;
    // this is an array of type person called people
    // we can reference the array by the index we wish to call;  ex: people(0)  ,, people() does not return all

    uint256 public peopleCount; //helps to have a number for iteration through array


    //functions~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    //CRUD/API

    //CREATE
    function addPerson(string memory _firstName, string memory _lastName) public {
        people.push(Person(_firstName, _lastName));
        peopleCount += 1;
    }

    //calls
    
}