pragma solidity ^0.8.18;

contract MyToken {
  string public Token_Name="bhardwaj";
  string public Token_Abbrv="ABS";
  uint public Token_TotalSupply=0;

mapping (address => uint) public Balance;

function mint (address Addr,uint Val) public {
      Token_TotalSupply += Val;
      Balance[Addr] +=Val;
}

function burn (address Addr,uint Val) public {
     if(Balance[Addr]>=Val){
      Token_TotalSupply -= Val;
      Balance[Addr] -= Val;
     }
}
}
