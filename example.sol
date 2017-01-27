// First Contract to be committed to the Ethereum testnet. 
// A simple contract that allows a user to define the name of a company and record the naming on the blockchain.

contract Example{

    string public brandName;

    function Example(string yourCompanyName){

        brandName = yourCompanyName;

    }

}
