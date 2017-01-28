// First Contract to be committed to the Ethereum testnet. 
// A simple contract that allows a user to define the name of a company and record the naming on the blockchain.

// must include the version requirement in order for contract code to compile
pragma solidity ^0.4.6;

contract Example{

    string public brandName;

    function Example(string yourCompanyName){

        brandName = yourCompanyName;

    }

}
