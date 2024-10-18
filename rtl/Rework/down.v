//`include "defs.v"

module down
(
	input [63:0] din,
	input [2:0] dmuxd,
	output [31:0] dout
);
wire [15:8] d1;

// Output buffers
wire [31:24] dout_obuf;

// Output buffers
assign dout[31:24] = dout_obuf[31:24];

// DBUS.NET (146) - dout[16-31] : mx2p
assign dout[23:16] = (dmuxd[2]) ? din[55:48] : din[23:16];
assign dout_obuf[31:24] = (dmuxd[2]) ? din[63:56] : din[31:24];

// DBUS.NET (147) - d1[8-15] : mx2p
assign d1[15:8] = (dmuxd[2]) ? din[47:40] : din[15:8];

// DBUS.NET (149) - dout[8-15] : mx2p
assign dout[15:8] = (dmuxd[1]) ? dout_obuf[31:24] : d1[15:8];

// DBUS.NET (151) - dout[0-7] : mx8p
reg [7:0] doutm;
assign dout[7:0] = doutm[7:0];
always @(*)
begin
	case(dmuxd[2:0]) // is this fast enough? could use ternaries
		3'b000		: doutm[7:0] = din[7:0];
		3'b001		: doutm[7:0] = din[15:8];
		3'b010		: doutm[7:0] = din[23:16];
		3'b011		: doutm[7:0] = din[31:24];
		3'b100		: doutm[7:0] = din[39:32];
		3'b101		: doutm[7:0] = din[47:40];
		3'b110		: doutm[7:0] = din[55:48];
		default		: doutm[7:0] = din[63:56];
	endcase
end

endmodule
