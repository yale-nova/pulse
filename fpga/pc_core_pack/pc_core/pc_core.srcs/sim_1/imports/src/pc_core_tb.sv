// This is a generated file. Use and modify at your own risk.
////////////////////////////////////////////////////////////////////////////////
// default_nettype of none prevents implicit wire declaration.
`default_nettype none
`timescale 1 ps / 1 ps
import axi_vip_pkg::*;
import slv_dram0_axi_vip_pkg::*;
import axi4stream_vip_pkg::*;
import k2n_vip_pkg::*;
import n2k_vip_pkg::*;
import control_pc_core_vip_pkg::*;
module pc_core_tb ();
parameter integer LP_MAX_LENGTH = 8192;
parameter integer LP_MAX_TRANSFER_LENGTH = 16384 / 4;
parameter integer C_S_AXI_CONTROL_ADDR_WIDTH = 12;
parameter integer C_S_AXI_CONTROL_DATA_WIDTH = 32;
parameter integer C_DRAM0_AXI_ADDR_WIDTH = 64;
parameter integer C_DRAM0_AXI_DATA_WIDTH = 512;
parameter integer C_K2N_TDATA_WIDTH = 512;
parameter integer C_K2N_TDEST_WIDTH = 16;
parameter integer C_N2K_TDATA_WIDTH = 512;
parameter integer C_N2K_TDEST_WIDTH = 16;

// Control Register
parameter KRNL_CTRL_REG_ADDR     = 32'h00000000;
parameter CTRL_START_MASK        = 32'h00000001;
parameter CTRL_DONE_MASK         = 32'h00000002;
parameter CTRL_IDLE_MASK         = 32'h00000004;
parameter CTRL_READY_MASK        = 32'h00000008;
parameter CTRL_CONTINUE_MASK     = 32'h00000010; // Only ap_ctrl_chain
parameter CTRL_AUTO_RESTART_MASK = 32'h00000080; // Not used

// Global Interrupt Enable Register
parameter KRNL_GIE_REG_ADDR      = 32'h00000004;
parameter GIE_GIE_MASK           = 32'h00000001;
// IP Interrupt Enable Register
parameter KRNL_IER_REG_ADDR      = 32'h00000008;
parameter IER_DONE_MASK          = 32'h00000001;
parameter IER_READY_MASK         = 32'h00000002;
// IP Interrupt Status Register
parameter KRNL_ISR_REG_ADDR      = 32'h0000000c;
parameter ISR_DONE_MASK          = 32'h00000001;
parameter ISR_READY_MASK         = 32'h00000002;

parameter integer LP_CLK_PERIOD_PS = 4000; // 250 MHz

//System Signals
logic ap_clk = 0;
// Create clock 
initial begin: AP_CLK
  forever begin
    ap_clk = #(LP_CLK_PERIOD_PS/2) ~ap_clk;
  end
end
// Create second clock
parameter integer LP_CLK_2_PERIOD_PS = 5000; // 200 MHz


logic ap_clk_2 = 0;

initial begin: AP_CLK_2
  forever begin
    ap_clk_2 = #(LP_CLK_2_PERIOD_PS/2) ~ap_clk_2;
  end
end
 
//System Signals
logic ap_rst_n = 0;
logic initial_reset  =0;
// Reset routine 1
task automatic ap_rst_n_sequence(input integer unsigned width = 20);
  @(posedge ap_clk);
  #1ps;
  ap_rst_n = 0;
  repeat (width) @(posedge ap_clk);
  #1ps;
  ap_rst_n = 1;
endtask
// Reset routine 1
initial begin: AP_RST
  ap_rst_n_sequence(50);
  initial_reset =1;
end
 logic ap_rst_n_2 = 0;
// Reset routine 2
task automatic ap_rst_n_2_sequence(input integer unsigned width = 20);
  @(posedge ap_clk_2);
  #1ps;
  ap_rst_n_2 = 0;
  repeat (width) @(posedge ap_clk_2);
  #1ps;
  ap_rst_n_2 = 1;
endtask
// Reset routine 2
initial begin: AP_RST_2
 ap_rst_n_2_sequence(50);
end
//AXI4 master interface dram0_axi
wire [1-1:0] dram0_axi_awvalid;
wire [1-1:0] dram0_axi_awready;
wire [C_DRAM0_AXI_ADDR_WIDTH-1:0] dram0_axi_awaddr;
wire [8-1:0] dram0_axi_awlen;
wire [1-1:0] dram0_axi_wvalid;
wire [1-1:0] dram0_axi_wready;
wire [C_DRAM0_AXI_DATA_WIDTH-1:0] dram0_axi_wdata;
wire [C_DRAM0_AXI_DATA_WIDTH/8-1:0] dram0_axi_wstrb;
wire [1-1:0] dram0_axi_wlast;
wire [1-1:0] dram0_axi_bvalid;
wire [1-1:0] dram0_axi_bready;
wire [1-1:0] dram0_axi_arvalid;
wire [1-1:0] dram0_axi_arready;
wire [C_DRAM0_AXI_ADDR_WIDTH-1:0] dram0_axi_araddr;
wire [8-1:0] dram0_axi_arlen;
wire [1-1:0] dram0_axi_rvalid;
wire [1-1:0] dram0_axi_rready;
wire [C_DRAM0_AXI_DATA_WIDTH-1:0] dram0_axi_rdata;
wire [1-1:0] dram0_axi_rlast;
// AXI4-Stream master (write_only) interface k2n
wire [1-1:0] k2n_tvalid;
wire [1-1:0] k2n_tready;
wire [C_K2N_TDATA_WIDTH-1:0] k2n_tdata;
wire [C_K2N_TDEST_WIDTH-1:0] k2n_tdest;
wire [C_K2N_TDATA_WIDTH/8-1:0] k2n_tkeep;
wire [1-1:0] k2n_tlast;
// AXI4-Stream slave (read_only) interface n2k
wire [1-1:0] n2k_tvalid;
wire [1-1:0] n2k_tready;
wire [C_N2K_TDATA_WIDTH-1:0] n2k_tdata;
wire [C_N2K_TDEST_WIDTH-1:0] n2k_tdest;
wire [C_N2K_TDATA_WIDTH/8-1:0] n2k_tkeep;
wire [1-1:0] n2k_tlast;
//AXI4LITE control signals
wire [1-1:0] s_axi_control_awvalid;
wire [1-1:0] s_axi_control_awready;
wire [C_S_AXI_CONTROL_ADDR_WIDTH-1:0] s_axi_control_awaddr;
wire [1-1:0] s_axi_control_wvalid;
wire [1-1:0] s_axi_control_wready;
wire [C_S_AXI_CONTROL_DATA_WIDTH-1:0] s_axi_control_wdata;
wire [C_S_AXI_CONTROL_DATA_WIDTH/8-1:0] s_axi_control_wstrb;
wire [1-1:0] s_axi_control_arvalid;
wire [1-1:0] s_axi_control_arready;
wire [C_S_AXI_CONTROL_ADDR_WIDTH-1:0] s_axi_control_araddr;
wire [1-1:0] s_axi_control_rvalid;
wire [1-1:0] s_axi_control_rready;
wire [C_S_AXI_CONTROL_DATA_WIDTH-1:0] s_axi_control_rdata;
wire [2-1:0] s_axi_control_rresp;
wire [1-1:0] s_axi_control_bvalid;
wire [1-1:0] s_axi_control_bready;
wire [2-1:0] s_axi_control_bresp;
wire interrupt;

