module reg3 #(parameter W=2) (input clk,reset,p_s,r_l,right_in,left_in,input [W-1:0] parallel_in,
output reg [W-1:0] A);


always @(posedge clk)
begin
	if(reset) A<=0;
	else if(p_s) A<=parallel_in;
	else begin
		if(r_l) begin A<=A<<1; A[0]<=right_in; end
		else begin A<=A>>1; A[W-1:0]<=left_in; end
	end
end
	
endmodule
	