pragma solidity ^0.4.6;

contract mortal{

  address public owner;
  string firstName;
  string lastName;
  string public fullName;
  string DOB;
  bool public active;
  uint certificationLevel;




  function mortal(string _firstName, string _lastName, string _DOB){
    owner = msg.sender;
    firstName = _firstName;
    lastName = _lastName;
    // fullName = _firstName & " " & _lastName;  ????
    DOB = _DOB;
    active = false;
    certificationLevel = 0;
  }

  modifier onlyOwner{
    if (msg.sender == owner){
        _;
    }else{
        throw;
    }

  }

  function kill() onlyOwner{
    suicide(owner);
  }
  
}

contract newBrand is mortal{

  string public brandName;

  function newBrand(string _brandName){
    brandName = _brandName;
  }

  function changeBrandName(string _newBrandName) onlyOwner {
    brandName = _newBrandName;
  }

}