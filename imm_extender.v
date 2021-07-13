module imm_extender(input[31:0] data,input [1:0] immsrc,output reg [31:0] out);

always @(*)
	case(immsrc)
		0: out={24'd0,data[7:0]};
		1: out={20'd0,data[11:0]};
		2: out={8'd0,data[23:0]};
	endcase

endmodule