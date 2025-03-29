module barrel_shifter (
    input [7:0] data_in,  // 8-bit input data
    input [2:0] shift,    // 3-bit shift amount
    input dir,            // Shift direction: 0 for left, 1 for right
    output reg [7:0] data_out // 8-bit output data
);

    always @(*) begin
        if (dir == 1'b0) begin
            // Left shift
            data_out = data_in << shift;
        end else begin
            // Right shift
            data_out = data_in >> shift;
        end
    end

endmodule