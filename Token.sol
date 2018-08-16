pragma solidity ^0.4.21; // 宣告版本

// 建立Token
contract Token{
    mapping(address => uint256) private balances; // uint8,uint16,uint32,uint64...
    
    // 查看函數
    // _account > _ 用途只是用在6~8行不會在程式外使用
    function getBalance(address _account) public constant returns(uint256)
    {
        return balances[_account];
    }
    
    // 構造函數
    // 舊寫法，簡易寫法
    // 新寫法function Token改constructor
    // _initialSupply > 說明發幣總數量
    function Token(uint256 _initialSupply)public
    {
        balances[msg.sender] = _initialSupply;
        //製造uint256錯誤 > ** 代表次方
        //balances[0x84e0e88f973fa499a487a32a79e5e5fc05a45c44]=2**256-1;
        //msg.sender 呼叫該函數的人/或其他合約>自己
    }
    
    // 簡易轉帳 ，但容易出現overflow漏洞(溢出)
    // _to收款人
    // _value轉帳金額
    function transfer(address _to,uint256 _value)public
    {
        //require 驗證有效性，意思就是我必須大於我轉出的數量
        require(balances[msg.sender] >= _value);
        //require 驗證對方是否有收到錢
        require(balances[_to] + _value >= balances[_to]);
        balances[msg.sender] -= _value;
        balances[_to] += _value;
    }
}