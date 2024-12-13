//SPDX-License-Identifier: GPL - 3.0

pragma solidity >=0.5.0 < 0.9.0;

contract pay
{
    address payable user=payable(0x17F6AD8Ef982297579C203069C1DbfFE4348c372);
    function payEther() public payable 
    {

    }
    function getBalance() public view returns(uint)
    {
        return address(this).balance;
    }
    //we make that function payable in which transfer is to be done
    function sendEtherAccount() public 
    {
         user.transfer(1 ether);
    }
 
}