pragma solidity ^0.4.24;

contract test1{
    //private �ֶ������ܺ�Լ���޷�ͨ����ť��ȡ��ֵ
    //public  �ֶ������ܺ�Լ�п���ͨ����ť��ȡ��ֵ
    int8 public i8 = 100;
    int  public i256 = 256;
    
    //constant����view���������޸ĺ����ڱ�����ֵ
    function add() public view returns(int){
        return i8+i256;
    }
    
    function mins() private constant returns(uint256){
        return uint256(i256-i8);
    }
    //pure û��ʹ�����ܺ�Լ�е�״̬����
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