// DUT instantiation
pc_core #(
  .C_S_AXI_CONTROL_ADDR_WIDTH ( C_S_AXI_CONTROL_ADDR_WIDTH ),
  .C_S_AXI_CONTROL_DATA_WIDTH ( C_S_AXI_CONTROL_DATA_WIDTH ),
  .C_DRAM0_AXI_ADDR_WIDTH     ( C_DRAM0_AXI_ADDR_WIDTH     ),
  .C_DRAM0_AXI_DATA_WIDTH     ( C_DRAM0_AXI_DATA_WIDTH     ),
  .C_K2N_TDATA_WIDTH          ( C_K2N_TDATA_WIDTH          ),
  .C_K2N_TDEST_WIDTH          ( C_K2N_TDEST_WIDTH          ),
  .C_N2K_TDATA_WIDTH          ( C_N2K_TDATA_WIDTH          ),
  .C_N2K_TDEST_WIDTH          ( C_N2K_TDEST_WIDTH          )
)
inst_dut (
  .ap_clk                ( ap_clk                ),
  .ap_clk_2              ( ap_clk_2              ),
  .ap_rst_n_2            ( ap_rst_n_2            ),
  .ap_rst_n              ( ap_rst_n              ),
  .dram0_axi_awvalid     ( dram0_axi_awvalid     ),
  .dram0_axi_awready     ( dram0_axi_awready     ),
  .dram0_axi_awaddr      ( dram0_axi_awaddr      ),
  .dram0_axi_awlen       ( dram0_axi_awlen       ),
  .dram0_axi_wvalid      ( dram0_axi_wvalid      ),
  .dram0_axi_wready      ( dram0_axi_wready      ),
  .dram0_axi_wdata       ( dram0_axi_wdata       ),
  .dram0_axi_wstrb       ( dram0_axi_wstrb       ),
  .dram0_axi_wlast       ( dram0_axi_wlast       ),
  .dram0_axi_bvalid      ( dram0_axi_bvalid      ),
  .dram0_axi_bready      ( dram0_axi_bready      ),
  .dram0_axi_arvalid     ( dram0_axi_arvalid     ),
  .dram0_axi_arready     ( dram0_axi_arready     ),
  .dram0_axi_araddr      ( dram0_axi_araddr      ),
  .dram0_axi_arlen       ( dram0_axi_arlen       ),
  .dram0_axi_rvalid      ( dram0_axi_rvalid      ),
  .dram0_axi_rready      ( dram0_axi_rready      ),
  .dram0_axi_rdata       ( dram0_axi_rdata       ),
  .dram0_axi_rlast       ( dram0_axi_rlast       ),
  .k2n_tvalid            ( k2n_tvalid            ),
  .k2n_tready            ( k2n_tready            ),
  .k2n_tdata             ( k2n_tdata             ),
  .k2n_tdest             ( k2n_tdest             ),
  .k2n_tkeep             ( k2n_tkeep             ),
  .k2n_tlast             ( k2n_tlast             ),
  .n2k_tvalid            ( n2k_tvalid            ),
  .n2k_tready            ( n2k_tready            ),
  .n2k_tdata             ( n2k_tdata             ),
  .n2k_tdest             ( n2k_tdest             ),
  .n2k_tkeep             ( n2k_tkeep             ),
  .n2k_tlast             ( n2k_tlast             ),
  .s_axi_control_awvalid ( s_axi_control_awvalid ),
  .s_axi_control_awready ( s_axi_control_awready ),
  .s_axi_control_awaddr  ( s_axi_control_awaddr  ),
  .s_axi_control_wvalid  ( s_axi_control_wvalid  ),
  .s_axi_control_wready  ( s_axi_control_wready  ),
  .s_axi_control_wdata   ( s_axi_control_wdata   ),
  .s_axi_control_wstrb   ( s_axi_control_wstrb   ),
  .s_axi_control_arvalid ( s_axi_control_arvalid ),
  .s_axi_control_arready ( s_axi_control_arready ),
  .s_axi_control_araddr  ( s_axi_control_araddr  ),
  .s_axi_control_rvalid  ( s_axi_control_rvalid  ),
  .s_axi_control_rready  ( s_axi_control_rready  ),
  .s_axi_control_rdata   ( s_axi_control_rdata   ),
  .s_axi_control_rresp   ( s_axi_control_rresp   ),
  .s_axi_control_bvalid  ( s_axi_control_bvalid  ),
  .s_axi_control_bready  ( s_axi_control_bready  ),
  .s_axi_control_bresp   ( s_axi_control_bresp   ),
  .interrupt             ( interrupt             )
);

// Master Control instantiation
control_pc_core_vip inst_control_pc_core_vip (
  .aclk          ( ap_clk                ),
  .aresetn       ( ap_rst_n              ),
  .m_axi_awvalid ( s_axi_control_awvalid ),
  .m_axi_awready ( s_axi_control_awready ),
  .m_axi_awaddr  ( s_axi_control_awaddr  ),
  .m_axi_wvalid  ( s_axi_control_wvalid  ),
  .m_axi_wready  ( s_axi_control_wready  ),
  .m_axi_wdata   ( s_axi_control_wdata   ),
  .m_axi_wstrb   ( s_axi_control_wstrb   ),
  .m_axi_arvalid ( s_axi_control_arvalid ),
  .m_axi_arready ( s_axi_control_arready ),
  .m_axi_araddr  ( s_axi_control_araddr  ),
  .m_axi_rvalid  ( s_axi_control_rvalid  ),
  .m_axi_rready  ( s_axi_control_rready  ),
  .m_axi_rdata   ( s_axi_control_rdata   ),
  .m_axi_rresp   ( s_axi_control_rresp   ),
  .m_axi_bvalid  ( s_axi_control_bvalid  ),
  .m_axi_bready  ( s_axi_control_bready  ),
  .m_axi_bresp   ( s_axi_control_bresp   )
);

