######################################################
#	Title			: LemonLite_GHRD_top
#	File			: LemonLite_GHRD_top.tcl
#	Author			:
#	Organization	:
#	Created			:
#	Last Update		:
#	Platform		:
#	Simulator		:
#	Synthesizers	:
#	Description		:
#	Target Device	:
#	Version			:
#	Notice			:
######################################################
######################################################
#		set_location_assignment
######################################################


#---------------------------------------------------- ADC
#set_location_assignment PIN_3   -to ADC_ANAIN
#set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to ADC_ANAIN
#set_location_assignment PIN_4   -to ADC_REFGND
#set_location_assignment PIN_5   -to ADC_VREF
#set_location_assignment PIN_6   -to ADC_IN1
#set_location_assignment PIN_7   -to ADC_IN2
#set_location_assignment PIN_8   -to ADC_IN3
#set_location_assignment PIN_10   -to ADC_IN4
#set_location_assignment PIN_11   -to ADC_IN5
#set_location_assignment PIN_12   -to ADC_IN6
#set_location_assignment PIN_13   -to ADC_IN7
#set_location_assignment PIN_14   -to ADC_IN8

#---------------------------------------------------- ETC
#set_location_assignment PIN_15   -to JTAG_GEN
#set_location_assignment PIN_16   -to JTAG_TMS
#set_location_assignment PIN_16   -to JTAG_TCK
#set_location_assignment PIN_16   -to JTAG_TDI
#set_location_assignment PIN_16   -to JTAG_TDO

set_location_assignment PIN_25   -to nRST
set_location_assignment PIN_27   -to CLK_IN
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to nRST
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CLK_IN

set_location_assignment PIN_21   -to LEDOUT_UART_TX
set_location_assignment PIN_26   -to KEYIN_UART_RX
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDOUT_UART_TX
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to KEYIN_UART_RX

#set_location_assignment PIN_22   -to SPI_SCn
#set_location_assignment PIN_24   -to SPI_MOSI
#set_location_assignment PIN_30   -to SPI_SCK
#set_location_assignment PIN_32   -to SPI_MISO
#set_location_assignment PIN_33   -to SPI_IRQ


#---------------------------------------------------- VIDEO IN
set_location_assignment PIN_140   -to CMOS_SIO_C
set_location_assignment PIN_141   -to CMOS_SIO_D
set_location_assignment PIN_17   -to CMOS_RESET
set_location_assignment PIN_112   -to CMOS_PWDN
set_location_assignment PIN_119   -to CMOS_XCLK
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CMOS_SIO_C
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CMOS_SIO_D
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CMOS_RESET
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CMOS_PWDN
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CMOS_XCLK

