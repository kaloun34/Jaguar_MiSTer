//`include "defs.v"

module up
(
	input din_0,
	input din_1,
	input din_2,
	input din_3,
	input din_4,
	input din_5,
	input din_6,
	input din_7,
	input din_8,
	input din_9,
	input din_10,
	input din_11,
	input din_12,
	input din_13,
	input din_14,
	input din_15,
	input din_16,
	input din_17,
	input din_18,
	input din_19,
	input din_20,
	input din_21,
	input din_22,
	input din_23,
	input din_24,
	input din_25,
	input din_26,
	input din_27,
	input din_28,
	input din_29,
	input din_30,
	input din_31,
	input din_32,
	input din_33,
	input din_34,
	input din_35,
	input din_36,
	input din_37,
	input din_38,
	input din_39,
	input din_40,
	input din_41,
	input din_42,
	input din_43,
	input din_44,
	input din_45,
	input din_46,
	input din_47,
	input din_48,
	input din_49,
	input din_50,
	input din_51,
	input din_52,
	input din_53,
	input din_54,
	input din_55,
	input din_56,
	input din_57,
	input din_58,
	input din_59,
	input din_60,
	input din_61,
	input din_62,
	input din_63,
	input dmuxu_0,
	input dmuxu_1,
	input dmuxu_2,
	output dout_8,
	output dout_9,
	output dout_10,
	output dout_11,
	output dout_12,
	output dout_13,
	output dout_14,
	output dout_15,
	output dout_16,
	output dout_17,
	output dout_18,
	output dout_19,
	output dout_20,
	output dout_21,
	output dout_22,
	output dout_23,
	output dout_24,
	output dout_25,
	output dout_26,
	output dout_27,
	output dout_28,
	output dout_29,
	output dout_30,
	output dout_31,
	output dout_32,
	output dout_33,
	output dout_34,
	output dout_35,
	output dout_36,
	output dout_37,
	output dout_38,
	output dout_39,
	output dout_40,
	output dout_41,
	output dout_42,
	output dout_43,
	output dout_44,
	output dout_45,
	output dout_46,
	output dout_47,
	output dout_48,
	output dout_49,
	output dout_50,
	output dout_51,
	output dout_52,
	output dout_53,
	output dout_54,
	output dout_55,
	output dout_56,
	output dout_57,
	output dout_58,
	output dout_59,
	output dout_60,
	output dout_61,
	output dout_62,
	output dout_63
);
wire [63:0] din = {din_63,din_62,din_61,din_60,
din_59,din_58,din_57,din_56,din_55,din_54,din_53,din_52,din_51,din_50,
din_49,din_48,din_47,din_46,din_45,din_44,din_43,din_42,din_41,din_40,
din_39,din_38,din_37,din_36,din_35,din_34,din_33,din_32,din_31,din_30,
din_29,din_28,din_27,din_26,din_25,din_24,din_23,din_22,din_21,din_20,
din_19,din_18,din_17,din_16,din_15,din_14,din_13,din_12,din_11,din_10,
din_9,din_8,din_7,din_6,din_5,din_4,din_3,din_2,din_1,din_0};
wire [2:0] dmuxu = {dmuxu_2,dmuxu_1,dmuxu_0};
wire [63:8] dout;
assign {dout_63,dout_62,dout_61,dout_60,
dout_59,dout_58,dout_57,dout_56,dout_55,dout_54,dout_53,dout_52,dout_51,dout_50,
dout_49,dout_48,dout_47,dout_46,dout_45,dout_44,dout_43,dout_42,dout_41,dout_40,
dout_39,dout_38,dout_37,dout_36,dout_35,dout_34,dout_33,dout_32,dout_31,dout_30,
dout_29,dout_28,dout_27,dout_26,dout_25,dout_24,dout_23,dout_22,dout_21,dout_20,
dout_19,dout_18,dout_17,dout_16,dout_15,dout_14,dout_13,dout_12,dout_11,dout_10,
dout_9,dout_8} = dout[63:8];

// DBUS.NET (59) - d4 : up
_up d4_inst
(
	.din /* IN */ (din[63:0]),
	.dmuxu /* IN */ (dmuxu[2:0]),
	.dout /* OUT */ (dout[63:8])
);
endmodule
