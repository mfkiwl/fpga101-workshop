module font_rom(
  input clk,
  input [11:0] addr,
  output [7:0] data_out
);

  reg [7:0] store[0:4095] /* verilator public_flat */;

  initial
  begin
		$readmemh("font_vga.mem", store);
  end

  always @(posedge clk) begin
	   data_out <= store[addr];
  end
endmodule
