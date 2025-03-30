/*
Copyright (C) 2023, Advanced Micro Devices, Inc. All rights reserved.
SPDX-License-Identifier: X11
*/


//////////////////////////////////////////////////////////////////////////////// 
// default_nettype of none prevents implicit wire declaration.
`default_nettype none
`timescale 1 ns / 1 ps
// Top level of the kernel. Do not modify module name, parameters or ports.
module data_fifo_krnl (
  // System Signals
  input  wire        ap_clk               ,
  input  wire        ap_rst_n             ,

  input  wire        rx_axis_tvalid,
  input  wire [511:0] rx_axis_tdata,
  input  wire        rx_axis_tlast,
  input  wire [63:0]  rx_axis_tkeep,
  input  wire        rx_axis_tuser,
  output wire        rx_axis_tready,
  
  input  wire        tx_axis_tready,
  output wire        tx_axis_tvalid,
  output wire [511:0] tx_axis_tdata,
  output wire        tx_axis_tlast,
  output wire [63:0]  tx_axis_tkeep,
  output wire        tx_axis_tuser,
  
  // Expose DDR4 AXIS master (256-bit for reads from DDR4)
  output wire        m_axis_ddr_read_tvalid,
  output wire [255:0] m_axis_ddr_read_tdata,  // 256-bit DDR data
  output wire        m_axis_ddr_read_tlast,
  output wire [31:0]  m_axis_ddr_read_tkeep,  // 32 bytes (256 bits)
  output wire        m_axis_ddr_read_tuser,
  input  wire        m_axis_ddr_read_tready,

  // Expose DDR4 AXIS slave (256-bit for writes to DDR4)
  input  wire        s_axis_ddr_write_tvalid,
  input  wire [255:0] s_axis_ddr_write_tdata,  // 256-bit DDR data
  input  wire        s_axis_ddr_write_tlast,
  input  wire [31:0]  s_axis_ddr_write_tkeep,  // 32 bytes (256 bits)
  input  wire        s_axis_ddr_write_tuser,
  output wire        s_axis_ddr_write_tready
);

///////////////////////////////////////////////////////////////////////////////
// Wires and Variables
///////////////////////////////////////////////////////////////////////////////

logic areset = 1'b0;

// Command handling registers
logic [7:0] cmd;
logic [33:0] addr;        // 40-bit address field for DDR4
logic [255:0] ddr_data_in;  // 256-bit data for DDR4 write
logic [255:0] ddr_data_out; // 256-bit data from DDR4 read
logic [511:0] rx_payload_data; // 512-bit RX payload data from network
logic [511:0] tx_payload_data; // 512-bit TX payload data to network

// FSM states for controlling read/write operations
typedef enum logic [1:0] {IDLE, PROCESS, READ, WRITE} state_t;
state_t current_state, next_state;


logic axi_str_txd_tvalid;
logic axi_str_txd_tready;
logic axi_str_txd_tlast;
logic [63:0] axi_str_txd_tkeep;
logic axi_str_txd_tuser;
logic [511:0] axi_str_txd_tdata;
logic axi_str_rxd_tvalid;
logic axi_str_rxd_tready;
logic axi_str_rxd_tlast;
logic [63:0] axi_str_rxd_tkeep;
logic [511:0] axi_str_rxd_tdata;
logic axi_str_rxd_tuser;

logic i_m_axis_tvalid;
logic i_m_axis_tready;
logic [511:0] i_m_axis_tdata;
logic [63:0] i_m_axis_tkeep;
logic i_m_axis_tlast;
logic i_m_axis_tuser;

logic tx_reset_0;
logic rx_reset_0;

wire rx_core_clk_0;
wire tx_clk_out_0;

assign rx_core_clk_0 = tx_clk_out_0;


// Register and invert reset signal.
always @(posedge ap_clk) begin
  areset <= ~ap_rst_n;
end

