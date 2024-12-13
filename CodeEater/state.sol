// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 < 0.9.0;

contract State
{
    uint public age; //age=10;
    // default value of uint variablr will be 0

//Initialising age
    // constructor() public {
    //     age=10;
    // }

    function setAge()
 public {
     age=10;
 }
}


