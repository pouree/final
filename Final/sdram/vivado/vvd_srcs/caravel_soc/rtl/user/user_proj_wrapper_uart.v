// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`default_nettype wire
/*
 *-------------------------------------------------------------
 *
 * user_project_wrapper
 *
 * This wrapper enumerates all of the pins available to the
 * user for the user project.
 *
 * An example user project is provided in this wrapper.  The
 * example should be removed and replaced with the actual
 * user project.
 *
 *-------------------------------------------------------------
 */

module user_project_wrapper #(
    parameter BITS = 32
) (
`ifdef USE_POWER_PINS
    inout vdda1,	// User area 1 3.3V supply
    inout vdda2,	// User area 2 3.3V supply
    inout vssa1,	// User area 1 analog ground
    inout vssa2,	// User area 2 analog ground
    inout vccd1,	// User area 1 1.8V supply
    inout vccd2,	// User area 2 1.8v supply
    inout vssd1,	// User area 1 digital ground
    inout vssd2,	// User area 2 digital ground
`endif

    // Wishbone Slave ports (WB MI A)
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output wbs_ack_o,
    output [31:0] wbs_dat_o,

    // Logic Analyzer Signals
    input  [127:0] la_data_in,
    output [127:0] la_data_out,
    input  [127:0] la_oenb,

    // IOs
    input  [`MPRJ_IO_PADS-1:0] io_in,
    output [`MPRJ_IO_PADS-1:0] io_out,
    output [`MPRJ_IO_PADS-1:0] io_oeb,

    // Analog (direct connection to GPIO pad---use with caution)
    // Note that analog I/O is not available on the 7 lowest-numbered
    // GPIO pads, and so the analog_io indexing is offset from the
    // GPIO indexing by 7 (also upper 2 GPIOs do not have analog_io).
    inout [`MPRJ_IO_PADS-10:0] analog_io,

    // Independent clock (on independent integer divider)
    input   user_clock2,

    // User maskable interrupt signals
    output [2:0] user_irq
);

/*--------------------------------------*/
/* User project is instantiated  here   */

wire UART;
wire BRAM;
assign UART = ((wbs_adr_i[31:20] == 12'h300) && wbs_cyc_i && wbs_stb_i) ? 1 : 0;
assign BRAM = ((wbs_adr_i[31:20] == 12'h380) && wbs_cyc_i && wbs_stb_i) ? 1 : 0;

/*---------------UART-----------------*/


wire UART_stb_i;
wire UART_cyc_i;
wire UART_we_i;
wire [3:0] UART_sel_i;
wire [31:0] UART_dat_i;
wire [31:0] UART_adr_i;
wire UART_ack_o;
wire [31:0] UART_dat_o;

wire  [`MPRJ_IO_PADS-1:0] UART_io_in;
wire  [`MPRJ_IO_PADS-1:0] UART_io_out;
wire  [`MPRJ_IO_PADS-1:0] UART_io_oeb;

wire [2:0] UART_irq;

assign UART_stb_i = UART ? wbs_stb_i : 1'b0;
assign UART_cyc_i = UART ? wbs_cyc_i : 1'b0;
assign UART_we_i = UART ? wbs_we_i : 1'b0;
assign UART_sel_i = UART ? wbs_sel_i : 4'b0;
assign UART_dat_i = UART ? wbs_dat_i : 32'b0;
assign UART_adr_i = UART ? wbs_adr_i : 32'b0;
assign UART_io_in = io_in;


uart uart (
`ifdef USE_POWER_PINS
	.vccd1(vccd1),	// User area 1 1.8V power
	.vssd1(vssd1),	// User area 1 digital ground
`endif
    .wb_clk_i(wb_clk_i),
    .wb_rst_i(wb_rst_i),

    // MGMT SoC Wishbone Slave

    .wbs_stb_i(UART_stb_i),
    .wbs_cyc_i(UART_cyc_i),
    .wbs_we_i(UART_we_i),
    .wbs_sel_i(UART_sel_i),
    .wbs_dat_i(UART_dat_i),
    .wbs_adr_i(UART_adr_i),
    .wbs_ack_o(UART_ack_o),
    .wbs_dat_o(UART_dat_o),

    // IO ports
    .io_in  (UART_io_in),
    .io_out (UART_io_out),
    .io_oeb (UART_io_oeb),

    // irq
    .user_irq (UART_irq)
);
/*---------------BRAM----------------*/

wire [3:0] BRAM_we_i;
wire BRAM_en;
wire [31:0] BRAM_dat_i;
wire [31:0] BRAM_adr_i;

reg BRAM_ack_o;
wire [31:0] BRAM_dat_o;

assign BRAM_adr_i = BRAM ? wbs_adr_i : 0;
assign BRAM_dat_i = BRAM ? wbs_dat_i : 0;
assign BRAM_we_i = BRAM ? (wbs_sel_i & {4{wbs_we_i}}):4'b0;
assign BRAM_en = BRAM ? 1 : 0;

bram bram (
    .CLK(wb_clk_i),
    .WE0(BRAM_we_i),
    .EN0(BRAM_en),
    .Di0(BRAM_dat_i),
    .Do0(BRAM_dat_o),
    .A0(BRAM_adr_i)
);

//delay


reg count;

always@(posedge wb_clk_i) begin
    if(wb_rst_i) begin 
        BRAM_ack_o <= 0;
        count <= 0;
    end
    else if(BRAM == 1'b1) begin
        if(count == 1'b1) begin
            BRAM_ack_o <= 1;
            count <= 0;
        end
        else begin
            BRAM_ack_o <= 0;
            count <= count + 1;
        end
    end
    else begin
        BRAM_ack_o <= 0;
        count <= 0;
    end
end
/*---------------Output control-----------------*/


assign wbs_ack_o = BRAM_ack_o | UART_ack_o;
assign wbs_dat_o = BRAM_ack_o ? BRAM_dat_o : UART_ack_o ? UART_dat_o : 0;

assign io_out = UART_io_out;
assign io_oeb = UART_io_oeb;

assign user_irq = UART_irq;



endmodule	// user_project_wrapper

`default_nettype wire

//1205
