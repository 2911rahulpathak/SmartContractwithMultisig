// The error will show we have multiple SPDX License Identifier
// Normal Functions

// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract FunctionIntro {
    //by default visiblity is internal only they inside the contract can view
    uint age = 20;

    function add(uint _x, uint _y) public returns (uint256) {
        return _x + _y;
    }
}

// Pure Functions

// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract FunctionIntro {
    //by default visiblity is internal only they inside the contract can view
    uint age = 20;

    function add(uint _x, uint _y) public pure returns (uint256) {
        //we declare a function as pure when it is not changing the val of state variable
        return _x + _y;
    }
    /*
    
    
      */
}

// View & internal function

// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract FunctionIntro {
    //by default visiblity is internal only they inside the contract can view
    uint age = 20;

    function add(uint _x, uint _y) public pure returns (uint256) {
        //we declare a function as pure when it is not changing the val of state variable
        return _x + _y;
    }

    function changeAge() public {
        age += 1;
    }

    function getAge() public view returns (uint256) {
        return age; //here without public state var we accessed it!
    }

    function fun() internal {
        //code to execute
    }
}

// Remove internalfunction

// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract FunctionIntro {
    //by default visiblity is internal only they inside the contract can view
    uint age = 20;

    function add(uint _x, uint _y) public pure returns (uint256) {
        //we declare a function as pure when it is not changing the val of state variable
        return _x + _y;
    }

    function changeAge() public {
        age += 1;
    }

    function getAge() public view returns (uint256) {
        return age; //here without public state var we accessed it!
    }

    function fun() public {
        //code to execute
        //We are paying gas
    }
}

/*
View: Readonly -> Blockchain,state var or Global var
Pure-> No read No write
Simple-> change state var
*/
