pragma solidity ^0.4.6;

contract child {

	string public childName;
	uint256 public childAge;
	string public childLocation;

	function setChildName (string _name){
		childName = _name;
	}

	function setChildAge (uint256 _age){
		childAge = _age;
	}

	function setChildLocation (string _location){
		childLocation = _location;
	}
}

contract parent {

	address public yourChildAddress;

	function parent(address _addressOfTheChildContract){
		yourChildAddress = _addressOfTheChildContract;
	}

	function nameYourChild (string _myChildName){
		child myChild = child(yourChildAddress);
		myChild.setChildName(_myChildName);
	}

	function setChildAge (uint256 _myChildAge){
		child myChild = child(yourChildAddress);
		myChild.setChildAge(_myChildAge);
	}

	function setChildLocation (string _myChildLocation){
		child myChild = child(yourChildAddress);
		myChild.setChildLocation(_myChildLocation);
	}
}

// Child address 0xeb7B1C1fbD1844E9e399767cb1bC154fcF4Ef049