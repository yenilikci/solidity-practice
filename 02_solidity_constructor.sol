pragma solidity ^0.8.4;

contract CryptoToken {
    uint private tokens = 400;
    uint private totalSupply = 7;
    address public sender;
    address public minter;

    // a constructor is a special type of function
    // that gets called immediately upon deployment
    // the constructor can only be called one time

    // a function is just a set of instrucions bundled together
    constructor() {
        minter = msg.sender;
    }

}
