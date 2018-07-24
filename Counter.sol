/*
* Jeff區塊鏈初階教學
*/
pragma solidity ^0.4.12; //宣告Solidity版本

contract Counter //加減器合約本體
{
     uint private count = 0;//宣告私有變數
     
     function getCount() public constant returns (uint) //取得常數函數
     {
         return count;
     }
     function increment() public // 增值函數
     {
         count += 1;
     }
     function decrement() public  //減值函數
     {
         count -= 1;
     }
}