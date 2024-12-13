//SPDX-License-Identifier: GPL - 3.0

pragma solidity >=0.5.0 < 0.9.0;

contract eenum
{
    enum user{allowed, not_allowed, wait}

    user public u1=user.allowed;
    user public u2=user.not_allowed;
    user public u3=user.wait;
// we use enum when there is small set and we want to denote numbers by names

    uint public lottery=1000;
    function owner() public {
        if (u1==user.allowed)
        {
            lottery=0;
        }
    }

    function changeOwner() public {
        u1=user.not_allowed;
    }

}