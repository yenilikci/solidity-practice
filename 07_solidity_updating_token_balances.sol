pragma solidity ^0.8.4;

contract CryptoToken {
    // what if we want to store addresses and then give each address a spesific
    // number or index?

    // mapping: acts like a dictionary to store data
    // mapping takes a key which maps to a value
    // mapping(key => value) public mapName;
    // write a public map that takes the key of an address
    // to the value of an integer called balances
    mapping(address => uint) public balances;

    //we only want the msg.sender (the current caller)
    //to be able to mint tokens
    address public minter;

    //events allow clients to react to specific contract
    //changes that you declare (one way logging of transactions)
    //types of events: sent transfer allow
    //events take two steps: 1. is setting it up
    //2. emitting the event
    //preconditioned arguments (inputs) we should pass
    event Sent(address from, address to, uint amount);


    constructor() {
        minter = msg.sender;
    }


    //Build a minting function to mint tokens

    //MORE ON FUNCTIONS
    //we give a function a specific set of instructions
    //and then we call that function to execute those instructions
    //and that's how we get our code to do things!
    //functions are self contained modules of code
    //that perform tasks for us

    function mint(address receiver, uint amount) public {
        //i want to make sure that the only person who can mint tokens is the owner of this contract

        //requirement method in solidity
        //requires evaluates the truthiness within its paranthesis
        require(msg.sender == minter);

        //sets the amount to a specific adress
        // balances[receiver] = amount;

        //if an address already has 7 tokens and we mint
        //again to the same address 3 more token what will
        balances[receiver] += amount;
    }

}