set_location_assignment PIN_120   -to CMOS_D[0]
set_location_assignment PIN_121   -to CMOS_D[1]
set_location_assignment PIN_122   -to CMOS_D[2]
set_location_assignment PIN_123   -to CMOS_D[3]
set_location_assignment PIN_124   -to CMOS_D[4]
set_location_assignment PIN_127   -to CMOS_D[5]
set_location_assignment PIN_130   -to CMOS_D[6]
set_location_assignment PIN_131   -to CMOS_D[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CMOS_D[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CMOS_D[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CMOS_D[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CMOS_D[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CMOS_D[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CMOS_D[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CMOS_D[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CMOS_D[7]

set_location_assignment PIN_132   -to CMOS_VSYNC
set_location_assignment PIN_134   -to CMOS_HREF
set_location_assignment PIN_135   -to CMOS_PCLK
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CMOS_VSYNC
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CMOS_HREF
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CMOS_PCLK

#---------------------------------------------------- VIDEO OUT
#---- HDMI
#set_location_assignment PIN_28   -to VOUT_CLKn
#set_location_assignment PIN_29   -to VOUT_CLKP
#set_location_assignment PIN_38   -to VOUT_LVDSn_0
#set_location_assignment PIN_39   -to VOUT_LVDSP_0
#set_location_assignment PIN_41   -to VOUT_LVDSn_1
#set_location_assignment PIN_43   -to VOUT_LVDSP_1
#set_location_assignment PIN_44   -to VOUT_LVDSn_2
#set_location_assignment PIN_45   -to VOUT_LVDSP_2
#set_location_assignment PIN_46   -to VOUT_LVDSn_3
#set_location_assignment PIN_47   -to VOUT_LVDSP_3
#set_location_assignment PIN_50   -to VOUT_LVDSn_4
#set_location_assignment PIN_52   -to VOUT_LVDSP_4
#set_location_assignment PIN_55   -to VOUT_LVDSn_5
#set_location_assignment PIN_56   -to VOUT_LVDSP_5
#set_location_assignment PIN_57   -to VOUT_LVDSn_6
#set_location_assignment PIN_58   -to VOUT_LVDSP_6
#set_location_assignment PIN_59   -to VOUT_LVDSn_7
#set_location_assignment PIN_60   -to VOUT_LVDSP_7
#set_location_assignment PIN_48   -to VOUT_TTL_0
#set_location_assignment PIN_54   -to VOUT_TTL_1
#---- VGA
set_location_assignment PIN_29   -to VGA_R[1]
set_location_assignment PIN_38   -to VGA_R[2]
set_location_assignment PIN_39   -to VGA_R[3]
set_location_assignment PIN_41   -to VGA_G[0]
set_location_assignment PIN_43   -to VGA_G[1]
set_location_assignment PIN_44   -to VGA_G[2]
set_location_assignment PIN_45   -to VGA_G[3]
set_location_assignment PIN_46   -to VGA_B[0]
set_location_assignment PIN_47   -to VGA_B[1]
set_location_assignment PIN_48   -to VGA_B[2]
set_location_assignment PIN_54   -to VGA_B[3]
set_location_assignment PIN_55   -to VGA_VS
set_location_assignment PIN_56   -to VGA_HS
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_R[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_R[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_R[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_G[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_G[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_G[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_G[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_B[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_B[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_B[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_B[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_VS
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_HS

#---------------------------------------------------- SDRAM
set_location_assignment PIN_81   -to SDR_CS_n
set_location_assignment PIN_84   -to SDR_RAS_n
set_location_assignment PIN_85   -to SDR_CAS_n
set_location_assignment PIN_86   -to SDR_WE_n
set_location_assignment PIN_88   -to SDR_CKE
set_location_assignment PIN_89   -to SDR_CLK
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_CS_n
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_RAS_n
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_CAS_n
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_WE_n
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_CKE
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_CLK

set_location_assignment PIN_77   -to SDR_A[0]
set_location_assignment PIN_76   -to SDR_A[1]
set_location_assignment PIN_75   -to SDR_A[2]
set_location_assignment PIN_74   -to SDR_A[3]
set_location_assignment PIN_69   -to SDR_A[4]
set_location_assignment PIN_70   -to SDR_A[5]
set_location_assignment PIN_66   -to SDR_A[6]
set_location_assignment PIN_65   -to SDR_A[7]
set_location_assignment PIN_64   -to SDR_A[8]
set_location_assignment PIN_62   -to SDR_A[9]
set_location_assignment PIN_78   -to SDR_A[10]
set_location_assignment PIN_61   -to SDR_A[11]
set_location_assignment PIN_87   -to SDR_A[12]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_A[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_A[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_A[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_A[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_A[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_A[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_A[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_A[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_A[8]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_A[9]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_A[10]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_A[11]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_A[12]

set_location_assignment PIN_79   -to SDR_BA[1]
set_location_assignment PIN_80   -to SDR_BA[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_BA[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_BA[0]

set_location_assignment PIN_96   -to SDR_DQM[0]
set_location_assignment PIN_90   -to SDR_DQM[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_DQM[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_DQM[1]

set_location_assignment PIN_106   -to SDR_DQ[0]
set_location_assignment PIN_105   -to SDR_DQ[1]
set_location_assignment PIN_102   -to SDR_DQ[2]
set_location_assignment PIN_101   -to SDR_DQ[3]
set_location_assignment PIN_100   -to SDR_DQ[4]
set_location_assignment PIN_99   -to SDR_DQ[5]
set_location_assignment PIN_98   -to SDR_DQ[6]
set_location_assignment PIN_97   -to SDR_DQ[7]
set_location_assignment PIN_91   -to SDR_DQ[8]
set_location_assignment PIN_92   -to SDR_DQ[9]
set_location_assignment PIN_93   -to SDR_DQ[10]
set_location_assignment PIN_110   -to SDR_DQ[11]
set_location_assignment PIN_111   -to SDR_DQ[12]
set_location_assignment PIN_113   -to SDR_DQ[13]
set_location_assignment PIN_114   -to SDR_DQ[14]
set_location_assignment PIN_118   -to SDR_DQ[15]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_DQ[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_DQ[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_DQ[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_DQ[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_DQ[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_DQ[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_DQ[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_DQ[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_DQ[8]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_DQ[9]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_DQ[10]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_DQ[11]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_DQ[12]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_DQ[13]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_DQ[14]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SDR_DQ[15]