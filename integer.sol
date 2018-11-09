pragma solidity ^0.4.24;

contract test1{
    //private 字段在智能合约中无法通过按钮获取其值
    //public  字段在智能合约中可以通过按钮获取其值
    int8 public i8 = 100;
    int  public i256 = 256;
    
    //constant或者view表明不会修改函数内变量的值
    function add() public view returns(int){
        return i8+i256;
    }
    
    function mins() private constant returns(uint256){
        return uint256(i256-i8);
    }
    //pure 没有使用智能合约中的状态变量
    function isEqual(int a,int b) public pure returns(bool){
        return a == b;
    }
    
    function setValue(int8 num) public payable{
        i8 = num;
    }
    function setData(int8 num) public constant{
        i8 = num;
    }
}