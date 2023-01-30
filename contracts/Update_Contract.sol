pragma solidity ^ 0.8.13;

contract UpdateContract {

// properties
// ***When public, Solidity provides value() function for free
string public value;
string public value = "myValue";  // assign default value
string public constant value = "myValue"; // does not need constructor when it is a constant

// constructor
constructor() public {
    state = State.Waiting;  //set default state of contract
}

// functions
// API/CRUD
// SET
// function set(string memory _value) public {
//    value = _value;
// }

// GET
function get() public view returns(string memory) {
    return value;
}

// UPDATE state to ACTIVE
function activate() public {
    state = State.Active;
}

// READ boolean if state is active
function isActive() public view returns(bool) {
    return state == state.Active;
}

}





// DATA TYPES REVIEW
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
bool public myBool = true;

int public myInt = 1;

// if do not want negative integers
uint public myUint = 1;

// we can specify the number of bits , default = 256
uint256 public myUint256 = 9999;

//we can restrict to 8 bits
uint8 public myUint8 = 8;

// ENUMS
// will help keep track of contract's active state
enum State { Waiting, Ready, Active }

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

State public state;

}
