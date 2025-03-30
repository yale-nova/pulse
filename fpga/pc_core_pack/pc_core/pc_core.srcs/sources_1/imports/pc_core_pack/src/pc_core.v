// This is a generated file. Use and modify at your own risk.
//////////////////////////////////////////////////////////////////////////////// 
// default_nettype of none prevents implicit wire declaration.
`default_nettype none
`timescale 1 ns / 1 ps
// Top level of the kernel. Do not modify module name, parameters or ports.
module pc_core #(
  parameter integer C_S_AXI_CONTROL_ADDR_WIDTH = 12 ,
  parameter integer C_S_AXI_CONTROL_DATA_WIDTH = 32 ,
  parameter integer C_DRAM0_AXI_ADDR_WIDTH     = 64 ,
  parameter integer C_DRAM0_AXI_DATA_WIDTH     = 512,
  parameter integer C_K2N_TDATA_WIDTH          = 512,
  parameter integer C_K2N_TDEST_WIDTH          = 16 ,
  parameter integer C_N2K_TDATA_WIDTH          = 512,
  parameter integer C_N2K_TDEST_WIDTH          = 16 
)
(
  // System Signals
  input  wire                                    ap_clk               ,
  input  wire                                    ap_rst_n             ,
  input  wire                                    ap_clk_2             ,
  input  wire                                    ap_rst_n_2           ,
  //  Note: A minimum subset of AXI4 memory mapped signals are declared.  AXI
  // signals omitted from these interfaces are automatically inferred with the
  // optimal values for Xilinx accleration platforms.  This allows Xilinx AXI4 Interconnects
  // within the system to be optimized by removing logic for AXI4 protocol
  // features that are not necessary. When adapting AXI4 masters within the RTL
  // kernel that have signals not declared below, it is suitable to add the
  // signals to the declarations below to connect them to the AXI4 Master.
  // 
  // List of ommited signals - effect
  // -------------------------------
  // ID - Transaction ID are used for multithreading and out of order
  // transactions.  This increases complexity. This saves logic and increases Fmax
  // in the system when ommited.
  // SIZE - Default value is log2(data width in bytes). Needed for subsize bursts.
  // This saves logic and increases Fmax in the system when ommited.
  // BURST - Default value (0b01) is incremental.  Wrap and fixed bursts are not
  // recommended. This saves logic and increases Fmax in the system when ommited.
  // LOCK - Not supported in AXI4
  // CACHE - Default value (0b0011) allows modifiable transactions. No benefit to
  // changing this.
  // PROT - Has no effect in current acceleration platforms.
  // QOS - Has no effect in current acceleration platforms.
  // REGION - Has no effect in current acceleration platforms.
  // USER - Has no effect in current acceleration platforms.
  // RESP - Not useful in most acceleration platforms.
  // 
  // AXI4 master interface dram0_axi
  output wire                                    dram0_axi_awvalid    ,
  input  wire                                    dram0_axi_awready    ,
  output wire [C_DRAM0_AXI_ADDR_WIDTH-1:0]       dram0_axi_awaddr     ,
  output wire [8-1:0]                            dram0_axi_awlen      ,
  output wire                                    dram0_axi_wvalid     ,
  input  wire                                    dram0_axi_wready     ,
  output wire [C_DRAM0_AXI_DATA_WIDTH-1:0]       dram0_axi_wdata      ,
  output wire [C_DRAM0_AXI_DATA_WIDTH/8-1:0]     dram0_axi_wstrb      ,
  output wire                                    dram0_axi_wlast      ,
  input  wire                                    dram0_axi_bvalid     ,
  output wire                                    dram0_axi_bready     ,
  output wire                                    dram0_axi_arvalid    ,
  input  wire                                    dram0_axi_arready    ,
  output wire [C_DRAM0_AXI_ADDR_WIDTH-1:0]       dram0_axi_araddr     ,
  output wire [8-1:0]                            dram0_axi_arlen      ,
  input  wire                                    dram0_axi_rvalid     ,
  output wire                                    dram0_axi_rready     ,
  input  wire [C_DRAM0_AXI_DATA_WIDTH-1:0]       dram0_axi_rdata      ,
  input  wire                                    dram0_axi_rlast      ,
  // AXI4-Stream (master) interface k2n
  output wire                                    k2n_tvalid           ,
  input  wire                                    k2n_tready           ,
  output wire [C_K2N_TDATA_WIDTH-1:0]            k2n_tdata            ,
  output wire [C_K2N_TDEST_WIDTH-1:0]            k2n_tdest            ,
  output wire [C_K2N_TDATA_WIDTH/8-1:0]          k2n_tkeep            ,
  output wire                                    k2n_tlast            ,
  // AXI4-Stream (slave) interface n2k
  input  wire                                    n2k_tvalid           ,
  output wire                                    n2k_tready           ,
  input  wire [C_N2K_TDATA_WIDTH-1:0]            n2k_tdata            ,
  input  wire [C_N2K_TDEST_WIDTH-1:0]            n2k_tdest            ,
  input  wire [C_N2K_TDATA_WIDTH/8-1:0]          n2k_tkeep            ,
  input  wire                                    n2k_tlast            ,
  // AXI4-Lite slave interface
  input  wire                                    s_axi_control_awvalid,
  output wire                                    s_axi_control_awready,
  input  wire [C_S_AXI_CONTROL_ADDR_WIDTH-1:0]   s_axi_control_awaddr ,
  input  wire                                    s_axi_control_wvalid ,
  output wire                                    s_axi_control_wready ,
  input  wire [C_S_AXI_CONTROL_DATA_WIDTH-1:0]   s_axi_control_wdata  ,
  input  wire [C_S_AXI_CONTROL_DATA_WIDTH/8-1:0] s_axi_control_wstrb  ,
  input  wire                                    s_axi_control_arvalid,
  output wire                                    s_axi_control_arready,
  input  wire [C_S_AXI_CONTROL_ADDR_WIDTH-1:0]   s_axi_control_araddr ,
  output wire                                    s_axi_control_rvalid ,
  input  wire                                    s_axi_control_rready ,
  output wire [C_S_AXI_CONTROL_DATA_WIDTH-1:0]   s_axi_control_rdata  ,
  output wire [2-1:0]                            s_axi_control_rresp  ,
  output wire                                    s_axi_control_bvalid ,
  input  wire                                    s_axi_control_bready ,
  output wire [2-1:0]                            s_axi_control_bresp  ,
  output wire                                    interrupt            
);

