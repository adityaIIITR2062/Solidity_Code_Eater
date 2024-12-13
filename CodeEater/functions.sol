// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 < 0.9.0;

contract local
{
    uint age =10;

    // if we write uint public age =10; then we dont require getter function. It already makes one


    function getter() public view returns(uint)
    {
        return age;
    }

    function setter(uint newage) public
    {
       age=newage;
    }
}