axis_data_fifo_0 tx_fifo_0 (
  .s_axis_aresetn(~areset),
  .s_axis_aclk(ap_clk),  
  .s_axis_tvalid(i_m_axis_tvalid),
  .s_axis_tready(i_m_axis_tready),
  .s_axis_tdata(i_m_axis_tdata),
  .s_axis_tkeep(i_m_axis_tkeep),
  .s_axis_tlast(i_m_axis_tlast),
  .s_axis_tuser(i_m_axis_tuser),
  .m_axis_aclk(ap_clk),
  .m_axis_tvalid(tx_axis_tvalid),
  .m_axis_tready(tx_axis_tready),
  .m_axis_tdata(tx_axis_tdata),
  .m_axis_tkeep(tx_axis_tkeep),
  .m_axis_tlast(tx_axis_tlast),
  .m_axis_tuser(tx_axis_tuser)
);

axis_data_fifo_0 rx_fifo_0 (
  .s_axis_aresetn(~areset),
  .s_axis_aclk(ap_clk),  
  .s_axis_tvalid(rx_axis_tvalid),
  .s_axis_tready(rx_axis_tready),
  .s_axis_tdata(rx_axis_tdata),
  .s_axis_tkeep(rx_axis_tkeep),
  .s_axis_tlast(rx_axis_tlast),
  .s_axis_tuser(rx_axis_tuser),
  .m_axis_aclk(ap_clk),
  .m_axis_tvalid(i_m_axis_tvalid),
  .m_axis_tready(i_m_axis_tready),
  .m_axis_tdata(i_m_axis_tdata),
  .m_axis_tkeep(i_m_axis_tkeep),
  .m_axis_tlast(i_m_axis_tlast),
  .m_axis_tuser(i_m_axis_tuser)
);

///////////////////////////////////////////////////////////////////////////////
// FSM for command processing (read/write to DDR)
///////////////////////////////////////////////////////////////////////////////
always_ff @(posedge ap_clk or negedge ap_rst_n) begin
  if (!ap_rst_n) begin
    current_state <= IDLE;
  end else begin
    current_state <= next_state;
  end
end

always_comb begin
  // Default assignments
  next_state = current_state;

  case (current_state)
    IDLE: begin
      if (rx_axis_tvalid) begin
        // Assuming the first byte of the 512-bit payload is the command byte
        cmd = rx_axis_tdata[7:0];  
        // Use a 40-bit field from the 512-bit data as the memory address
        addr = rx_axis_tdata[47:8];  // Extract the 40-bit address field
        if (cmd == 8'h00) begin // Read command
          next_state = READ;
        end else if (cmd == 8'h01) begin // Write command
          next_state = WRITE;
        end
      end
    end

    READ: begin
      if (m_axis_ddr_read_tready) begin
        next_state = PROCESS;
      end
    end

    WRITE: begin
      if (s_axis_ddr_write_tvalid) begin
        next_state = PROCESS;
      end
    end

    PROCESS: begin
      next_state = IDLE;
    end

    default: next_state = IDLE;
  endcase
end

///////////////////////////////////////////////////////////////////////////////
// AXIS interface for DDR memory (read/write) - 256-bit data
///////////////////////////////////////////////////////////////////////////////

// DDR Read (Master AXIS interface for sending read data)
assign m_axis_ddr_read_tvalid = (current_state == READ);
assign m_axis_ddr_read_tdata = ddr_data_out;  // DDR read data (fetched from DDR)
assign m_axis_ddr_read_tlast = 1'b1;          // For simplicity, assuming single transfer
assign m_axis_ddr_read_tkeep = 32'hFFFFFFFF;  // Keeping all bytes valid (32 bytes)
assign m_axis_ddr_read_tuser = 1'b0;

// DDR Write (Slave AXIS interface for receiving write data)
assign s_axis_ddr_write_tready = (current_state == WRITE);

// Use the 256-bit data portion of the RX payload for DDR4 writes
always_ff @(posedge ap_clk) begin
  if (s_axis_ddr_write_tvalid && s_axis_ddr_write_tready) begin
    ddr_data_in <= s_axis_ddr_write_tdata; // Directly assign 256-bit DDR data
  end
end

// Use the 256-bit DDR4 data for TX payloads
always_ff @(posedge ap_clk) begin
  if (m_axis_ddr_read_tvalid && tx_axis_tready) begin
    tx_payload_data[511:256] <= m_axis_ddr_read_tdata; // Fill TX payload with 256-bit DDR data
    tx_payload_data[255:0]  <= 256'b0;                 // Fill remaining TX data (optional, based on your logic)
  end
end

endmodule
