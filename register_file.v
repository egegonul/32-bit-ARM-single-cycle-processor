module register_file #(parameter W=32) (input clk,reset,WE,input [3:0] A1,A2,A3,input [W-1:0] data,R15,output reg [W-1:0] RD1,RD2);

reg [W-1:0] regs [14:0]; 

initial begin
regs[1]=32'h25978903;
regs[5]=32'h34862389;
regs[7]=32'h23481089;
regs[2]=32'h32434982;
regs[9]=32'h42348215;
end

always@(*)
begin
	if(A1==6) RD1=32'h25978903;
	if(A1==5) RD1=32'h34862389;
	if(A1==0) RD1=32'h23481089;
	if(A1==7) RD1=32'h32434982;
	if(A1==9) RD1=32'h42348215;
end

always @(posedge clk)
if(WE) begin
	regs[A3]<=data;
	regs[14]<=R15;
	end

	
endmodule


