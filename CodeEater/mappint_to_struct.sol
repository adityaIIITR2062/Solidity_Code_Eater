//SPDX-License-Identifier: GPL - 3.0

pragma solidity >=0.5.0 < 0.9.0;

contract struct_mapping
{
    struct Student
    {
        string name;
        uint calss;
    }
    mapping (uint=>Student) public data;

    function setter(uint _roll, string memory _name, uint _class) public
    {
        data[_roll]=Student(_name,_class);
    }
    //Here _roll targets two keys _name and _class
    // The key cannot be types mapping ,dynamic array ,enum and struct.
}