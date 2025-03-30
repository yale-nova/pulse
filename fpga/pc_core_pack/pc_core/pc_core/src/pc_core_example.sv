// This is a generated file. Use and modify at your own risk.
//////////////////////////////////////////////////////////////////////////////// 
// default_nettype of none prevents implicit wire declaration.
`default_nettype none
module pc_core_example #(
  parameter integer C_DRAM0_AXI_ADDR_WIDTH = 64 ,
  parameter integer C_DRAM0_AXI_DATA_WIDTH = 512,
  parameter integer C_K2N_TDATA_WIDTH      = 512,
  parameter integer C_K2N_TDEST_WIDTH      = 16 ,
  parameter integer C_N2K_TDATA_WIDTH      = 512,
  parameter integer C_N2K_TDEST_WIDTH      = 16 
)
(
  // System Signals
  input  wire                                ap_clk           ,
  input  wire                                ap_rst_n         ,
  input  wire                                ap_clk_2         ,
  input  wire                                ap_rst_n_2       ,
  // AXI4 master interface dram0_axi
  output wire                                dram0_axi_awvalid,
  input  wire                                dram0_axi_awready,
  output wire [C_DRAM0_AXI_ADDR_WIDTH-1:0]   dram0_axi_awaddr ,
  output wire [8-1:0]                        dram0_axi_awlen  ,
  output wire                                dram0_axi_wvalid ,
  input  wire                                dram0_axi_wready ,
  output wire [C_DRAM0_AXI_DATA_WIDTH-1:0]   dram0_axi_wdata  ,
  output wire [C_DRAM0_AXI_DATA_WIDTH/8-1:0] dram0_axi_wstrb  ,
  output wire                                dram0_axi_wlast  ,
  input  wire                                dram0_axi_bvalid ,
  output wire                                dram0_axi_bready ,
  output wire                                dram0_axi_arvalid,
  input  wire                                dram0_axi_arready,
  output wire [C_DRAM0_AXI_ADDR_WIDTH-1:0]   dram0_axi_araddr ,
  output wire [8-1:0]                        dram0_axi_arlen  ,
  input  wire                                dram0_axi_rvalid ,
  output wire                                dram0_axi_rready ,
  input  wire [C_DRAM0_AXI_DATA_WIDTH-1:0]   dram0_axi_rdata  ,
  input  wire                                dram0_axi_rlast  ,
  // Pipe (AXI4-Stream host) interface k2n
  output wire                                k2n_tvalid       ,
  input  wire                                k2n_tready       ,
  output wire [C_K2N_TDATA_WIDTH-1:0]        k2n_tdata        ,
  output wire [C_K2N_TDEST_WIDTH-1:0]        k2n_tdest        ,
  output wire [C_K2N_TDATA_WIDTH/8-1:0]      k2n_tkeep        ,
  output wire                                k2n_tlast        ,
  // Pipe (AXI4-Stream host) interface n2k
  input  wire                                n2k_tvalid       ,
  output wire                                n2k_tready       ,
  input  wire [C_N2K_TDATA_WIDTH-1:0]        n2k_tdata        ,
  input  wire [C_N2K_TDEST_WIDTH-1:0]        n2k_tdest        ,
  input  wire [C_N2K_TDATA_WIDTH/8-1:0]      n2k_tkeep        ,
  input  wire                                n2k_tlast        ,
  // Control Signals
  input  wire                                ap_start         ,
  output wire                                ap_idle          ,
  output wire                                ap_done          ,
  output wire                                ap_ready         ,
  input  wire [32-1:0]                       coreconfig       ,
  input  wire [64-1:0]                       axi00_ptr0       
);


timeunit 1ps;
timeprecision 1ps;

///////////////////////////////////////////////////////////////////////////////
// Local Parameters
///////////////////////////////////////////////////////////////////////////////
// Large enough for interesting traffic.
localparam integer  LP_DEFAULT_LENGTH_IN_BYTES = 16384;
localparam integer  LP_NUM_EXAMPLES    = 2;

///////////////////////////////////////////////////////////////////////////////
// Wires and Variables
///////////////////////////////////////////////////////////////////////////////
(* KEEP = "yes" *)
logic                                areset                         = 1'b0;
logic                                kernel_rst                     = 1'b0;
logic                                kernel_rst_2                   = 1'b0;
logic                                ap_start_r                     = 1'b0;
logic                                ap_idle_r                      = 1'b1;
logic                                ap_start_pulse                ;
logic [LP_NUM_EXAMPLES-1:0]          ap_done_i                     ;
logic [LP_NUM_EXAMPLES-1:0]          ap_done_r                      = {LP_NUM_EXAMPLES{1'b0}};
logic [32-1:0]                       ctrl_xfer_size_in_bytes        = LP_DEFAULT_LENGTH_IN_BYTES;
logic [32-1:0]                       ctrl_constant                  = 32'd1;

///////////////////////////////////////////////////////////////////////////////
// Begin RTL
///////////////////////////////////////////////////////////////////////////////

// Register and invert reset signal.
always @(posedge ap_clk) begin
  areset <= ~ap_rst_n;
end

// create pulse when ap_start transitions to 1
always @(posedge ap_clk) begin
  begin
    ap_start_r <= ap_start;
  end
end

assign ap_start_pulse = ap_start & ~ap_start_r;

// ap_idle is asserted when done is asserted, it is de-asserted when ap_start_pulse
// is asserted
always @(posedge ap_clk) begin
  if (areset) begin
    ap_idle_r <= 1'b1;
  end
  else begin
    ap_idle_r <= ap_done ? 1'b1 :
      ap_start_pulse ? 1'b0 : ap_idle;
  end
end

assign ap_idle = ap_idle_r;

// Done logic
always @(posedge ap_clk) begin
  if (areset) begin
    ap_done_r <= '0;
  end
  else begin
    ap_done_r <= (ap_done) ? '0 : ap_done_r | ap_done_i;
  end
end

assign ap_done = &ap_done_r;

// Ready Logic (non-pipelined case)
assign ap_ready = ap_done;


// Register and invert kernel reset signal.
always @(posedge ap_clk_2) begin
  kernel_rst <= ~ap_rst_n_2;
end



// Register and invert kernel reset signal.
always @(posedge ap_clk_2) begin
  kernel_rst_2 <= ~ap_rst_n_2;
end

// Vadd example
pc_core_example_vadd #(
  .C_M_AXI_ADDR_WIDTH ( C_DRAM0_AXI_ADDR_WIDTH ),
  .C_M_AXI_DATA_WIDTH ( C_DRAM0_AXI_DATA_WIDTH ),
  .C_ADDER_BIT_WIDTH  ( 32                     ),
  .C_XFER_SIZE_WIDTH  ( 32                     )
)
inst_example_vadd_dram0_axi (
  .aclk                    ( ap_clk                  ),
  .areset                  ( areset                  ),
  .kernel_clk              ( ap_clk_2                ),
  .kernel_rst              ( kernel_rst_2            ),
  .ctrl_addr_offset        ( axi00_ptr0              ),
  .ctrl_xfer_size_in_bytes ( ctrl_xfer_size_in_bytes ),
  .ctrl_constant           ( ctrl_constant           ),
  .ap_start                ( ap_start_pulse          ),
  .ap_done                 ( ap_done_i[0]            ),
  .m_axi_awvalid           ( dram0_axi_awvalid       ),
  .m_axi_awready           ( dram0_axi_awready       ),
  .m_axi_awaddr            ( dram0_axi_awaddr        ),
  .m_axi_awlen             ( dram0_axi_awlen         ),
  .m_axi_wvalid            ( dram0_axi_wvalid        ),
  .m_axi_wready            ( dram0_axi_wready        ),
  .m_axi_wdata             ( dram0_axi_wdata         ),
  .m_axi_wstrb             ( dram0_axi_wstrb         ),
  .m_axi_wlast             ( dram0_axi_wlast         ),
  .m_axi_bvalid            ( dram0_axi_bvalid        ),
  .m_axi_bready            ( dram0_axi_bready        ),
  .m_axi_arvalid           ( dram0_axi_arvalid       ),
  .m_axi_arready           ( dram0_axi_arready       ),
  .m_axi_araddr            ( dram0_axi_araddr        ),
  .m_axi_arlen             ( dram0_axi_arlen         ),
  .m_axi_rvalid            ( dram0_axi_rvalid        ),
  .m_axi_rready            ( dram0_axi_rready        ),
  .m_axi_rdata             ( dram0_axi_rdata         ),
  .m_axi_rlast             ( dram0_axi_rlast         )
);


// Vadd stream example
pc_core_example_vadd_axis #(
  .C_S_AXIS_TDATA_WIDTH ( C_K2N_TDATA_WIDTH          ),
  .C_S_AXIS_TDEST_WIDTH ( C_K2N_TDEST_WIDTH          ),
  .C_M_AXIS_TDATA_WIDTH ( C_K2N_TDATA_WIDTH          ),
  .C_M_AXIS_TDEST_WIDTH ( C_K2N_TDEST_WIDTH          ),
  .C_ADDER_BIT_WIDTH    ( 32                         ),
  .C_NUM_CLOCKS         ( 2                          ),
  .C_GEN_S_AXIS_DATA    ( 0                          ),
  .C_LENGTH_IN_BYTES    ( LP_DEFAULT_LENGTH_IN_BYTES )
)
inst_example_vadd__n2k_to_k2n (
  .aclk          ( ap_clk         ),
  .areset        ( areset         ),
  .kernel_clk    ( ap_clk_2       ),
  .kernel_rst    ( kernel_rst     ),
  .s_axis_tvalid ( n2k_tvalid     ),
  .s_axis_tready ( n2k_tready     ),
  .s_axis_tdata  ( n2k_tdata      ),
  .s_axis_tdest  ( n2k_tdest      ),
  .s_axis_tkeep  ( n2k_tkeep      ),
  .s_axis_tlast  ( n2k_tlast      ),
  .m_axis_tvalid ( k2n_tvalid     ),
  .m_axis_tready ( k2n_tready     ),
  .m_axis_tdata  ( k2n_tdata      ),
  .m_axis_tdest  ( k2n_tdest      ),
  .m_axis_tkeep  ( k2n_tkeep      ),
  .m_axis_tlast  ( k2n_tlast      ),
  .ctrl_constant ( 32'b1          ),
  .ap_start      ( ap_start_pulse ),
  .ap_idle       ( ap_idle        ),
  .ap_done       ( ap_done_i[1]   )
);

endmodule : pc_core_example
`default_nettype wire
