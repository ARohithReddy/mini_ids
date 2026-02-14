///////////////////////////////////////////////////////////////////////////////
// vim:set shiftwidth=3 softtabstop=3 expandtab:
// $Id: module_template 2008-03-13 gac1 $
//
// Module: ids.v  (PASSTHROUGH VERSION)
// Project: NF2.1
// Description:
//   Pure passthrough IDS: does NOT match, does NOT drop.
//   It simply forwards the input FIFO stream to the output stream,
//   while keeping the register interface (generic_regs) intact.
//
//   Goal: your custom bitfile should behave like reference datapath
//         (i.e., ping works), so you can later add IDS logic incrementally.
//
///////////////////////////////////////////////////////////////////////////////
`timescale 1ns/1ps

module ids
   #(
      parameter DATA_WIDTH = 64,
      parameter CTRL_WIDTH = DATA_WIDTH/8,
      parameter UDP_REG_SRC_WIDTH = 2
   )
   (
      input  [DATA_WIDTH-1:0]             in_data,
      input  [CTRL_WIDTH-1:0]             in_ctrl,
      input                               in_wr,
      output                              in_rdy,

      output [DATA_WIDTH-1:0]             out_data,
      output [CTRL_WIDTH-1:0]             out_ctrl,
      output                              out_wr,
      input                               out_rdy,

      // --- Register interface
      input                               reg_req_in,
      input                               reg_ack_in,
      input                               reg_rd_wr_L_in,
      input  [`UDP_REG_ADDR_WIDTH-1:0]    reg_addr_in,
      input  [`CPCI_NF2_DATA_WIDTH-1:0]   reg_data_in,
      input  [UDP_REG_SRC_WIDTH-1:0]      reg_src_in,

      output                              reg_req_out,
      output                              reg_ack_out,
      output                              reg_rd_wr_L_out,
      output  [`UDP_REG_ADDR_WIDTH-1:0]   reg_addr_out,
      output  [`CPCI_NF2_DATA_WIDTH-1:0]  reg_data_out,
      output  [UDP_REG_SRC_WIDTH-1:0]     reg_src_out,

      // misc
      input                                reset,
      input                                clk
   );

   //------------------------- Signals -------------------------------

   wire [DATA_WIDTH-1:0]  in_fifo_data;
   wire [CTRL_WIDTH-1:0]  in_fifo_ctrl;

   wire                   in_fifo_nearly_full;
   wire                   in_fifo_empty;

   wire                   in_fifo_rd_en;

   // software registers (kept for compatibility with idsreg)
   wire [31:0]            pattern_high;
   wire [31:0]            pattern_low;
   wire [31:0]            ids_cmd;

   // hardware register (kept for compatibility with idsreg)
   reg  [31:0]            matches;

   //------------------------- Local assignments -------------------------------

   // Backpressure to upstream: stop accepting when FIFO almost full
   assign in_rdy = !in_fifo_nearly_full;

   // PASSTHROUGH stream handshake:
   // - Present current FIFO head on outputs at all times
   // - Assert out_wr when FIFO has data
   // - Pop FIFO when downstream is ready and FIFO is non-empty
   assign out_data     = in_fifo_data;
   assign out_ctrl     = in_fifo_ctrl;
   assign out_wr       = !in_fifo_empty;
   assign in_fifo_rd_en = (!in_fifo_empty) && out_rdy;

   //------------------------- Modules -------------------------------

   fallthrough_small_fifo #(
      .WIDTH(CTRL_WIDTH+DATA_WIDTH),
      .MAX_DEPTH_BITS(2)
   ) input_fifo (
      .din           ({in_ctrl, in_data}),   // Data in
      .wr_en         (in_wr),                // Write enable
      .rd_en         (in_fifo_rd_en),        // Read enable
      .dout          ({in_fifo_ctrl, in_fifo_data}),
      .full          (),
      .nearly_full   (in_fifo_nearly_full),
      .empty         (in_fifo_empty),
      .reset         (reset),
      .clk           (clk)
   );

   // Keep the same register map shape as the original IDS:
   //  - 3 software regs: {ids_cmd, pattern_low, pattern_high}
   //  - 1 hardware reg : matches
   generic_regs
   #(
      .UDP_REG_SRC_WIDTH   (UDP_REG_SRC_WIDTH),
      .TAG                 (`IDS_BLOCK_ADDR),
      .REG_ADDR_WIDTH      (`IDS_REG_ADDR_WIDTH),
      .NUM_COUNTERS        (0),
      .NUM_SOFTWARE_REGS   (3),
      .NUM_HARDWARE_REGS   (1)
   ) module_regs (
      .reg_req_in       (reg_req_in),
      .reg_ack_in       (reg_ack_in),
      .reg_rd_wr_L_in   (reg_rd_wr_L_in),
      .reg_addr_in      (reg_addr_in),
      .reg_data_in      (reg_data_in),
      .reg_src_in       (reg_src_in),

      .reg_req_out      (reg_req_out),
      .reg_ack_out      (reg_ack_out),
      .reg_rd_wr_L_out  (reg_rd_wr_L_out),
      .reg_addr_out     (reg_addr_out),
      .reg_data_out     (reg_data_out),
      .reg_src_out      (reg_src_out),

      // --- counters interface
      .counter_updates  (),
      .counter_decrement(),

      // --- SW regs interface
      .software_regs    ({ids_cmd, pattern_low, pattern_high}),

      // --- HW regs interface
      .hardware_regs    (matches),

      .clk              (clk),
      .reset            (reset)
   );

   //------------------------- Logic -------------------------------

   // In passthrough mode, we don't count matches.
   // Keep matches at 0, but allow idsreg reset to still "work" (no-op).
   always @(posedge clk) begin
      if (reset) begin
         matches <= 32'd0;
      end
      else begin
         // ids_cmd[0] is used as a reset command in the original script
         if (ids_cmd[0]) matches <= 32'd0;
         else matches <= matches; // hold
      end
   end

endmodule
