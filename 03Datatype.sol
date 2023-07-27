// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Student {
    /* Data types: val
   bool,string,uint256,address
     */
    string public name;
    bool public pass;
    uint public marks; //storage -> cost -> +ve
    address public addr;
}

//Refernce: Arrays Structs
//It stores address where data is stored
