module mod7_reminder(A,B,C,D,X1,X2,X3); //Assignature
  
  input A,B,C,D; 
  // bits of the input number where A is the most significant bit
  
  output X1,X2,X3; 
  // remainder bits where X1 is the most significant bit
  
  //Assign the value of each output
  
  //BC' + A'BD' + AB'CD
  assign  X1 = (B & ~C) | (~A & B & ~D) | (A & ~B & C & D);
  
  //AC'D + A'B'C + B'CD' + A'CD'
  assign  X2 = (A & ~C & D) | (~A & ~B & C) | (~B & C & ~D) | (~A & C & ~D);
  
  //AC'D' + AB'D' + A'C'D + A'B'D + ABCD
  assign  X3 = (A & ~C & ~D) | (A & ~B & ~D) | (~A & ~C & D) | (~A & ~B & D) | (A & B & C & D);
  
  
endmodule