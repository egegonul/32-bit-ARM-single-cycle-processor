module controller(input clk,input [1:0] op, input [5:0] funct, input [3:0] ALUflags, input[1:0] sh,
 output PCSrc,RegWrite,ALUSrc,MemWrite,r_l,output [1:0] MemtoReg,RegSrc,ImmSrc,output reg [1:0] ALUControl);
 

reg [3:0] CPSR;


assign PCSrc=1; //since there is no branch

assign MemtoReg={funct[4:1]==4'b1101,op==1};
assign MemWrite=(op==1)&(~funct[0]);
assign ALUSrc=(op==1)| funct[5];
assign ImmSrc=op;
assign RegWrite=~((op==1)&funct[0]);
assign RegSrc={1'b0,(op==1)&funct[0]};
assign r_l= (funct[4:1]==4'b1101)&sh[0];


always @(*)          
	if(op==0)
		case (funct[4:1])
			4'b0000: ALUControl=2'b10;  //AND op
			4'b0100: ALUControl=2'b00;  //ADD op
			4'b0010: ALUControl=2'b01;  //SUB op
			4'b1100: ALUControl=2'b11;  //ORR op
			4'b1010: ALUControl=2'b01;  //CMP op
		endcase


always @(posedge clk)  //set the flags and update the CPSR
if((funct[4:1]==4'b1010)&ALUflags[2])	
	CPSR<=ALUflags;



endmodule