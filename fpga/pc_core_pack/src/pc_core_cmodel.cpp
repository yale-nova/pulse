// This is a generated file. Use and modify at your own risk.
////////////////////////////////////////////////////////////////////////////////

//-----------------------------------------------------------------------------
// kernel: pc_core
//
// Purpose: This is a C-model of the RTL kernel intended to be used for cpu
//          emulation.  It is designed to only be functionally equivalent to
//          the RTL Kernel.
//-----------------------------------------------------------------------------
#define WORD_SIZE 32
#define SHORT_WORD_SIZE 16
#define CHAR_WORD_SIZE 8
// Transfer size and buffer size are in words.
#define TRANSFER_SIZE_BITS WORD_SIZE*4096*8
#define BUFFER_WORD_SIZE 8192
#include <string.h>
#include <stdbool.h>
#include "hls_half.h"
#include "ap_axi_sdata.h"
#include "hls_stream.h"



template <int INPUT_BITS, int ACC_BITS,int WUSER, int WID, int WDEST>
/* Reads from i/p stream to an accumulator. If i/p stream is smaller than
  * accumulator width, then read multiple times.  */
void read_stream (
   hls::stream< ap_axiu <INPUT_BITS,WUSER,WID,WDEST> >& s_axis, // input
   ap_axiu<ACC_BITS,WUSER,WID,WDEST>  &acc                     // output
) {
   acc.keep = 0;
   acc.last = 0;
    // Data width converter loop (input)
   for (unsigned int i = 0; i < ACC_BITS; i += INPUT_BITS) {
     ap_axiu<INPUT_BITS,WUSER,WID,WDEST> streamin = s_axis.read();
      acc.data((i+INPUT_BITS)-1, i)    = streamin.data;
     acc.keep((i+INPUT_BITS)/8-1,i/8) = streamin.keep;
     if (streamin.last == 1) {
       acc.last = 1;
       return;
     }
   }
}

/* Writes accumulator data to o/p stream.  If accumulator is larger than
  * o/p stream, send write multiple times.  Asserts last when KEEP is not
  * all 1s or when TLAST has been asserted. */
template <int ACC_BITS, int OUTPUT_BITS, int WUSER, int WID, int WDEST>
void write_stream (
   ap_axiu<ACC_BITS,WUSER,WID,WDEST>  &acc,                    // input
   hls::stream< ap_axiu<OUTPUT_BITS,WUSER,WID,WDEST> >& m_axis // output
) {
    for (unsigned int i=0; i < ACC_BITS; i+= OUTPUT_BITS) {
     ap_axiu<OUTPUT_BITS,WUSER,WID,WDEST> streamout;

     streamout.data = (acc.data(i+OUTPUT_BITS-1,i));
     streamout.keep = (acc.keep((i+OUTPUT_BITS)/8-1,i/8));

     if (streamout.keep.nand_reduce())  {
       // Keep is not all 1s, this may be end of packet.
       streamout.last = acc.last;
     } else if (i+OUTPUT_BITS >= ACC_BITS) {
       // Check last bit and send it out if on last accumulator data.
       streamout.last = acc.last;
     } else {
       // If more data is in acculator, do not assert last until final accumulator data.
       streamout.last = 0;
     }
     m_axis.write(streamout);
      if(streamout.last == 1) {
       return;
     }
   }
}

// Parallel adder loop: f(x) = x + 1
template <int ACC_BITS,int WUSER, int WID, int WDEST>
void parallel_adder ( ap_axiu<ACC_BITS,WUSER,WID,WDEST> &acc, unsigned int adder_width) {

   for (unsigned int i=0; i < ACC_BITS; i+= adder_width) {
     acc.data(i+adder_width-1,i) = acc.data(i+adder_width-1,i) + 1;
   }
}

/* Reads i/p stream into accumulator, add + 1, write to o/p stream. Repeat until end of packet.*/
template <int INPUT_BITS, int OUTPUT_BITS, int WUSER, int WID, int WDEST>
void example_stream_plus1 (
     hls::stream< ap_axiu<INPUT_BITS,WUSER,WID,WDEST> >& s_axis,  // input
     hls::stream< ap_axiu<OUTPUT_BITS,WUSER,WID,WDEST> >& m_axis, // output
     const unsigned int adder_width
) {
   const unsigned int acc_bits = INPUT_BITS > OUTPUT_BITS ? INPUT_BITS : OUTPUT_BITS;

   unsigned done = 0;
   while (!done) {
     ap_axiu<acc_bits,WUSER,WID,WDEST> acc;

     read_stream<INPUT_BITS,acc_bits,WUSER,WID,WDEST> (s_axis, acc);
     parallel_adder<acc_bits,WUSER,WID,WDEST> (acc, adder_width);
     write_stream<acc_bits,OUTPUT_BITS,WUSER,WID,WDEST> (acc, m_axis);

     done = acc.last;
   }
}


// Function declaration/Interface pragmas to match RTL Kernel
extern "C" void pc_core (
    unsigned int coreconfig,
    int* axi00_ptr0,
    hls::stream< ap_axiu<512,0,0,16> >& k2n,
    hls::stream< ap_axiu<512,0,0,16> >& n2k
) {

    #pragma HLS INTERFACE m_axi port=axi00_ptr0 offset=slave bundle=dram0_axi
    #pragma HLS INTERFACE s_axilite port=coreconfig bundle=control
    #pragma HLS INTERFACE s_axilite port=axi00_ptr0 bundle=control
    #pragma HLS INTERFACE s_axilite port=return bundle=control
    #pragma HLS INTERFACE ap_ctrl_hs port=return
    #pragma HLS INTERFACE axis port=k2n
    #pragma HLS INTERFACE axis port=n2k

// Modify contents below to match the function of the RTL Kernel
    unsigned int _data_;

    // Create input and output buffers for interface dram0_axi
    int dram0_axi_input_buffer[BUFFER_WORD_SIZE];
    int dram0_axi_output_buffer[BUFFER_WORD_SIZE];


    // length is specified in number of words.
    unsigned int dram0_axi_length = 4096;


    // Assign input to a buffer
    memcpy(dram0_axi_input_buffer, (int*) axi00_ptr0, dram0_axi_length*sizeof(int));

    // Add 1 to input buffer and assign to output buffer.
    for (unsigned int i = 0; i < dram0_axi_length; i++) {
      dram0_axi_output_buffer[i] = dram0_axi_input_buffer[i]  + 1;
    }

    // assign output buffer out to memory
    memcpy((int*) axi00_ptr0, dram0_axi_output_buffer, dram0_axi_length*sizeof(int));

 // SD:..s_intf:n2k.....m_intf:k2n

  // n2k plus 1 to k2n example
  example_stream_plus1<512,512,0,0,16> (n2k,k2n,32);


}

