`timescale 1ns / 1ps

module data_fifo_krnl_tb;

  // System signals
  reg ap_clk;
  reg ap_rst_n;

  // AXI4-Stream VIP signals for RX and TX
  wire [511:0] rx_axis_tdata;
  wire         rx_axis_tvalid;
  wire         rx_axis_tlast;
  wire [63:0]  rx_axis_tkeep;
  wire         rx_axis_tuser;
  wire         rx_axis_tready;

  wire [511:0] tx_axis_tdata;
  wire         tx_axis_tvalid;
  wire         tx_axis_tlast;
  wire [63:0]  tx_axis_tkeep;
  wire         tx_axis_tuser;
  wire         tx_axis_tready;

  // AXI4 memory interface signals (connected to MIG for simulation)
  wire [33:0]  m_axi_awaddr;
  wire [7:0]   m_axi_awlen;
  wire         m_axi_awvalid;
  wire         m_axi_awready;
  wire [511:0] m_axi_wdata;
  wire [63:0]  m_axi_wstrb;
  wire         m_axi_wvalid;
  wire         m_axi_wready;
  wire         m_axi_bvalid;
  wire         m_axi_bready;
  wire [33:0]  m_axi_araddr;
  wire [7:0]   m_axi_arlen;
  wire         m_axi_arvalid;
  wire         m_axi_arready;
  wire [511:0] m_axi_rdata;
  wire         m_axi_rvalid;
  wire         m_axi_rready;

  // Random payload data
  logic [511:0] rx_payload_data;

  // Instantiate the MIG DDR4 controller for simulation
  ddr4_0 u_mig_axi4 (
    .axi_awaddr(m_axi_awaddr),
    .axi_awlen(m_axi_awlen),
    .axi_awvalid(m_axi_awvalid),
    .axi_awready(m_axi_awready),
    .axi_wdata(m_axi_wdata),
    .axi_wstrb(m_axi_wstrb),
    .axi_wvalid(m_axi_wvalid),
    .axi_wready(m_axi_wready),
    .axi_bvalid(m_axi_bvalid),
    .axi_bready(m_axi_bready),
    .axi_araddr(m_axi_araddr),
    .axi_arlen(m_axi_arlen),
    .axi_arvalid(m_axi_arvalid),
    .axi_arready(m_axi_arready),
    .axi_rdata(m_axi_rdata),
    .axi_rvalid(m_axi_rvalid),
    .axi_rready(m_axi_rready)
  );

  // AXI4-Stream VIP Instantiation for RX (Master VIP)
  axi4stream_vip_0 rx_vip (
    .aclk(ap_clk),
    .aresetn(ap_rst_n),
    .m_axis_tvalid(rx_axis_tvalid),
    .m_axis_tdata(rx_axis_tdata),
    .m_axis_tlast(rx_axis_tlast),
    .m_axis_tkeep(rx_axis_tkeep),
    .m_axis_tuser(rx_axis_tuser),
    .m_axis_tready(rx_axis_tready)
  );

  // AXI4-Stream VIP Instantiation for TX (Slave VIP)
  axi4stream_vip_1 tx_vip (
    .aclk(ap_clk),
    .aresetn(ap_rst_n),
    .s_axis_tvalid(tx_axis_tvalid),
    .s_axis_tdata(tx_axis_tdata),
    .s_axis_tlast(tx_axis_tlast),
    .s_axis_tkeep(tx_axis_tkeep),
    .s_axis_tuser(tx_axis_tuser),
    .s_axis_tready(tx_axis_tready)
  );

  // Instantiate the data_fifo_krnl module
  data_fifo_krnl dut (
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .rx_axis_tvalid(rx_axis_tvalid),
    .rx_axis_tdata(rx_axis_tdata),
    .rx_axis_tlast(rx_axis_tlast),
    .rx_axis_tkeep(rx_axis_tkeep),
    .rx_axis_tuser(rx_axis_tuser),
    .rx_axis_tready(rx_axis_tready),
    .tx_axis_tvalid(tx_axis_tvalid),
    .tx_axis_tdata(tx_axis_tdata),
    .tx_axis_tlast(tx_axis_tlast),
    .tx_axis_tkeep(tx_axis_tkeep),
    .tx_axis_tuser(tx_axis_tuser),
    .tx_axis_tready(tx_axis_tready),
    .m_axis_ddr_read_tvalid(m_axi_rvalid),  // Mapping to MIG read interface
    .m_axis_ddr_read_tdata(m_axi_rdata),    // Mapping to MIG read interface
    .m_axis_ddr_read_tlast(),               // Not used, tie-off if needed
    .m_axis_ddr_read_tkeep(),               // Not used, tie-off if needed
    .m_axis_ddr_read_tuser(),               // Not used, tie-off if needed
    .m_axis_ddr_read_tready(m_axi_rready),  // Mapping to MIG read interface
    .s_axis_ddr_write_tvalid(m_axi_wvalid), // Mapping to MIG write interface
    .s_axis_ddr_write_tdata(m_axi_wdata),   // Mapping to MIG write interface
    .s_axis_ddr_write_tlast(),              // Not used, tie-off if needed
    .s_axis_ddr_write_tkeep(),              // Not used, tie-off if needed
    .s_axis_ddr_write_tuser(),              // Not used, tie-off if needed
    .s_axis_ddr_write_tready(m_axi_wready)  // Mapping to MIG write interface
  );

  // Clock generation
  always #5 ap_clk = ~ap_clk; // 100 MHz clock

  // Test sequence
  initial begin
    ap_clk = 0;
    ap_rst_n = 0;

    // Reset sequence
    #20 ap_rst_n = 1;

    // Step 1: Send formatted data to RX AXI4-Stream interface
    $display("Sending formatted data to RX AXI4-Stream interface...");

    // Define the write command and memory address
    rx_payload_data[511:504] = 8'h01;             // First byte = 1 (write command)
    rx_payload_data[503:470] = 34'h4000000000;    // Next 34 bits = memory address
    rx_payload_data[469:0] = $random;             // Next 512 bits = random data

    // Drive the RX AXI4-Stream interface with the formatted payload
    force rx_axis_tvalid = 1;
    force rx_axis_tdata = rx_payload_data;
    force rx_axis_tkeep = 64'hFFFFFFFFFFFFFFFF;
    force rx_axis_tlast = 1'b1;
    #20;
    release rx_axis_tvalid;
    release rx_axis_tdata;
    release rx_axis_tkeep;
    release rx_axis_tlast;

    // Step 2: Simulate read from DDR4 memory at the same address used during write
    $display("Reading from DDR4 at address 0x4000000000...");
    force m_axi_araddr = 34'h4000000000;  // Set to same address as in the write transaction
    force m_axi_arvalid = 1;
    #10 release m_axi_arvalid;

    // Wait for read response and compare the data with what was written
    wait(m_axi_rvalid);
    if (m_axi_rdata == rx_payload_data[469:0]) begin
        $display("DDR4 Read Success: Data matches written value: %h", m_axi_rdata);
    end else begin
        $display("DDR4 Read Failed: Expected %h, got %h", rx_payload_data[469:0], m_axi_rdata);
    end

    // Step 4: Validate the data on the TX AXI4-Stream interface manually
    $display("Monitoring TX AXI4-Stream interface for expected data...");
    wait(tx_axis_tvalid);
    if (tx_axis_tdata == rx_payload_data &&
        tx_axis_tkeep == 64'hFFFFFFFFFFFFFFFF &&
        tx_axis_tlast == 1'b1) begin
        $display("TX Stream data matched with RX input: %h", tx_axis_tdata);
    end else begin
        $display("TX Stream data mismatch. Expected %h, got %h", rx_payload_data, tx_axis_tdata);
    end

    #100;
    $finish;
  end

endmodule