control_pc_core_vip_mst_t  ctrl;

// Slave MM VIP instantiation
slv_dram0_axi_vip inst_slv_dram0_axi_vip (
  .aclk          ( ap_clk            ),
  .aresetn       ( ap_rst_n          ),
  .s_axi_awvalid ( dram0_axi_awvalid ),
  .s_axi_awready ( dram0_axi_awready ),
  .s_axi_awaddr  ( dram0_axi_awaddr  ),
  .s_axi_awlen   ( dram0_axi_awlen   ),
  .s_axi_wvalid  ( dram0_axi_wvalid  ),
  .s_axi_wready  ( dram0_axi_wready  ),
  .s_axi_wdata   ( dram0_axi_wdata   ),
  .s_axi_wstrb   ( dram0_axi_wstrb   ),
  .s_axi_wlast   ( dram0_axi_wlast   ),
  .s_axi_bvalid  ( dram0_axi_bvalid  ),
  .s_axi_bready  ( dram0_axi_bready  ),
  .s_axi_arvalid ( dram0_axi_arvalid ),
  .s_axi_arready ( dram0_axi_arready ),
  .s_axi_araddr  ( dram0_axi_araddr  ),
  .s_axi_arlen   ( dram0_axi_arlen   ),
  .s_axi_rvalid  ( dram0_axi_rvalid  ),
  .s_axi_rready  ( dram0_axi_rready  ),
  .s_axi_rdata   ( dram0_axi_rdata   ),
  .s_axi_rlast   ( dram0_axi_rlast   )
);


slv_dram0_axi_vip_slv_mem_t   dram0_axi;
slv_dram0_axi_vip_slv_t   dram0_axi_slv;
// AXI4-Stream master (write_only) interface k2n

// AXI4-Stream VIP instantiation
k2n_vip inst_k2n_vip (
  .aclk          ( ap_clk     ),
  .aresetn       ( ap_rst_n   ),
  .s_axis_tvalid ( k2n_tvalid ),
  .s_axis_tready ( k2n_tready ),
  .s_axis_tdata  ( k2n_tdata  ),
  .s_axis_tdest  ( k2n_tdest  ),
  .s_axis_tkeep  ( k2n_tkeep  ),
  .s_axis_tlast  ( k2n_tlast  )
);


k2n_vip_slv_t   k2n_slv;
// AXI4-Stream slave (read_only) interface n2k

// AXI4-Stream VIP instantiation
n2k_vip inst_n2k_vip (
  .aclk          ( ap_clk     ),
  .aresetn       ( ap_rst_n   ),
  .m_axis_tvalid ( n2k_tvalid ),
  .m_axis_tready ( n2k_tready ),
  .m_axis_tdata  ( n2k_tdata  ),
  .m_axis_tdest  ( n2k_tdest  ),
  .m_axis_tkeep  ( n2k_tkeep  ),
  .m_axis_tlast  ( n2k_tlast  )
);


n2k_vip_mst_t   n2k_mst;

parameter NUM_AXIS_MST = 1;
parameter NUM_AXIS_SLV = 1;
parameter NUM_AXIS_PAIRS = 1;
bit               error_found = 0;

///////////////////////////////////////////////////////////////////////////
// Pointer for interface : dram0_axi
bit [63:0] axi00_ptr0_ptr = 64'h0;

axi4stream_monitor_transaction            slv_monitor_tran_q[1][$];
string                                    slv_name_q[$];
string                                    slv_name_q_tmp[$];

byte                                      original_byte_q[1][$];
axi4stream_transaction                    trans_q[1][$];
axi4stream_monitor_transaction            mst_monitor_tran_q[1][$];
string                                    mst_name_q[$];

string                                    mst_pairs_name_q[$];
string                                    slv_pairs_name_q[$];

axi4stream_monitor_transaction            k2n_slv_monitor_transaction;

axi4stream_monitor_transaction            n2k_mst_monitor_transaction;

/////////////////////////////////////////////////////////////////////////////////////////////////
// Backdoor fill the dram0_axi memory.
function void dram0_axi_fill_memory(
  input bit [63:0] ptr,
  input integer    length
);
  for (longint unsigned slot = 0; slot < length; slot++) begin
    dram0_axi.mem_model.backdoor_memory_write_4byte(ptr + (slot * 4), slot);
  end
endfunction

task automatic system_reset_sequence(input integer unsigned width = 20);
  $display("%t : Starting System Reset Sequence", $time);
  fork
    ap_rst_n_sequence(25);
    ap_rst_n_2_sequence(25);
    
  join

  // Clear slave queue
  for(xil_axi4stream_uint slv=0; slv< NUM_AXIS_SLV; slv++) begin
    slv_monitor_tran_q[slv] = {};
  end

endtask


/////////////////////////////////////////////////////////////////////////////////////////////////
// Generate a random 32bit number
function bit [31:0] get_random_4bytes();
  bit [31:0] rptr;
  ptr_random_failed: assert(std::randomize(rptr));
  return(rptr);
endfunction

