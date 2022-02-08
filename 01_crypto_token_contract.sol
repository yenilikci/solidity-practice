// pragma solidity defines our compiler version for solidity
pragma solidity ^0.8.4;

// the very first step to write a smart contract
// in solidity everything is explicity declared
contract CryptoToken {

    // whenever you write any expression in solidity
    // you have to use a semicolon to close expression
    uint private tokens = 400;

    uint private totalSupply = 7;
    address public sender;

    // we only want the msg.sender (the current caller)
    // to be able to mint tokens
    address public minter;


    // mission: we want our crypto token mint tokens
    // we want a datatype for storing integers (tokens)
    // we can use the uint (uassigned integer) variable

    // in programming we have datatypes to store and change data
    // and we create them by explicity declaring them in solidity

    // it can mint tokens

    // all the code to write smart contracts go in here
    // objects in programming are an abstract datatype
    // with the ability for inheritance

}
