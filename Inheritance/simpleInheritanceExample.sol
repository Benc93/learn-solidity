pragma solidity ^0.4.6;

contract ownedByCryptoUni{
	string public uniName = "Crypto Uni"
}

contract ethereumCourse is ownedByCryptoUni{

	struct Student{
		string studentName;
		uint studentAge;
		bool active;

	}

	uint256 public fee;

	mapping(address=>student) public myStudents;

	// 1. Register to my school
	// 2. Set fee for registration

	function Register(
		string: _typeYourName,
		uint: _whatIsYourAge,){

		if (msg.value == fee){
		// register the student
		myStudents[msg.sender] = student({
			studentName: _typeYourName,
			studentAge: _whatIsYourAge,
			active: true
			});		
		}else{
			throw;
		}

	}

	function setRegistrationFee(uint256 _fee){
		fee = _fee;
	}

}