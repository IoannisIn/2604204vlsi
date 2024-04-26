/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_ioannisin_example (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

    wire ui_in[0] = a;
    wire ui_in[1] = b;
    wire ui_in[2] = c;
    wire ui_in[3] = d;
    wire ui_in[4] = s[0];
    wire ui_in[5] = s[1];
    wire ui_in[6] = e;
    wire ui_in[7] = f;

    assign uo_out[0] = y;
    assign uo_out[7:1] = 7'b0;
    
  // All output pins must be assigned. If not used, assign to 0.
  assign uo_out [7:1] = 7'b0;  // Example: ou_out is the sum of ui_in and uio_in
  assign uio_out = 0;
  assign uio_oe  = 0;
    

endmodule
