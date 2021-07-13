module ALU #(parameter W=32) (input [W-1:0] a,b,
input[1:0]op,  //opcode that determines the operation type
output reg [W-1:0]out,
output reg CO,N,V,Z); //flags


always @(*)
begin
CO=0;V=0;   //CO and V initially set to 0 in case no arithmetic op occurs
	case(op)      
	0: begin {CO,out}=a+b; V=(a[W-1]~^b[W-1])&(a[W-1]^out[W-1]);end  //CO and overflow set, overflow formula form 445 slides is used
	1: begin {CO,out}=a+~b+1;  V=(a[W-1]^b[W-1])&(a[W-1]^out[W-1]);  end
	2: out=a&b;
	3: out=a|b;
	endcase
	
Z=out==0;  //Z and N flags set for every operation
N=out[W-1];
end

endmodule
