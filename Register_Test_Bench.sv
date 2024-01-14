module register_test;
timeunit ins;
timeprecision 100ps;
logic [7:0] out;
Logic [7:0] data;
Logic enable;
Logic rst_ =1'b1;
Logic clk = 1'b1;
define PERIOD 10
always
#(PERIOD/2) clk = ~clk;
// INSTANCE register
register r1 (.enable (enable), .clk(clk), .out (out), .data(data), .rst_(rst_));
// Monitor Results
initial
begin
$timeformat (9, 1, ns", 9 );
$monitor("time=%t enable=%b rst_=b data=th out=sh",
$time,enable, rst_, data, out );
#(`PERIOD * 99)
$display("REGISTER TEST TIMEOUT" );
$finish;
end
// Verify Results
task expect_test (input [7:0] expects);
if (out !== expects )
begin
end
$display("out-b, should be %b", out, expects ); $display("REGISTER TEST FAILED" );
$finish;
endtask
initial
begin
@(negedge clk)
{rst, enable, data} = 10'b1_X_XXXXXXXX; @(negedge clk) expect test ( 8'hXX );
{rst, enable, data= 10'be_X_XXXXXXXX; @(negedge clk) expect test (8'hee); 
{rst, enable, data = 10'b1_0_XXXXXXXX; @(negedge clk) expect test (8'hee); 
{rst, enable, data = 10'b1_1_10101010; @(negedge clk) expect test ( 8'hAA); 
{rst enable, data } = 10'b1_0_01010101; @(negedge clk) expect test ( 8'hAA ); 
{rst, enable, data} = 10'be_X_XXXXXXXX; @(negedge clk) expect_test (8'hee ); 
{rst, enable, data = 10'b1_0_XXXXXXXX; @(negedge clk) expect test (8'h00); 
{rst, enable, data } = 10'b1_1_01010101; @(negedge clk) expect_test (8'h55 ); 
{rst, enable, data} = 10'b1_0_10101010; @(negedge clk) expect test (8h55 ); 
$display ("REGISTER TEST PASSED" );
$finish;
end
endmodule
