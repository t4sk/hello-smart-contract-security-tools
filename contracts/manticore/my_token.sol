
pragma solidity >=0.4.24 <0.6.0;
contract Token{
    mapping(address => uint) public balances;

    constructor() public{
        balances[msg.sender] = 100;
    }

    function transfer(address to, uint val) public{
        // check for overflow
        if(balances[msg.sender] >= balances[to]){
            balances[msg.sender] -= val;
            balances[to] += val;
        }
    }
}