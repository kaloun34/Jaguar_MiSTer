module j_jclk
(
	input resetli,
	input pclkosc,
	input pclkin,
	input vclkin,
	input chrin,
	input clk1w,
	input clk2w,
	input clk3w,
	input test,
	input cfg_2,
	input cfg_3,
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
	input din_15,
	input ndtest,
	output cfgw,
	output cfgen,
	output clk,
	output pclkout,
	output pclkdiv,
	output vclkdiv,
	output cpuclk,
	output chrdiv,
	output vclken,
	output resetl,
	output tlw,
	input sys_clk // Generated
);
wire [3:2] cfg = {cfg_3,cfg_2};
wire [9:0] din = {din_9,din_8,din_7,din_6,din_5,din_4,din_3,din_2,din_1,din_0};
_j_jclk jclk_inst
(
	.resetli /* IN */ (resetli),
	.pclkosc /* IN */ (pclkosc),
	.pclkin /* IN */ (pclkin),
	.vclkin /* IN */ (vclkin),
	.chrin /* IN */ (chrin),
	.clk1w /* IN */ (clk1w),
	.clk2w /* IN */ (clk2w),
	.clk3w /* IN */ (clk3w),
	.test /* IN */ (test),
	.cfg /* IN */ (cfg[3:2]),
	.din /* IN */ (din[9:0]),
	.din_15 /* IN */ (din_15),
	.ndtest /* IN */ (ndtest),
	.cfgw /* OUT */ (cfgw),
	.cfgen /* OUT */ (cfgen),
	.clk /* OUT */ (clk),
	.pclkout /* OUT */ (pclkout),
	.pclkdiv /* OUT */ (pclkdiv),
	.vclkdiv /* OUT */ (vclkdiv),
	.cpuclk /* OUT */ (cpuclk),
	.chrdiv /* OUT */ (chrdiv),
	.vclken /* OUT */ (vclken),
	.resetl /* OUT */ (resetl),
	.tlw /* OUT */ (tlw),
	.sys_clk(sys_clk) // Generated
);
endmodule
