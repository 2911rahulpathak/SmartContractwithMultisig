// SPDX-License-Identifier: MIT
pragma solidity >0.5.0 <0.9.0;

interface ERC20 {
    //It contains min of 6 funs and 2 events
    function totalSupply() external view returns (uint256);

    function balanceOf(address _owner) external view returns (uint256 balance); //every function is declared external

    function transfer(
        address _to,
        uint256 _value
    ) external returns (bool success);

    function transferFrom(
        address _from,
        address _to,
        uint256 _value
    ) external returns (bool success);

    function approve(
        address _spender,
        uint256 _value
    ) external returns (bool success);

    function allowance(
        address _owner,
        address _spender
    ) external view returns (uint256 remaining);

    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(
        address indexed _owner,
        address indexed _spender,
        uint256 _value
    );
}

//gpay scan is -> transfer function
//big amount -> checkque
//in check we give approval -> eg: 5 lakh rupees
contract Token is ERC20 {
    //create some variabels
    string public name = "Block";
    string public symbol = "BLK";
    //decimal,founder,totalSupply
    uint public decimal = 0;
    address public founder;
    uint public totalSupply;

    mapping(address => mapping(address => uint)) allowed;
    mapping(address => uint) public balances; //for every address how many tokens does it hold

    constructor() {
        founder == msg.sender;
        totalSupply = 1000;
        //initial level all tokens to founder
        balances[founder] = totalSupply;
    }

    function balanceOf(address _owner) external view returns (uint256 balance) {
        //every function is declared external
        return balances[_owner];
    }

    function transfer(
        address _to,
        uint256 _value
    ) external returns (bool success) {
        //whenver we transfer make a require statement
        require(_value > 0, "You have zero funds");
        require(balances[msg.sender] >= _value, "You dont have funds");
        balances[msg.sender] -= _value;
        balances[_to] += _value;
        emit Transfer(msg.sender, _to, _value);
        return true;
    }

    //approve and transferFroom are connected to each other
    //cashing that cheque
    function transferFrom(
        address _from,
        address _to,
        uint256 _value
    ) external returns (bool success) {
        //check the spender ka amount
        require(_value > 0, "You have zero funds");
        require(balances[_from] >= _value, "You dont have funds");
        require(
            allowed[_from][_to] >= _value,
            "Sender has not authorized to reciever for given amount"
        );
        balances[_from] -= _value;
        balances[_to] += _value;
        return true;
    }

    //writing a checque
    function approve(
        address _spender,
        uint256 _value
    ) external returns (bool success) {
        //here msg.sender will give approval
        require(_value > 0, "You have 0 funds");
        require(balances[msg.sender] >= _value, "You dont have funds");
        //so there is a mapping called allowed
        //one address giving approval to another address of uint amount simple
        allowed[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }

    function allowance(
        address _owner,
        address _spender
    ) external view returns (uint256 remaining) {
        return allowed[_owner][_spender];
    }
}
