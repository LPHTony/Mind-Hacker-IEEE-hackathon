pragma solidity 0.8.7;

contract Donation {

    address public owner; //charity of the fund raising event

    struct ProjectProgress{
        uint[] targets; //target of project progress to be met
        uint[] donationToGive; //precentage of donation that will be given to the charities when each target is met
        uint amountRaised; //Total among raised in the flag selling event
        uint progressIndicator; //Quantiative factors that used to show the project progress (e.g. poverty rate, literacy rate)
    }


    // When 'VendingMachine' contract is deployed:
    // 1. set the deploying address as the owner of the contract
    // 2. set the deployed smart contract's cupcake balance to 100
    constructor() {
        owner = msg.sender;
    }

    // Allow the owner to increase the smart contract's cupcake balance
    function requestTransfer(uint amount) public {
        require(msg.sender == owner, "Only the owner can request fund transfer.");
        //Update the progressIndicator from database or platform (such as Oracle)
        //Check whether the indicator meets any targets
        //If some target is met, the corresponding value in donationToGive will be sent to the Abelian wallet of the charity
        //delete the fulfillled target and donation given in the array
    }
}
