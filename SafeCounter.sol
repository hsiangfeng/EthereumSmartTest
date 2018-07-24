pragma solidity ^0.4.12; //宣告版本

//import調用模組
import "github.com/OpenZeppelin/zeppelin-solidity/contracts/math/SafeMath.sol";

contract SafeCounter
{
    using SafeMath for uint; //型態喧染
    
    uint private count = 0;
    
    function getCount() public constant returns (uint) //取值函數
    {
        return count;
    }
    function imcount() public //安全加值
    {
        count = count.add(1);
    } 
    function decrcunt()public //安全減值
    {
        count = count.sub(1);
    }
    function mulcount() public
    {
        count = count.mul(2);
    }
    function divcount() public
    {
        count = count.div(2);
    }
}