`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2022 02:11:37 PM
// Design Name: 
// Module Name: reset_sync
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module reset_sync(
    input clk_i,
    input clk_o,
    input reset_i,
    output reset_o
    );
    reg [15:0] out_1 = 16'hffff;
    reg [15:0] out_2 = 16'hffff;
    always @(posedge clk_i) begin
        if (reset_i) out_1 <= 16'hffff;
        else out_1 <= {out_1[14:0],1'b0};        
    end
    always @(posedge clk_o) begin
        if (out_1[31]) out_2 <= 16'hffff;
        else out_2 <= {out_2[14:0],1'b0};
    end
endmodule
