module mux2 #(parameter W=2) (input [W-1:0]a,b,input s, output [W-1:0] y);

assign y=s ? b : a;

endmodule