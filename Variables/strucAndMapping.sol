// Third contract pushed to the testnet blockchain
// This covers simple & advanced variables in Solidity

// must include the version requirement in order for contract code to compile
pragma solidity ^0.4.6;

contract Example4{

	string[] public studentName;
	string public one = "one";
	int public two = 2;
	uint public three = 3;
	uint256 public four = 4;

	// Ethereum-specific object called "Struct" so you can define your own object

	struct Student{
		// Normal string, passed in from the constructor function above ^
		string studentName;
		// Positive-only integer:
		uint studentAge;
		// this variable must be a valid address, and is checked automatically when compiled:
		address studentAddress;
		// Simply an on/off switch (Boolean = True or false):
		bool active;

	}

	// Declaring a new variable using the struct object above below :
	Student public dreadPirate;

	// this variable maps the ether address to the Student's name 
	mapping(address=>Student) public myStudents;

	// Constructor function for the Student variables: 
	function Example(){

		studentName[studentName.length++] = "Dread";
		// alternatively (same same but different)...
		studentName.push("Pirate");
		dreadPirate.studentName = "This is me!";
		dreadPirate.studentAge = 31;
		dreadPirate.studentAddress = msg.sender;
		dreadPirate.active = true;

	}

}



