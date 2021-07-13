module mux4 #(parameter W=32) (input [W-1:0]a,b,c,d, input s1,s0, output [W-1:0] y);

assign y=(~s1&~s0&a)|(~s1&s0&b)|(s1&~s0&c)|(s1&s0&d);

endmodule