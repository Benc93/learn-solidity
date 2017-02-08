// Third contract pushed to the testnet blockchain
// This covers simple & advanced variables in Solidity

// must include the version requirement in order for contract code to compile
pragma solidity ^0.4.6;

contract Example3{

	// Examples of simple variables

	string public one = "one";
	int public two = 2;
	uint public three = 3;
	uint256 public four = 4;

	// Slightly more advanced variables

	string[] public studentName;

	// Constructor function for the Student Name variable. 

	function Example() {

		studentName[studentName.length++] = "Benny";
		// alternatively...
		studentName.push("Benny Boy");
	}


}



