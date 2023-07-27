// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Struct {
    //Structure
    struct Employee {
        string name;
        uint256 age;
        address acc;
    }
    //After defining my data type i.e Employee
    //Now I want to create the var -> emp
    Employee public emp;

    //If you want to set val -> do it using constructor or function
}

// Set values:

// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Struct {
    //Structure
    struct Employee {
        string name;
        uint256 age;
        address acc;
    }
    //After defining my data type i.e Employee
    //Now I want to create the var -> emp
    Employee public emp;

    //If you want to set val -> do it using constructor or function
    Employee[] public emps;

    //Function
    function setValues() public {
        Employee memory emp1 = Employee(
            "Rahul",
            20,
            0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db
        );
        emp = emp1;
    }
}
