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

    // Assigning dedicated inputs to internal signals
    assign ui_in[0] = a;
    assign ui_in[1] = b;
    assign ui_in[2] = c;
    assign ui_in[3] = d;
    assign ui_in[4] = s[0];
    assign ui_in[5] = s[1];
    assign ui_in[6] = e;
    assign ui_in[7] = f;

    // Assigning dedicated outputs
    assign y = uo_out[0];
    assign uo_out[7:1] = 7'b0;  // Setting other bits to 0
    
    // All output pins must be assigned. If not used, assign to 0.
    assign uio_out = 8'b0; // Example: uio_out is not used, so assigning it to 0
    assign uio_oe  = 8'b0; // Example: uio_oe is not used, so assigning it to 0


endmodule
