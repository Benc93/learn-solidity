// Third contract pushed to the testnet blockchain
// This covers simple & advanced variables in Solidity

// must include the version requirement in order for contract code to compile
pragma solidity ^0.4.6;

contract Example7{


	// Ethereum-specific object called "Struct" so you can define your own object

	struct Student{
		// Normal string, passed in from the constructor function above ^
		string studentName;
		// Positive-only integer:
		uint studentAge;
		// Simply an on/off switch (Boolean = True or false):
		bool active;

	}

	// Declaring Fee variable
	uint256 public fee;

	// this variable maps the ether address to the Student's name 
	mapping(address=>Student) public myStudents;

	// Register to my school
	// Set a registration fee


	function Register(
		string _typeYourName,
		uint _enterYourAge){

		if (msg.value == fee){

			// Register the student 
			myStudents[msg.sender] = Student({

			studentName: _typeYourName,
			studentAge: _enterYourAge,
			active: true,

			});
		}else{
			throw;
		}

		

	}
    
    function SetRegistrationFee(uint256 _fee){
		fee = _fee;
	}
	
}



