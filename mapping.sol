// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract myPoints {
    mapping (address => uint) public balances;

    function earnPoints(uint _amount) public {
        balances[msg.sender] += _amount;
    }

 function checkBalances(address _user ) view public returns (uint) {
    return balances[_user];
 }
}