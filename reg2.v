module reg2 #(parameter W=32) (input clk,reset,WE,input [W-1:0] data,
output reg [W-1:0] A);

always @(posedge clk)
begin
	if(reset) A<=0;    
	else if(WE) A<=data;  //data can be loaded only if write is enabled
end
endmodule	
	
