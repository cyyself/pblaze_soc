module m_axi_dummy(
    input         m_axi_aclk,
    output [31:0] m_axi_awaddr,
    output        m_axi_awvalid,
    input         m_axi_awready,
    output [31:0] m_axi_wdata,
    output        m_axi_wvalid,
    input         m_axi_wready,
    input   [1:0] m_axi_bresp,
    input         m_axi_bvalid,
    output        m_axi_bready,
    output [31:0] m_axi_araddr,
    output        m_axi_arvalid,
    input         m_axi_arready,
    input  [31:0] m_axi_rdata,
    input   [1:0] m_axi_rresp,
    input         m_axi_rvalid,
    output        m_axi_rready);

assign m_axi_awaddr = 0;
assign m_axi_awvalid = 0;
assign m_axi_wdata = 0;
assign m_axi_wvalid = 0;
assign m_axi_bready = 1'b1;
assign m_axi_araddr = 0;
assign m_axi_arvalid = 0;
assign m_axi_rready = 0;

endmodule