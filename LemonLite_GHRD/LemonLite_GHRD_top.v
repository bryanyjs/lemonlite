
module LemonLite_GHRD_top (
	input	wire			CLK_IN,
	input	wire			nRST,

	//---------------------------------- VIDEO IN
	output	wire			CMOS_SIO_C,
	output	wire			CMOS_SIO_D,
	output	wire			CMOS_RESET,
	output	wire			CMOS_PWDN,
	output	wire			CMOS_XCLK,
	input	wire	[7:0]	CMOS_D,
	input	wire			CMOS_VSYNC,
	input	wire			CMOS_HREF,
	input	wire			CMOS_PCLK,

	//---------------------------------- VIDEO OUT
	output	wire	[3:1]	VGA_R,
	output	wire	[3:0]	VGA_G,
	output	wire	[3:0]	VGA_B,
	output	wire			VGA_VS,
	output	wire			VGA_HS,

	//---------------------------------- SDRAM
	output	wire			SDR_CS_n,
	output	wire			SDR_RAS_n,
	output	wire			SDR_CAS_n,
	output	wire			SDR_WE_n,
	output	wire			SDR_CKE,
	output	wire			SDR_CLK,
	output	wire	[12:0]	SDR_A,
	output	wire	[1:0]	SDR_BA,
	inout	wire	[1:0]	SDR_DQM,
	inout	wire	[15:0]	SDR_DQ,

	//---------------------------------- ETC
	output	reg				LEDOUT_UART_TX,
	input	wire			KEYIN_UART_RX
);

always @ (posedge CLK_IN or negedge nRST) begin
	if (!nRST) begin
		LEDOUT_UART_TX	<= 1'd0;
	end
	else begin
		LEDOUT_UART_TX	<= 1'd1;
	end
end

endmodule
