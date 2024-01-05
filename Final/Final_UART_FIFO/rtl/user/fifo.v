module synchronous_fifo #(parameter DEPTH=4, DATA_WIDTH=8) (
  input clk, rst_n,
  input W_en, R_en,
  input [DATA_WIDTH-1:0] Data_in,
  output reg [DATA_WIDTH-1:0] Data_out,
  output fifo_full, fifo_empty, irq_sig,
  output [$clog2(DEPTH)-1:0] data_num
);

  parameter PTR_WIDTH = $clog2(DEPTH);
  reg [PTR_WIDTH-1:0] W_ptr, R_ptr; 
  reg [DATA_WIDTH-1:0] fifo[DEPTH-1:0];

  assign data_num = (W_ptr >= R_ptr) ? (W_ptr - R_ptr) :
                    (R_ptr > W_ptr) ? (R_ptr - W_ptr) : 0;
  assign fifo_full = ((W_ptr + 1'b1) == R_ptr);   // The last slot of FIFO is intentionally kept fifo_empty
  assign fifo_empty = (data_num == 0);
  assign irq_sig = (R_ptr[PTR_WIDTH-1] == ~W_ptr[PTR_WIDTH-1]) && (R_ptr[PTR_WIDTH-2:0] == W_ptr[PTR_WIDTH-2:0]) ;
  

  /* Set default values on reset_n */
  always@(posedge clk) begin
    if(!rst_n) begin
      W_ptr <= 0; 
      R_ptr <= 0;
      Data_out <= 0;
    end
  end
  
  /* Write data to fifo */
  always@(posedge clk) begin
    if(W_en & !fifo_full)begin
      fifo[W_ptr] <= Data_in;
      W_ptr <= W_ptr + 1;
    end
  end
  
  /* Read data from fifo */
  always@(posedge clk) begin
    if(R_en & !fifo_empty) begin
      Data_out <= fifo[R_ptr];
      R_ptr <= R_ptr + 1;
    end
  end
  
  
endmodule
