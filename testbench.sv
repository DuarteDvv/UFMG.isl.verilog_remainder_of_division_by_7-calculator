module testbench_mod7_reminder;
  reg A, B, C, D; //Registers (1bit) for each input
  wire X1, X2, X3; 

  //Instance of mod7_reminder
  mod7_reminder module_under_test ( 
    .A(A), .B(B), .C(C), .D(D),
    .X1(X1), .X2(X2), .X3(X3)
  );

  initial begin
    
    // Generate waves file
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench_mod7_reminder);
    
    // Test cases
    $display("Time\tA B C D\tX1 X2 X3");
    $display("-------------------------");

    {A, B, C, D} = 4'b0010; #10;
    $display("%0t\t%b %b %b %b\t%b %b %b", $time, A, B, C, D, X1, X2, X3);
    
    {A, B, C, D} = 4'b1011; #10;
    $display("%0t\t%b %b %b %b\t%b %b %b", $time, A, B, C, D, X1, X2, X3);
    
    {A, B, C, D} = 4'b1111; #10;
    $display("%0t\t%b %b %b %b\t%b %b %b", $time, A, B, C, D, X1, X2, X3);

    {A, B, C, D} = 4'b1010; #10;
    $display("%0t\t%b %b %b %b\t%b %b %b", $time, A, B, C, D, X1, X2, X3);

    {A, B, C, D} = 4'b1100; #10;
    $display("%0t\t%b %b %b %b\t%b %b %b", $time, A, B, C, D, X1, X2, X3);


    $finish;
  end
endmodule
