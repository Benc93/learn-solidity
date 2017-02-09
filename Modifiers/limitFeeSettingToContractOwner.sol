pragma solidity ^0.4.6;

contract ownedByCryptoUni{
	
	string public uniName = "Crypto Uni";

	address public owner;

	function ownedByCryptoUni(){
		owner = msg.sender;
	}

	// Limits the use of fee setting to the contract owner in ethereumCourse
	modifier onlyOwner{
 
	    if (msg.sender != owner){ // If the sender of the message is not the owner, throw.
	      throw;
	    }else{ 
	      _;
    	 }
    }


    // This function mutes the contract, as it cannot be deleted from the blockchain (same same)
	function killTheContract() onlyOwner {
		suicide(owner);
	} 	
}


// This contract will inherit all the variables and functionality of it's owner contract
contract ethereumCourse is ownedByCryptoUni{

	struct Student{
		string studentName;
		uint studentAge;
		bool active;

	}

	uint256 public fee;

	mapping(address=>Student) public myStudents;

	// 1. Register to my school
	// 2. Set fee for registration

	function Register(
		string _typeYourName,
		uint _whatIsYourAge){

		if (msg.value == fee){
		// register the student
		myStudents[msg.sender] = Student({
			studentName: _typeYourName,
			studentAge: _whatIsYourAge,
			active: true
			});		
		}else{
			throw;
		}

	}

	// Adds a condition to fee setting 
	modifier setRegistrationFeeOnlyAfter10Mins{

    	if (now < 1486602822 + 10 minutes){
    		throw;
    	}else{
    		_;
    	}
    }


	// Allows only the contract owner to set the fee of the contract, and sets the fee only after 10 minutes
	function setRegistrationFee(uint256 _fee) onlyOwner setRegistrationFeeOnlyAfter10Mins{
		fee = _fee;
	}

}