// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mapping_Contract {
    // Mappings
    mapping(uint => string) public names;  // we can use this to add data to blockchain since myMapping is a state variable
    mapping(uint => Book) public books;
    mapping(address => mapping(uint => Book)) public myBooks;  //key is the address of the owner of the book 'library'/map
    //value is the mapping of all the books belonging to this account

    struct Book {  // this is like a table with columns title and author
        string title;
        string author;
    }

    constructor() {  // is run once and only once when smart contract is deployed on blockchain
        names[1] = "Adam";
        names[2] = "Bruce";
        names[3] = "Carl";
    }

    function addBook(uint _id, string memory _title, string memory _author) public {  //local variables use ___before
        books[_id] = Book(_title, _author);  //adds the book to the corresponding index
    }

    function addMyBook(uint _id, string memory _title, string memory _author) public {  
        myBooks[msg.sender][_id] = Book(_title, _author);  //msg is a global variable in every eth contract
        //msg.sender is the address of whoever called the Ethereum Smart Contract function 'addMyBook'
    }
}