module instruction_memory(input [31:0] ad,output reg [31:0] RD);


reg [31:0] mem [64:0];

initial begin
mem[0]=32'h00865007;  //ADD R5,R6,R7
mem[1]=32'h01859123; //ORR R9,R5,R3
mem[2]=32'h01A018A2; //LSR R1,R2 #17
mem[3]=32'h07871001; //STR R1 [R7+#1]
mem[4]=32'h32494832;
mem[5]=32'h32340943;
mem[6]=32'h34342567;
mem[7]=32'hA2456E2A;
mem[8]=32'h337BC231;
mem[9]=32'h32494832;
mem[10]=32'h3E23F839;
end

always @(*)
	RD=mem[ad];
	
endmodule