///////////////////////////////////////////////////////////////////////////////
// Local Parameters
///////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////
// Wires and Variables
///////////////////////////////////////////////////////////////////////////////
(* DONT_TOUCH = "yes" *)
reg                                 areset                         = 1'b0;
wire                                ap_start                      ;
wire                                ap_idle                       ;
wire                                ap_done                       ;
wire                                ap_ready                      ;
wire [32-1:0]                       coreconfig                    ;
wire [64-1:0]                       axi00_ptr0                    ;

// Register and invert reset signal.
always @(posedge ap_clk) begin
  areset <= ~ap_rst_n;
end

///////////////////////////////////////////////////////////////////////////////
// Begin control interface RTL.  Modifying not recommended.
///////////////////////////////////////////////////////////////////////////////


// AXI4-Lite slave interface
pc_core_control_s_axi #(
  .C_S_AXI_ADDR_WIDTH ( C_S_AXI_CONTROL_ADDR_WIDTH ),
  .C_S_AXI_DATA_WIDTH ( C_S_AXI_CONTROL_DATA_WIDTH )
)
inst_control_s_axi (
  .ACLK       ( ap_clk                ),
  .ARESET     ( areset                ),
  .ACLK_EN    ( 1'b1                  ),
  .AWVALID    ( s_axi_control_awvalid ),
  .AWREADY    ( s_axi_control_awready ),
  .AWADDR     ( s_axi_control_awaddr  ),
  .WVALID     ( s_axi_control_wvalid  ),
  .WREADY     ( s_axi_control_wready  ),
  .WDATA      ( s_axi_control_wdata   ),
  .WSTRB      ( s_axi_control_wstrb   ),
  .ARVALID    ( s_axi_control_arvalid ),
  .ARREADY    ( s_axi_control_arready ),
  .ARADDR     ( s_axi_control_araddr  ),
  .RVALID     ( s_axi_control_rvalid  ),
  .RREADY     ( s_axi_control_rready  ),
  .RDATA      ( s_axi_control_rdata   ),
  .RRESP      ( s_axi_control_rresp   ),
  .BVALID     ( s_axi_control_bvalid  ),
  .BREADY     ( s_axi_control_bready  ),
  .BRESP      ( s_axi_control_bresp   ),
  .interrupt  ( interrupt             ),
  .ap_start   ( ap_start              ),
  .ap_done    ( ap_done               ),
  .ap_ready   ( ap_ready              ),
  .ap_idle    ( ap_idle               ),
  .coreconfig ( coreconfig            ),
  .axi00_ptr0 ( axi00_ptr0            )
);

///////////////////////////////////////////////////////////////////////////////
// Add kernel logic here.  Modify/remove example code as necessary.
///////////////////////////////////////////////////////////////////////////////

// Example RTL block.  Remove to insert custom logic.
pc_core_example #(
  .C_DRAM0_AXI_ADDR_WIDTH ( C_DRAM0_AXI_ADDR_WIDTH ),
  .C_DRAM0_AXI_DATA_WIDTH ( C_DRAM0_AXI_DATA_WIDTH ),
  .C_K2N_TDATA_WIDTH      ( C_K2N_TDATA_WIDTH      ),
  .C_K2N_TDEST_WIDTH      ( C_K2N_TDEST_WIDTH      ),
  .C_N2K_TDATA_WIDTH      ( C_N2K_TDATA_WIDTH      ),
  .C_N2K_TDEST_WIDTH      ( C_N2K_TDEST_WIDTH      )
)
inst_example (
  .ap_clk            ( ap_clk            ),
  .ap_rst_n          ( ap_rst_n          ),
  .ap_clk_2          ( ap_clk_2          ),
  .ap_rst_n_2        ( ap_rst_n_2        ),
  .dram0_axi_awvalid ( dram0_axi_awvalid ),
  .dram0_axi_awready ( dram0_axi_awready ),
  .dram0_axi_awaddr  ( dram0_axi_awaddr  ),
  .dram0_axi_awlen   ( dram0_axi_awlen   ),
  .dram0_axi_wvalid  ( dram0_axi_wvalid  ),
  .dram0_axi_wready  ( dram0_axi_wready  ),
  .dram0_axi_wdata   ( dram0_axi_wdata   ),
  .dram0_axi_wstrb   ( dram0_axi_wstrb   ),
  .dram0_axi_wlast   ( dram0_axi_wlast   ),
  .dram0_axi_bvalid  ( dram0_axi_bvalid  ),
  .dram0_axi_bready  ( dram0_axi_bready  ),
  .dram0_axi_arvalid ( dram0_axi_arvalid ),
  .dram0_axi_arready ( dram0_axi_arready ),
  .dram0_axi_araddr  ( dram0_axi_araddr  ),
  .dram0_axi_arlen   ( dram0_axi_arlen   ),
  .dram0_axi_rvalid  ( dram0_axi_rvalid  ),
  .dram0_axi_rready  ( dram0_axi_rready  ),
  .dram0_axi_rdata   ( dram0_axi_rdata   ),
  .dram0_axi_rlast   ( dram0_axi_rlast   ),
  .k2n_tvalid        ( k2n_tvalid        ),
  .k2n_tready        ( k2n_tready        ),
  .k2n_tdata         ( k2n_tdata         ),
  .k2n_tdest         ( k2n_tdest         ),
  .k2n_tkeep         ( k2n_tkeep         ),
  .k2n_tlast         ( k2n_tlast         ),
  .n2k_tvalid        ( n2k_tvalid        ),
  .n2k_tready        ( n2k_tready        ),
  .n2k_tdata         ( n2k_tdata         ),
  .n2k_tdest         ( n2k_tdest         ),
  .n2k_tkeep         ( n2k_tkeep         ),
  .n2k_tlast         ( n2k_tlast         ),
  .ap_start          ( ap_start          ),
  .ap_done           ( ap_done           ),
  .ap_idle           ( ap_idle           ),
  .ap_ready          ( ap_ready          ),
  .coreconfig        ( coreconfig        ),
  .axi00_ptr0        ( axi00_ptr0        )
);

endmodule
`default_nettype wire
