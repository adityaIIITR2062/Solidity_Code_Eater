//SPDX-License-Identifier: GPL - 3.0

pragma solidity >=0.5.0 < 0.9.0;

contract mappping
{
    mapping (uint=>string) public roll_no;

    function setter(uint keys, string memory value) public
    {
        roll_no[keys]=value;
    }
}

//Different wrt array as in array we need to definr the empty spaces also in case of 
//irregular data but in case of mapping that probleem doesn't occur. 
//Eg. roll_no[2] and roll_no[100]