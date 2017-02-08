// Third contract pushed to the testnet blockchain
// This covers simple & advanced variables in Solidity

// must include the version requirement in order for contract code to compile
pragma solidity ^0.4.6;

contract Example3{

	// Examples of simple variables

	string public one = "one";
	int public two = 2;
	// Only allows +ive integers:
	uint public three = 3;
	// Turns all integers into a 256bit variable:
	uint256 public four = 4;

	// Slightly more advanced variables

	string[] public studentName;


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

	Student public dreadPirate;

	// Constructor function for the Student Name variable: 

	function Example () {

		studentName[studentName.length++] = "Dread";
		// alternatively (same same but different)...
		studentName.push("Pirate");
		dreadPirate.studentName = "This is me";

	}

}



