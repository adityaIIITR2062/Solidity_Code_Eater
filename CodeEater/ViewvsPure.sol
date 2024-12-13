// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 < 0.9.0;

contract local
{
    uint public age =10;

    //view -- only read no write wrt state variable
    //pure -- no read no write wrt state variable

    function getter () public view returns(uint)
    {
       return age;
    }
}