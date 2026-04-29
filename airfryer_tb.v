`timescale 1ns/1ps
module airfryer_tb();
  reg D_TB,T_TB,I_TB,F_TB;
  wire CM_TB,HM_TB,FN_TB,WB_TB;
  
  airfryer_top DUT (.CM(CM_TB),.HM(HM_TB),.FN(FN_TB),.WB(WB_TB),.D(D_TB),.T(T_TB),.I(I_TB),.F(F_TB));
  
  initial
      begin
      D_TB=0; T_TB=0; I_TB=0; F_TB=0; #10;
      D_TB=0; T_TB=0; I_TB=0; F_TB=1; #10;
      D_TB=0; T_TB=0; I_TB=1; F_TB=0; #10;
      D_TB=0; T_TB=0; I_TB=1; F_TB=1; #10;
      D_TB=0; T_TB=1; I_TB=0; F_TB=0; #10;
      D_TB=0; T_TB=1; I_TB=0; F_TB=1; #10;
      D_TB=0; T_TB=1; I_TB=1; F_TB=0; #10;
      D_TB=0; T_TB=1; I_TB=1; F_TB=1; #10;
      D_TB=1; T_TB=0; I_TB=0; F_TB=0; #10;
      D_TB=1; T_TB=0; I_TB=0; F_TB=1; #10;
      D_TB=1; T_TB=0; I_TB=1; F_TB=0; #10;
      D_TB=1; T_TB=0; I_TB=1; F_TB=1; #10;
      D_TB=1; T_TB=1; I_TB=0; F_TB=0; #10;
      D_TB=1; T_TB=1; I_TB=0; F_TB=1; #10;
      D_TB=1; T_TB=1; I_TB=1; F_TB=0; #10;
      D_TB=1; T_TB=1; I_TB=1; F_TB=1; #10;
      $stop;
      end
endmodule




  
  
