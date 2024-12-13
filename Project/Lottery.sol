//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Lottery{

    address public manager;
    address payable[] public participants; //one player will recieve money at end

    constructor()
    {
        manager = msg.sender; //global variable. Here the contracts address gets transferred to manager making him the owner
    }

    receive () payable external //recieve is usable only once and is always used with payable & external
    {
        require(msg.value == 1 ether);
        participants.push(payable(msg.sender));
    }

    function getBalance() public view returns(uint)
    {
        require(msg.sender == manager,"You are not the manager");
        return address(this).balance;
    }

    //Random number generator

    function random() internal view returns(uint)
    {
       return uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp, participants.length)));
    }

    //assigning random number to the payable[] array

    function pickWinner() public //view returns(address)
    {

        require(msg.sender == manager);
        require (participants.length >= 3);

        uint r = random();
        uint index = r % participants.length; //answer(remainder) will always be less than participants.length (no. of participants)
        
        address payable winner;

        winner = participants[index];
        // return winner;
        winner.transfer(getBalance());

        participants = new address payable[](0);
    }

}
