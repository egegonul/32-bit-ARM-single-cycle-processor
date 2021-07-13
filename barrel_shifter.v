module barrel_shifter #(parameter W=32) (input [W-1:0] data,sham,input r_l,output [W-1:0] out);

assign out=(r_l&(data>>sham))|(~r_l&(data<<sham));

endmodule