module memory(input [31:0] data,ad,input WE,clk, output reg [31:0] RD);

reg [31:0] mem [64:0];

always @(posedge clk)
	if(WE)
		mem[ad]<=data;
		

always @(*)
	RD=mem[ad];
	
endmodule