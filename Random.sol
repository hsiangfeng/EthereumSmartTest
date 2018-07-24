pragma solidity ^0.4.21;

contract Random
{
    function getBlokNum() public constant returns(uint)
    {
        return block.number;
    }
    function getNowTime() public constant returns(uint)
    {
        return block.timestamp;
    }
    function getNow() public constant returns(uint)
    {
        return now;
    }
    function randNow(uint min,uint max) public constant returns(uint)
    {
        return getNow() % (max - min) + min;
    }
    function randHash(uint min,uint max) public constant returns(uint)
    {
        bytes32 hash = keccak256(getNow());
        return (uint(hash)%(max-min))+min;
    } 
    
}