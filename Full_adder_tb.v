`timescale 1ns / 1ps

module full_adder_tb();
    reg a,b,cin;
    wire sum,carry;
    
    fulladder dut(a,b,cin,sum,carry);
    
    initial 
    begin 
            a=0; b=0; cin=0;
     #10    a=0; b=0; cin=1;
     #10    a=0; b=1; cin=0;
     #10    a=0; b=1; cin=1;
     #10    a=1; b=0; cin=0;
     #10    a=1; b=0; cin=1;
     #10    a=1; b=1; cin=0;
     #10    a=1; b=1; cin=1;
     #10       
     $finish;       
    end 
    

endmodule