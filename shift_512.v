module shift_512(
	input clk,
	input rst_n,
	input in_valid,
	input signed [23:0] din_r,
	input signed [23:0] din_i,
	output signed [23:0] dout_r,
	output signed [23:0] dout_i
);
////////////////////////////////////////////
// Internal signals
reg [12287:0] shift_reg_r ;
reg [12287:0] shift_reg_i ;
reg [12287:0] tmp_reg_r ;
reg [12287:0] tmp_reg_i ;
reg [10:0] counter_512,next_counter_512;
reg valid,next_valid;
////////////////////////////////////////////
// Output logic
assign dout_r    = shift_reg_r[12287:12264];
assign dout_i    = shift_reg_i[12287:12264];
////////////////////////////////////////////
// Next state logic
always@(*)begin
    next_counter_512 = counter_512 + 10'd1;
    tmp_reg_r = shift_reg_r;
    tmp_reg_i = shift_reg_i;
    next_valid = valid;
end
////////////////////////////////////////////
// State register
always@(posedge clk or negedge rst_n)begin
    if(~rst_n)begin
        shift_reg_r <= 0;
        shift_reg_i <= 0;
        counter_512 <= 0;
        valid       <= 0;
    end
    else 
    if (in_valid)begin
        counter_512      <= next_counter_512;
        shift_reg_r      <= (tmp_reg_r<<24) + din_r;
        shift_reg_i      <= (tmp_reg_i<<24) + din_i;
        valid            <= in_valid;
    end else if(valid)begin
        counter_512      <= next_counter_512;
        shift_reg_r      <= (tmp_reg_r<<24) + din_r;
        shift_reg_i      <= (tmp_reg_i<<24) + din_i;
        valid            <= next_valid;
    end
end
endmodule