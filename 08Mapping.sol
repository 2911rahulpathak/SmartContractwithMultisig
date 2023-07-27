// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Struct {
    mapping(uint => string) public table;

    function setValues() public {
        table[31] = "rahul";
    }
}

// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Struct {
    mapping(uint => string) public table;

    function setValues() public {
        table[31] = "rahul";
        table[0] = "start";
    }

    function getValues() public view returns (string memory) {
        return table[0];
    }
}

// Address -> struct

// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
struct donor {
    string name;
    uint age;
    string add;
    uint don;
}

contract Map {
    mapping(address => donor) public acc_info;
}
//put a address
