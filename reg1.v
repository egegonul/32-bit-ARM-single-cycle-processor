module reg1 #(parameter W=2) (input clk,reset,input [W-1:0] data,
output reg [W-1:0] A);


always @(posedge clk)
begin
	if(reset) A<=0;
	else A<=data;
end
		
endmodule