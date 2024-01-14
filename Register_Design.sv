// Code for Simple Register
module register #(parameter WIDTH = 8) (
input logic clk,
);
input logic rst,
input logic enable,
input logic [WIDTH-1:0] data,
output logic [WIDTH-1:0] out
timeunit
ins
timeprecision 100ps;
always_ff @(posedge clk or negedge rst_)
begin
if (!rst_)
begin
out <= {WIDTH{1'b0}};
end
else if (enable)
begin
out <= data;
end
end
endmodule
