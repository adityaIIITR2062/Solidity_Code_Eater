// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 < 0.9.0;

contract local
{
    //State Variables here
    function store() pure public returns(uint)
    {
        string memory name="ravi"; //string is by default stored in contract thus conflicts so we use memory keyword
        uint age =10; //Local Variables here
        return age;

 }
}