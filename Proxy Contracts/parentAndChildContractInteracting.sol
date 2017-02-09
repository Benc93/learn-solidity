pragma solidity ^0.4.6;

contract child {

	string public childName;

	function setChildName (string _name){
		childName = _name;
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
}

// Child address 0xeb7B1C1fbD1844E9e399767cb1bC154fcF4Ef049