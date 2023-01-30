// SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.13;

// 1. Creating a new member contract
contract Member_Contract {

    // 2. Declaring our smart contract state variables
    string public memberName;
    string public memberDistrict;
    string public memberAge;

    // CREATE
    // 3.  Creating a function to set members
    function setMember(
        string memory newMemberName,
        string memory newMemberDistrict,
        string memory newMemberAge
        ) 
        public {
            memberName = newMemberName;
            memberDistrict = newMemberDistrict;
            memberAge = newMemberAge;
        }

    // READ
    // 4.  Creating a function to fetch/get members
    function getMember() public view returns (
        string memory,
        string memory,
        string memory
    ) 
    {
        return (memberName, memberDistrict, memberAge);
    }
}

// Backend
// 1.  Create contract
// 2.  Get ETH metamask connection
// 3.  Test smart contract on goerli network with fake ETH

// Frontend
// 1.  Installing ethers.js, javascript script, css stylesheet
// 2.  Create a form for inputs