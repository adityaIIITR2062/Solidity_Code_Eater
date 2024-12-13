//SPDX-License-Identifier: GPL - 3.0

pragma solidity >=0.5.0 < 0.9.0;

contract memory_vs_storage
{
    string[] public students =['Ravi','Rita','Aman'];

    function mem() public view
    {
        string[] memory s1=students;
        s1[0]='Akash';
    }
    //acts like call by value

    function sto() public 
    {
        string[] storage s1=students;
        s1[0]='Akash';
    }
    //acts like call by reference
 
}