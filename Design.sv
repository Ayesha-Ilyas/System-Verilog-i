// Code your testbench here
// or browse Examples
module test;
bit clk;
bit ina;
logic reset;
logic temp;
logic datareg;
initial begin
forever #5 clk=~clk;
end
clocking cb @(posedge clk);
default input #1step output #5;
input ina;
output temp;
output negedge reset;
endclocking
initial begin
@(cb);
//cb.reset <=0;
cb.temp <=0;
@(cb);
cb.reset <= ##1 1;
##1
cb.reset <=0;
cb.temp <=1;
datareg<= cb.ina;
 
end
   initial
    begin
  $dumpfile("dump.vcd");
  $dumpvars;
  #1000
  $finish;
    end  
   
endmodule