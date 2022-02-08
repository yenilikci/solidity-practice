pragma solidity ^0.8.4;

contract CryptoToken {
    uint private tokens = 400;
    uint private totalSupply = 7;
    address public sender;
    address public minter;

    // what if we want to store addresses and then give each address a spesific
    // number or index?

    // mapping: acts like a dictionary to store data
    // mapping takes a key which maps to a value
    // mapping(key => value) public mapName;
    // write a public map that takes the key of an address
    // to the value of an integer called balances
    mapping(address => uint) public balances;

    constructor() {
        minter = msg.sender;
    }

}
