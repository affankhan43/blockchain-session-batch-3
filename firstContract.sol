// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.10;

contract FirstContract{

    uint public digit; // default value: 0
    uint16 public immutable a1 = 2000;  // default value: 0
    bool private test = true;  // default value: false
    string public message = "1234";  // default value: ""
    address public myaccount = 0xc8897505b3eDA03D94fAF942Caf290Cf0F3DE014;
    
    constructor(uint _xyz){
        digit = _xyz;
    }

    function getTest() public view returns(bool){

        return test;

    }

    function adder(uint a, uint b) public pure returns(uint){
        return a+b;
    } 

    function mssg() public view returns(string memory){
        return message;
    }

    function mssg2() external view returns (string memory){
        return mssg();
    }

    function setMessage(string memory _newMessage) external {
        message = _newMessage;
    }

} 