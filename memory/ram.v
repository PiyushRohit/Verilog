module ram (
  output reg [7:0] data_out,
  input [7:0] data_in,
  input [9:0] addr,
  input wr,          // Write enable
  input cs           // Chip select
);
  reg [7:0] mem [0:1023];

  // Write operation
  always @(*) begin
    if (cs && wr)
      mem[addr] = data_in;
  end

  // Read operation (combinational)
  always @(*) begin
    if (cs && !wr)
      data_out = mem[addr];
    else
      data_out = 8'bz; // High impedance if not reading
  end
endmodule