/////////////////////////////////////////////////////////////////////////////////////////////////
// Generate a random 64bit 4k aligned address pointer.
function bit [63:0] get_random_ptr();
  bit [63:0] rptr;
  ptr_random_failed: assert(std::randomize(rptr));
  rptr[31:0] &= ~(32'h00000fff);
  return(rptr);
endfunction

/////////////////////////////////////////////////////////////////////////////////////////////////
// Control interface non-blocking write
// The task will return when the transaction has been accepted by the driver. It will be some
// amount of time before it will appear on the interface.
task automatic write_register (input bit [31:0] addr_in, input bit [31:0] data);
  axi_transaction   wr_xfer;
  wr_xfer = ctrl.wr_driver.create_transaction("wr_xfer");
  assert(wr_xfer.randomize() with {addr == addr_in;});
  wr_xfer.set_data_beat(0, data);
  ctrl.wr_driver.send(wr_xfer);
endtask

/////////////////////////////////////////////////////////////////////////////////////////////////
// Control interface blocking write
// The task will return when the BRESP has been returned from the kernel.
task automatic blocking_write_register (input bit [31:0] addr_in, input bit [31:0] data);
  axi_transaction   wr_xfer;
  axi_transaction   wr_rsp;
  wr_xfer = ctrl.wr_driver.create_transaction("wr_xfer");
  wr_xfer.set_driver_return_item_policy(XIL_AXI_PAYLOAD_RETURN);
  assert(wr_xfer.randomize() with {addr == addr_in;});
  wr_xfer.set_data_beat(0, data);
  ctrl.wr_driver.send(wr_xfer);
  ctrl.wr_driver.wait_rsp(wr_rsp);
endtask

/////////////////////////////////////////////////////////////////////////////////////////////////
// Control interface blocking read
// The task will return when the BRESP has been returned from the kernel.
task automatic read_register (input bit [31:0] addr, output bit [31:0] rddata);
  axi_transaction   rd_xfer;
  axi_transaction   rd_rsp;
  bit [31:0] rd_value;
  rd_xfer = ctrl.rd_driver.create_transaction("rd_xfer");
  rd_xfer.set_addr(addr);
  rd_xfer.set_driver_return_item_policy(XIL_AXI_PAYLOAD_RETURN);
  ctrl.rd_driver.send(rd_xfer);
  ctrl.rd_driver.wait_rsp(rd_rsp);
  rd_value = rd_rsp.get_data_beat(0);
  rddata = rd_value;
endtask



/////////////////////////////////////////////////////////////////////////////////////////////////
// Poll the Control interface status register.
// This will poll until the DONE flag in the status register is asserted.
task automatic poll_done_register ();
  bit [31:0] rd_value;
  do begin
    read_register(KRNL_CTRL_REG_ADDR, rd_value);
  end while ((rd_value & CTRL_DONE_MASK) == 0);
endtask

// This will poll until the IDLE flag in the status register is asserted.
task automatic poll_idle_register ();
  bit [31:0] rd_value;
  do begin
    read_register(KRNL_CTRL_REG_ADDR, rd_value);
  end while ((rd_value & CTRL_IDLE_MASK) == 0);
endtask

/////////////////////////////////////////////////////////////////////////////////////////////////
// Write to the control registers to enable the triggering of interrupts for the kernel
task automatic enable_interrupts();
  $display("Starting: Enabling Interrupts....");
  write_register(KRNL_GIE_REG_ADDR, GIE_GIE_MASK);
  write_register(KRNL_IER_REG_ADDR, IER_DONE_MASK);
  $display("Finished: Interrupts enabled.");
endtask

/////////////////////////////////////////////////////////////////////////////////////////////////
// Disabled the interrupts.
task automatic disable_interrupts();
  $display("Starting: Disable Interrupts....");
  write_register(KRNL_GIE_REG_ADDR, 32'h0);
  write_register(KRNL_IER_REG_ADDR, 32'h0);
  $display("Finished: Interrupts disabled.");
endtask

/////////////////////////////////////////////////////////////////////////////////////////////////
//When the interrupt is asserted, read the correct registers and clear the asserted interrupt.
task automatic service_interrupts();
  bit [31:0] rd_value;
  $display("Starting Servicing interrupts....");
  read_register(KRNL_CTRL_REG_ADDR, rd_value);
  $display("Control Register: 0x%0x", rd_value);

  blocking_write_register(KRNL_CTRL_REG_ADDR, rd_value);

  if ((rd_value & CTRL_DONE_MASK) == 0) begin
    $error("%t : DONE bit not asserted. Register value: (0x%0x)", $time, rd_value);
  end
  read_register(KRNL_ISR_REG_ADDR, rd_value);
  $display("Interrupt Status Register: 0x%0x", rd_value);
  blocking_write_register(KRNL_ISR_REG_ADDR, rd_value);
  $display("Finished Servicing interrupts");
endtask

/////////////////////////////////////////////////////////////////////////////////////////////////
// Start the control VIP, SLAVE memory models and AXI4-Stream.
task automatic start_vips();

  $display("///////////////////////////////////////////////////////////////////////////");
  $display("Control Master: ctrl");
  ctrl = new("ctrl", pc_core_tb.inst_control_pc_core_vip.inst.IF);
  ctrl.start_master();

  slv_pairs_name_q.push_back("k2n");
  mst_pairs_name_q.push_back("n2k");

  $display("///////////////////////////////////////////////////////////////////////////");
  $display("Starting Memory slave: dram0_axi");
  dram0_axi = new("dram0_axi", pc_core_tb.inst_slv_dram0_axi_vip.inst.IF);
  dram0_axi.start_slave();

  $display("///////////////////////////////////////////////////////////////////////////");
  $display("Starting AXI4-Stream slv: k2n");
  k2n_slv = new("k2n", pc_core_tb.inst_k2n_vip.inst.IF);
  k2n_slv.start_slave();

  slv_name_q.push_back("k2n");

  $display("///////////////////////////////////////////////////////////////////////////");
  $display("Starting AXI4-Stream mst: n2k");
  n2k_mst = new("n2k", pc_core_tb.inst_n2k_vip.inst.IF);
  n2k_mst.start_master();

  mst_name_q.push_back("n2k");

endtask

/////////////////////////////////////////////////////////////////////////////////////////////////
// For each of the connected slave interfaces, set the Slave to not de-assert WREADY at any time.
// This will show the fastest outbound bandwidth from the WRITE channel.
task automatic slv_no_backpressure_wready();
  axi_ready_gen     rgen;
  $display("%t - Applying slv_no_backpressure_wready", $time);

  rgen = new("dram0_axi_no_backpressure_wready");
  rgen.set_ready_policy(XIL_AXI_READY_GEN_NO_BACKPRESSURE);
  dram0_axi.wr_driver.set_wready_gen(rgen);

endtask

task automatic slv_no_backpressure_tready();
  $display("%t - Applying slv_no_backpressure_tready", $time);
  fork

  begin
    axi4stream_ready_gen rgen_k2n_slv;
    rgen_k2n_slv = new("k2n_slv_no_backpressure_ready");
    rgen_k2n_slv.set_ready_policy(XIL_AXI4STREAM_READY_GEN_NO_BACKPRESSURE);
    k2n_slv.driver.send_tready(rgen_k2n_slv);
  end

join_none
endtask


/////////////////////////////////////////////////////////////////////////////////////////////////
// For each of the connected slave interfaces, apply a WREADY policy to introduce backpressure.
// Based on the simulation seed the order/shape of the WREADY per-channel will be different.
task automatic slv_random_backpressure_wready();
  axi_ready_gen     rgen;
  $display("%t - Applying slv_random_backpressure_wready", $time);

  rgen = new("dram0_axi_random_backpressure_wready");
  rgen.set_ready_policy(XIL_AXI_READY_GEN_RANDOM);
  rgen.set_low_time_range(0,12);
  rgen.set_high_time_range(1,12);
  rgen.set_event_count_range(3,5);
  dram0_axi.wr_driver.set_wready_gen(rgen);

endtask


task automatic slv_random_backpressure_tready();
  $display("%t - Applying slv_random_backpressure_tready", $time);
  fork

  begin
    axi4stream_ready_gen rgen_k2n_slv;
    rgen_k2n_slv = new("k2n_slv_random_backpressure_wready");
    rgen_k2n_slv.set_ready_policy(XIL_AXI4STREAM_READY_GEN_RANDOM);
    rgen_k2n_slv.set_low_time_range(0,12);
    rgen_k2n_slv.set_high_time_range(1,12);
    rgen_k2n_slv.set_event_count_range(3,5);
    k2n_slv.driver.send_tready(rgen_k2n_slv);
  end

join_none
endtask


/////////////////////////////////////////////////////////////////////////////////////////////////
// For each of the connected slave interfaces, force the memory model to not insert any inter-beat
// gaps on the READ channel.
task automatic slv_no_delay_rvalid();
  $display("%t - Applying slv_no_delay_rvalid", $time);

  dram0_axi.mem_model.set_inter_beat_gap_delay_policy(XIL_AXI_MEMORY_DELAY_FIXED);
  dram0_axi.mem_model.set_inter_beat_gap(0);

endtask

/////////////////////////////////////////////////////////////////////////////////////////////////
// For each of the connected slave interfaces, Allow the memory model to insert any inter-beat
// gaps on the READ channel.
task automatic slv_random_delay_rvalid();
  $display("%t - Applying slv_random_delay_rvalid", $time);

  dram0_axi.mem_model.set_inter_beat_gap_delay_policy(XIL_AXI_MEMORY_DELAY_RANDOM);
  dram0_axi.mem_model.set_inter_beat_gap_range(0,10);

endtask

task automatic start_stream_tready();
bit choose_pressure_type = 0;
RAND_TREADY_PRESSURE_FAILED: assert(std::randomize(choose_pressure_type));
case(choose_pressure_type)
0: slv_no_backpressure_tready();
1: slv_random_backpressure_tready();
endcase
endtask

function automatic void rand_value(inout integer seed, inout xil_axi4stream_uint incre_value,inout bit random_only,inout xil_axi4stream_uint start_value, inout xil_axi4stream_uint num_words);
   seed_random_failure: assert(std::randomize(seed));
   random_only_failure: assert(std::randomize(random_only));
   incre_value = $urandom() %6;
   start_value = $urandom() %6;
   num_words = $urandom_range(40,100);
   //$display("random_only=%d incr_value=%d start_value=%d num_words=%d",random_only,incre_value,start_value,num_words);
endfunction
///////////////////////////////////////////////////////////////////////////////////////////
task automatic start_stream_traffic();
  ///////////////////////////////////////////////////////////////////////////
  fork

    begin
      integer                                seed_n2k_mst;
      xil_axi4stream_uint                    incremental_n2k_mst;
      bit                                    random_only_n2k_mst;
      xil_axi4stream_uint                    start_value_n2k_mst;
      xil_axi4stream_uint                    num_words_n2k_mst;
      axi4stream_transaction                 trans_q_n2k_mst[$];
      byte                                   original_byte_q_n2k_mst[$];
      axi4stream_transaction                 wr_transaction_n2k_mst;
      xil_axi4stream_uint                    data_width_n2k_mst;
      xil_axi4stream_uint                    user_width_n2k_mst;
      xil_axi4stream_uint                    total_trans_n2k_mst;
      xil_axi4stream_data_beat               data_beat_n2k_mst;
      bit[31:0]                              tmp_word_n2k_mst;
      xil_axi4stream_strb_beat               keep_beat_n2k_mst;
      byte                                   byte_q_n2k_mst[$];
      rand_value(seed_n2k_mst,incremental_n2k_mst,random_only_n2k_mst,start_value_n2k_mst,num_words_n2k_mst);
      if(random_only_n2k_mst ==1) begin
        for(xil_axi4stream_uint word_cnt =0; word_cnt < num_words_n2k_mst; word_cnt++) begin
          tmp_word_n2k_mst = $random(seed_n2k_mst);
          for(xil_axi4stream_uint byte_cnt =0; byte_cnt <4; byte_cnt++) begin
            byte_q_n2k_mst.push_back(tmp_word_n2k_mst[byte_cnt]);
          end
        end
      end else begin
        for(xil_axi4stream_uint word_cnt =0; word_cnt < num_words_n2k_mst ; word_cnt++) begin
          tmp_word_n2k_mst = start_value_n2k_mst + word_cnt*incremental_n2k_mst;
          for(xil_axi4stream_uint byte_cnt =0; byte_cnt <4; byte_cnt++) begin
            byte_q_n2k_mst.push_back(tmp_word_n2k_mst[byte_cnt*8+:8]);
          end
        end
      end
      wr_transaction_n2k_mst = n2k_mst.driver.create_transaction("n2k_axis transaction_n2k_mst");
      data_width_n2k_mst = wr_transaction_n2k_mst.get_data_width();
      user_width_n2k_mst = wr_transaction_n2k_mst.get_user_width();
      if((num_words_n2k_mst*4)%(data_width_n2k_mst/8) !=0) begin
        $display("Warning, stream VIP TDATA_WIDTH of n2k_mst is %d byte, the number of words you wants to pass in a whole packet is %d, the last transfer will be filled with 0",data_width_n2k_mst, num_words_n2k_mst);
      end
      if( (num_words_n2k_mst*4)% (data_width_n2k_mst/8) !=0 ) begin
        total_trans_n2k_mst = (num_words_n2k_mst*4)/ (data_width_n2k_mst/8)+1;
      end else begin
        total_trans_n2k_mst = (num_words_n2k_mst*4)/ (data_width_n2k_mst/8) ;
      end
      for(xil_axi4stream_uint i=0; i<total_trans_n2k_mst; i++) begin
        for(xil_axi4stream_uint byte_cnt=0; byte_cnt<data_width_n2k_mst/8; byte_cnt++) begin
          data_beat_n2k_mst[byte_cnt*8+:8] = byte_q_n2k_mst.pop_front();
          keep_beat_n2k_mst[byte_cnt]=1'b1;
        end
        wr_transaction_n2k_mst.set_data_beat(data_beat_n2k_mst);
        wr_transaction_n2k_mst.set_user_beat('0);
        if (data_width_n2k_mst > 8) begin
          wr_transaction_n2k_mst.set_keep_beat(keep_beat_n2k_mst);
        end
        wr_transaction_n2k_mst.set_last(0);
        if(i == total_trans_n2k_mst-1) begin
          wr_transaction_n2k_mst.set_last(1);
        end
        n2k_mst.driver.send(wr_transaction_n2k_mst);
      end
    end

  join_none
endtask

/////////////////////////////////////////////////////////////////////////////////////////////////
// Check to ensure, following reset the value of the register is 0.
// Check that only the width of the register bits can be written.
task automatic check_register_value(input bit [31:0] addr_in, input integer unsigned register_width, output bit error_found);
  bit [31:0] rddata;
  bit [31:0] mask_data;
  error_found = 0;
  if (register_width < 32) begin
    mask_data = (1 << register_width) - 1;
  end else begin
    mask_data = 32'hffffffff;
  end
  read_register(addr_in, rddata);
  if (rddata != 32'h0) begin
    $error("Initial value mismatch: A:0x%0x : Expected 0x%x -> Got 0x%x", addr_in, 0, rddata);
    error_found = 1;
  end
  blocking_write_register(addr_in, 32'hffffffff);
  read_register(addr_in, rddata);
  if (rddata != mask_data) begin
    $error("Initial value mismatch: A:0x%0x : Expected 0x%x -> Got 0x%x", addr_in, mask_data, rddata);
    error_found = 1;
  end
endtask


/////////////////////////////////////////////////////////////////////////////////////////////////
// For each of the scalar registers, check:
// * reset value
// * correct number bits set on a write
task automatic check_scalar_registers(output bit error_found);
  bit tmp_error_found = 0;
  error_found = 0;
  $display("%t : Checking post reset values of scalar registers", $time);

  ///////////////////////////////////////////////////////////////////////////
  //Check ID 0: coreconfig (0x010)
  check_register_value(32'h010, 32, tmp_error_found);
  error_found |= tmp_error_found;

endtask

task automatic set_scalar_registers();
  $display("%t : Setting Scalar Registers registers", $time);

  ///////////////////////////////////////////////////////////////////////////
  //Write ID 0: coreconfig (0x010) -> 32'hffffffff (scalar)
  write_register(32'h010, 32'hffffffff);

endtask

task automatic check_pointer_registers(output bit error_found);
  bit tmp_error_found = 0;
  ///////////////////////////////////////////////////////////////////////////
  //Check the reset states of the pointer registers.
  $display("%t : Checking post reset values of pointer registers", $time);

  ///////////////////////////////////////////////////////////////////////////
  //Write ID 1: axi00_ptr0 (0x018)
  check_register_value(32'h018, 32, tmp_error_found);
  error_found |= tmp_error_found;

  ///////////////////////////////////////////////////////////////////////////
  //Write ID 1: axi00_ptr0 (0x01c)
  check_register_value(32'h01c, 32, tmp_error_found);
  error_found |= tmp_error_found;

endtask

task automatic set_memory_pointers();
  ///////////////////////////////////////////////////////////////////////////
  //Randomly generate memory pointers.
  axi00_ptr0_ptr = get_random_ptr();

  ///////////////////////////////////////////////////////////////////////////
  //Write ID 1: axi00_ptr0 (0x018) -> Randomized 4k aligned address (Global memory, lower 32 bits)
  write_register(32'h018, axi00_ptr0_ptr[31:0]);

  ///////////////////////////////////////////////////////////////////////////
  //Write ID 1: axi00_ptr0 (0x01c) -> Randomized 4k aligned address (Global memory, upper 32 bits)
  write_register(32'h01c, axi00_ptr0_ptr[63:32]);

endtask

task automatic backdoor_fill_memories();

  /////////////////////////////////////////////////////////////////////////////////////////////////
  // Backdoor fill the memory with the content.
  dram0_axi_fill_memory(axi00_ptr0_ptr, LP_MAX_LENGTH);

endtask

function automatic bit check_kernel_result();
  bit [31:0]        ret_rd_value = 32'h0;
  bit error_found = 0;
  integer error_counter;
  error_counter = 0;

  /////////////////////////////////////////////////////////////////////////////////////////////////
  // Checking memory connected to dram0_axi
  for (longint unsigned slot = 0; slot < LP_MAX_LENGTH; slot++) begin
    ret_rd_value = dram0_axi.mem_model.backdoor_memory_read_4byte(axi00_ptr0_ptr + (slot * 4));
    if (slot < LP_MAX_TRANSFER_LENGTH) begin
      if (ret_rd_value != (slot + 1)) begin
        $error("Memory Mismatch: dram0_axi : @0x%x : Expected 0x%x -> Got 0x%x ", axi00_ptr0_ptr + (slot * 4), slot + 1, ret_rd_value);
        error_found |= 1;
        error_counter++;
      end
    end else begin
      if (ret_rd_value != slot) begin
        $error("Memory Mismatch: dram0_axi : @0x%x : Expected 0x%x -> Got 0x%x ", axi00_ptr0_ptr + (slot * 4), slot, ret_rd_value);
        error_found |= 1;
        error_counter++;
      end
    end
    if (error_counter > 5) begin
      $display("Too many errors found. Exiting check of dram0_axi.");
      slot = LP_MAX_LENGTH;
    end
  end
  error_counter = 0;

  return(error_found);
endfunction

bit choose_pressure_type = 0;
bit axis_choose_pressure_type = 0;
bit [2-1:0] axis_tlast_received;

/////////////////////////////////////////////////////////////////////////////////////////////////
// Set up the kernel for operation and set the kernel START bit.
// The task will poll the DONE bit and check the results when complete.
task automatic multiple_iteration(input integer unsigned num_iterations, output bit error_found);
  error_found = 0;

  $display("Starting: multiple_iteration");
  for (integer unsigned iter = 0; iter < num_iterations; iter++) begin

    axis_tlast_received = 2'h0;
    $display("Starting iteration: %d / %d", iter+1, num_iterations);
    RAND_WREADY_PRESSURE_FAILED: assert(std::randomize(choose_pressure_type));
    case(choose_pressure_type)
      0: slv_no_backpressure_wready();
      1: slv_random_backpressure_wready();
    endcase
    RAND_RVALID_PRESSURE_FAILED: assert(std::randomize(choose_pressure_type));
    case(choose_pressure_type)
      0: slv_no_delay_rvalid();
      1: slv_random_delay_rvalid();
    endcase

    set_scalar_registers();
    set_memory_pointers();
    backdoor_fill_memories();
    // Check that Kernel is IDLE before starting.
    poll_idle_register();
    ///////////////////////////////////////////////////////////////////////////
    //Start transfers
    blocking_write_register(KRNL_CTRL_REG_ADDR, CTRL_START_MASK);

    fork
      start_stream_tready();
      start_stream_traffic();
    join_none

    ctrl.wait_drivers_idle();
    ///////////////////////////////////////////////////////////////////////////
    //Wait for interrupt being asserted or poll done register
    @(posedge interrupt);

    ///////////////////////////////////////////////////////////////////////////
    // Service the interrupt
    service_interrupts();
    wait(interrupt == 0);

    ///////////////////////////////////////////////////////////////////////////
    error_found |= check_kernel_result()   ;

    error_found |= check_axis_result();

    $display("Finished iteration: %d / %d", iter+1, num_iterations);
  end
 endtask

function automatic void data_comparison(bit[31:0] slv_data, bit[31:0] expected_data, ref xil_axi4stream_uint err_cnt, ref bit error_found);
  if (slv_data != expected_data ) begin
    $error("Expected data beat(%h) does not match received slave monitor data beat(%h).", expected_data, slv_data);
    err_cnt++;
    error_found |=1;
  end
endfunction

function automatic xil_axi4stream_uint get_total_bytes(ref axi4stream_monitor_transaction mon[$]);
 xil_axi4stream_uint total_bytes;
 xil_axi4stream_uint size;
 xil_axi4stream_uint dw;
 xil_axi4stream_strb_beat keep;
 size = mon.size();
 keep = mon[size-1].get_keep_beat();
 dw = mon[0].get_data_width()/8;
 total_bytes = (size-1)*dw;
 for (xil_axi4stream_uint i = 0; i < dw; i++) begin
   if (keep[i] == 1'b1 || dw == 1) begin
     total_bytes++;
   end
   else begin
     break;
   end
 end
 return total_bytes;
endfunction


function automatic void check_monitor_result(ref axi4stream_monitor_transaction slv_mon[$], ref axi4stream_monitor_transaction mst_mon[$], ref xil_axi4stream_uint err_cnt, ref bit error_found);
  axi4stream_monitor_transaction  mst_tran;
  axi4stream_monitor_transaction  slv_tran;
  xil_axi4stream_data_beat        mst_data;
  xil_axi4stream_data_beat        slv_data;
  bit[31:0]                       mst_word;
  bit[31:0]                       slv_word;
  xil_axi4stream_uint             slv_trans_size;
  xil_axi4stream_uint             mst_trans_size;
  xil_axi4stream_uint             slv_data_width;
  xil_axi4stream_uint             mst_data_width;

  slv_data_width = slv_mon[0].get_data_width();
  mst_data_width = mst_mon[0].get_data_width();
  if(get_total_bytes(slv_mon) != get_total_bytes(mst_mon)) begin
    $error("Number of bytes in slv_mon (%d) does not equal mst_mon(%d)",get_total_bytes(slv_mon),get_total_bytes(mst_mon));
    error_found = 1;
    err_cnt     += 1;
    return;
  end
  mst_trans_size = mst_mon.size();
  slv_trans_size = slv_mon.size();
  if (mst_data_width >= slv_data_width) begin
  //$display("mst_data_width=%d >= slv_data_width=%d",mst_data_width,slv_data_width);
    for(xil_axi4stream_uint mst_trans =0; mst_trans< mst_trans_size; mst_trans++) begin
      xil_axi4stream_strb_beat mst_keep ;
      bit slv_last;
      bit mst_last;
      mst_tran = mst_mon.pop_front();
      mst_last = mst_tran.get_last();
      mst_data = mst_tran.get_data_beat();
      if (mst_last == 1'b1) begin
        mst_keep = mst_tran.get_keep_beat();
      end

      for (xil_axi4stream_uint slv_trans = 0; slv_trans < mst_data_width / slv_data_width; slv_trans++) begin
        xil_axi4stream_strb_beat slv_keep ;
        slv_tran = slv_mon.pop_front();
        slv_data = slv_tran.get_data_beat();
        slv_last = slv_tran.get_last();
         if (slv_last == 1'b1) begin
          if (mst_last == 1'b0) begin
            $error("slv_mon received tlast, but mst_mon still has transfers");
          end

          slv_keep = slv_tran.get_keep_beat();

        end
         for(xil_axi4stream_uint word_cnt=0; word_cnt <(slv_data_width/32); word_cnt++) begin
          if (~slv_last || slv_keep[word_cnt*(slv_data_width/32/8)+:32/8] == '1) begin
            for(xil_axi4stream_uint byte_cnt=0; byte_cnt <4; byte_cnt++) begin
              slv_word[(byte_cnt*8)+:8] = slv_data[(word_cnt*32+byte_cnt*8)+:8];
              mst_word[(byte_cnt*8)+:8] = mst_data[(slv_trans*slv_data_width)+(word_cnt*32+byte_cnt*8)+:8];
            end
            data_comparison(slv_word,mst_word+1,err_cnt,error_found);
            if (err_cnt > 5) begin
              $display("Too many errors found. Exiting check...");
              return;
            end
          end
        end
        if (slv_last) begin
          break;
        end
      end
    end
  end
  else begin
  //$display("mst_data_width=%d < slv_data_width=%d",mst_data_width,slv_data_width);
    for(xil_axi4stream_uint slv_trans =0; slv_trans< slv_trans_size; slv_trans++) begin
      xil_axi4stream_strb_beat slv_keep ;
      bit mst_last;
      bit slv_last;
      slv_tran = slv_mon.pop_front();
      slv_last = slv_tran.get_last();
      slv_data = slv_tran.get_data_beat();
      if (slv_last == 1'b1) begin
        slv_keep = slv_tran.get_keep_beat();
      end

      for (xil_axi4stream_uint mst_trans = 0; mst_trans < slv_data_width / mst_data_width; mst_trans++) begin
        xil_axi4stream_strb_beat mst_keep ;
        mst_tran = mst_mon.pop_front();
        mst_data = mst_tran.get_data_beat();
        mst_last = mst_tran.get_last();
         if (mst_last == 1'b1) begin
          if (slv_last == 1'b0) begin
            $error("mst_mon received tlast, but slv_mon still has tranfers");
          end

          mst_keep = mst_tran.get_keep_beat();

        end
         for(xil_axi4stream_uint word_cnt=0; word_cnt <(mst_data_width/32); word_cnt++) begin
          if (~mst_last || mst_keep[word_cnt*(mst_data_width/32/8)+:32/8] == '1) begin
            for(xil_axi4stream_uint byte_cnt=0; byte_cnt <4; byte_cnt++) begin
              mst_word[(byte_cnt*8)+:8] = mst_data[(word_cnt*32+byte_cnt*8)+:8];
              slv_word[(byte_cnt*8)+:8] = slv_data[(mst_trans*mst_data_width)+(word_cnt*32+byte_cnt*8)+:8];
            end
          //   $info("loop slv_trans.mst_trans.word_cnt.slv_data_index %d.%d.%d", slv_trans, mst_trans, word_cnt, (mst_trans*mst_data_width)+(word_cnt*32));
            data_comparison(slv_word, mst_word+1,err_cnt,error_found);
            if (err_cnt > 5) begin
              $display("Too many errors found. Exiting check...");
              return;
            end
          end
        end
        if (mst_last) begin
          break;
        end
      end
    end
  end
endfunction

function automatic void check_autogen_monitor_result(ref axi4stream_monitor_transaction slv_mon[$], ref xil_axi4stream_uint err_cnt, ref bit error_found);
  axi4stream_monitor_transaction  slv_tran;
  xil_axi4stream_data_beat        slv_data;
  xil_axi4stream_ulong            shift_bit;
  bit[31:0]                       slv_word;
  bit [31:0]                      auto_gen_word =0;
  bit [31:0]                      final_word;
   while(slv_mon.size() >0) begin
    slv_tran = slv_mon.pop_front();
    slv_data = slv_tran.get_data_beat();
    if (slv_tran.get_data_width() <32) begin
      slv_word = slv_data;
      auto_gen_word +=1;
      shift_bit = (1<< slv_tran.get_data_width()) -1;
      final_word = auto_gen_word & shift_bit;
      data_comparison(slv_word,final_word, err_cnt, error_found);
      if (err_cnt > 5) begin
       $display("Too many errors found. Exiting check...");
       return;
      end
    end else begin
      for(xil_axi4stream_uint word_cnt=0; word_cnt <(slv_tran.get_data_width()/32); word_cnt++) begin
        slv_word = slv_data[(word_cnt*32)+:32];
        auto_gen_word +=1;
        data_comparison(slv_word,auto_gen_word, err_cnt, error_found);
        if (err_cnt > 5) begin
          $display("Too many errors found. Exiting check...");
          return;
        end
      end
    end
  end
endfunction

function automatic bit check_axis_result();
  //compare slave side monitor transaction with master side monitor transaction if the data width match
  string      mst_s="";
  string      slv_s="";
  string      mst_s1="";

  xil_axi4stream_uint mst_monitor_data_width_q[];

  xil_axi4stream_uint i =0 ;
  xil_axi4stream_uint slv_monitor_data_width_q[];
  xil_axi4stream_uint axis_error_cnt =0;
  bit axis_error_found =0;
  xil_axi4stream_uint unique_slv_data_width_q[$];
  xil_axi4stream_uint unique_cnt;
  slv_monitor_data_width_q = new[1];

  mst_monitor_data_width_q = new[1];
  for(xil_axi4stream_uint mst=0; mst< NUM_AXIS_MST; mst++) begin
    if(mst_monitor_tran_q[mst].size()>0) begin
      mst_monitor_data_width_q[mst] = mst_monitor_tran_q[mst][0].get_data_width();
    end
    else begin
      $info("Master monitor transaction queue %s %1d is empty. ", mst_s, mst);
      mst_monitor_data_width_q[mst] = 0;
    end
  end

  slv_name_q_tmp = slv_name_q;
  for(xil_axi4stream_uint slv=0; slv< NUM_AXIS_SLV; slv++) begin
    slv_s = slv_name_q_tmp.pop_front();
    slv_monitor_data_width_q[slv] = slv_monitor_tran_q[slv][0].get_data_width();
    for(i=0; i < NUM_AXIS_PAIRS; i++) begin
      if ( slv_pairs_name_q[i] == slv_s ) begin
        mst_s1 = mst_pairs_name_q[i];
        break;
      end
    end
 
    if ( mst_s1 == "GENERATOR" ) begin
      $info("Check slv %s against autogeneration", slv_s);
      check_autogen_monitor_result(slv_monitor_tran_q[slv],axis_error_cnt,axis_error_found);
    end
    else begin
      for (xil_axi4stream_uint mst=0; mst< NUM_AXIS_MST; mst++) begin
        if ( mst_name_q[mst] == mst_s1 ) begin
          $info("Check slv %s against mst %s", slv_s, mst_s1);
          $info("check slv_monitor_data_width_q[%d] =%h agaist mst_monitor_data_width_q[%d] =%h",slv, slv_monitor_data_width_q[slv], mst,mst_monitor_data_width_q[mst]);
          check_monitor_result(slv_monitor_tran_q[slv],mst_monitor_tran_q[mst], axis_error_cnt, axis_error_found);
          break;
        end
      end
    end

  end
  return(axis_error_found);
endfunction

initial begin
  #200001;
  fork

  forever begin
    k2n_slv.monitor.item_collected_port.get(k2n_slv_monitor_transaction);
    if (k2n_slv_monitor_transaction.get_last())
      axis_tlast_received[0] = 1'b1;
    slv_monitor_tran_q[0].push_back(k2n_slv_monitor_transaction);
  end

  forever begin
    n2k_mst.monitor.item_collected_port.get(n2k_mst_monitor_transaction);
    if (n2k_mst_monitor_transaction.get_last())
      axis_tlast_received[1] = 1'b1;
    mst_monitor_tran_q[0].push_back(n2k_mst_monitor_transaction);
  end

join_none
end

/////////////////////////////////////////////////////////////////////////////////////////////////
//Instantiate AXI4 LITE VIP
initial begin : STIMULUS
  #200000;
  start_vips();
  check_scalar_registers(error_found);
  if (error_found == 1) begin
    $display( "Test Failed!");
    $finish();
  end

  check_pointer_registers(error_found);
  if (error_found == 1) begin
    $display( "Test Failed!");
    $finish();
  end

  enable_interrupts();

  multiple_iteration(1, error_found);
  if (error_found == 1) begin
    $display( "Test Failed!");
    $finish();
  end

  multiple_iteration(5, error_found);

  if (error_found == 1) begin
    $display( "Test Failed!");
    $finish();
  end
  /////////////////////////////////////////////////////////////////////////////////////////////////
  // Reset Recovery testing
  system_reset_sequence();
  check_scalar_registers(error_found);
  if (error_found == 1) begin
    $display( "Test Failed!");
    $finish();
  end
  check_pointer_registers(error_found);
  if (error_found == 1) begin
    $display( "Test Failed!");
    $finish();
  end

  enable_interrupts();

  multiple_iteration(1, error_found);

  if (error_found == 1) begin
    $display( "Test Failed!");
    $finish();
  end else begin
    $display( "Test completed successfully");
  end
  $finish;
end

endmodule
`default_nettype wire

