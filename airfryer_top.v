module airfryer_top(CM,HM,FN,WB,D,T,I,F);
  input D,T,I,F;
  output CM,HM,FN,WB;
  
  wire nD,nI,nF;
  
  not U0(nD,D);
  not U1(nI,I);
  not U2(nF,F);
  
  and U3(CM,nF,nD,I);
  and U4(HM,nF,nD,nI);
  and U5(FN,nF,nD);
  
  assign WB = F;

endmodule
  
  
  
  
  
