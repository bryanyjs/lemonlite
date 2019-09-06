// -------------------------------------------------------------------------- //
//
// Copyright (C) 2016-2019 Xinadist Corporation. All rights reserved.
// -------------------------------------------------------------------------- //

module LemonLite_GHRD_top (
	input	   wire			CLK_IN,
	input	   wire			nRST,

	//---------------------------------- VIDEO IN
	output	wire			CMOS_SIO_C,
	output	wire			CMOS_SIO_D,
	output	wire			CMOS_RESET,
	output	wire			CMOS_PWDN,
	output	wire			CMOS_XCLK,
	
	input	   wire	[7:0]	CMOS_D,
	input	   wire			CMOS_VSYNC,
	input	   wire			CMOS_HREF,
	input	   wire			CMOS_PCLK,

	//---------------------------------- VIDEO OUT
	output	wire	[3:1]	VGA_R,
	output	wire	[3:0]	VGA_G,
	output	wire	[3:0]	VGA_B,
	output	wire			VGA_VS,
	output	wire			VGA_HS,

	//---------------------------------- SDRAM
	output	wire			   SDR_CS_n,
	output	wire			   SDR_RAS_n,
	output	wire			   SDR_CAS_n,
	output	wire			   SDR_WE_n,
	output	wire			   SDR_CKE,
	output	wire			   SDR_CLK,
	output	wire	[12:0]	SDR_A,
	output	wire	[ 1:0]	SDR_BA,
	inout 	wire	[ 1:0]	SDR_DQM,
	inout 	wire	[15:0]	SDR_DQ,

	//---------------------------------- ETC
	output	reg				LEDOUT_UART_TX,
	input	   wire			   KEYIN_UART_RX
);

	wire uart_rx;
	wire uart_tx;

	
	//c0 40
	//c1 100
	//c2 50
	//c3 10
	//c4 100 phase shift -90 : SDR_CLK
	wire clk_40M;
	wire clk_100M;
	wire clk_50M;
	wire clk_10M;
	
	wire pll_locked; //active high : When the PLL is locked, the signal is VCC. 
	
	alt_pll uPll(
	//~nRST,
	CLK_IN,
	clk_40M,
	clk_100M,
	clk_50M,
	clk_10M,
	SDR_CLK,
	pll_locked);

    niosii_system u0 (
        .clk_clk                        (clk_100M),                    // clk.clk
        .reset_reset_n                  (pll_locked),                  // reset.reset_n
		  .clk_0_clk                      (clk_50M),                    // 
		  .reset_0_reset_n                (pll_locked),                 //                    reset_0.reset_n
        .led_external_connection_export (),                      // led_external_connection.export
        .uart_0_external_connection_rxd (KEYIN_UART_RX),                  // uart_0_external_connection.rxd
        .uart_0_external_connection_txd (LEDOUT_UART_TX),                   //                           .txd
        .sdram_controller_wire_addr     (SDR_A),     //      sdram_controller_wire.addr
        .sdram_controller_wire_ba       (SDR_BA),       //                           .ba
        .sdram_controller_wire_cas_n    (SDR_CAS_n),    //                           .cas_n
        .sdram_controller_wire_cke      (SDR_CKE),      //                           .cke
        .sdram_controller_wire_cs_n     (SDR_CS_n),     //                           .cs_n
        .sdram_controller_wire_dq       (SDR_DQ),       //                           .dq
        .sdram_controller_wire_dqm      (SDR_DQM),      //                           .dqm
        .sdram_controller_wire_ras_n    (SDR_RAS_n),    //                           .ras_n
        .sdram_controller_wire_we_n     (SDR_WE_n)      //                           .we_n
    );

endmodule
