// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Event {
    //log into blockchain at low gas
    //It's main use is for Output in dapps -> User interact with button ->It will emit/log o/p to user
    //Trnx log
    //Indexing -> Dapps
    // event balance(address,string,uint); // this type of data I want to put on Blockchain
    // You can add name besides type
    event balance(address account, string message, uint val);

    //User should tell me what is the amount he has
    // Type of function-> view,pure or simple(transaction)(we want to put data on blockchain)(They dont return anyting)
    function setData(uint _val) public {
        emit balance(msg.sender, "has value", _val);
    }
}

// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Event {
    //log into blockchain at low gas
    //It's main use is for Output in dapps -> User interact with button ->It will emit/log o/p to user
    //Trnx log
    //Indexing -> Dapps
    // event balance(address,string,uint); // this type of data I want to put on Blockchain
    // You can add name besides type
    event balance(address account, string message, uint val);

    //User should tell me what is the amount he has
    // Type of function-> view,pure or simple(transaction)(we want to put data on blockchain)(They dont return anyting)
    function setData(uint _val) public {
        emit balance(msg.sender, "has value", _val);
    }
    //Your event is stored on transaction log
    /* 
    When you make dapps -> You acccess data from there and display it -> It makes it interactive
     */
}
