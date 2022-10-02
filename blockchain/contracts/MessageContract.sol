// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;

contract MessageContract{
    uint256 public messageCount = 0;

    struct Message{
        uint256 index;
        string message;
    }
    mapping(uint256 => Message) public messages;
    event MessageCreated(string message, uint256 messageNumber);

    function createMessage(string memory _message) public {
        messages[messageCount] = Message(messageCount,_message);
        messageCount++;
        emit MessageCreated(_message,messageCount-1);
    }
}