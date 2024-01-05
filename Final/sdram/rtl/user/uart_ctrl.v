module ctrl(
    input wire        rst_n,
    input wire        clk,
    input wire [31:0] clk_div,
    input wire        i_wb_valid,
    input wire [31:0] i_wb_adr,
    input wire        i_wb_we,
    input wire [31:0] i_wb_dat,
    input wire [3:0]  i_wb_sel,
    output reg        o_wb_ack,
    output reg [31:0] o_wb_dat,
    input wire [7:0]  i_rx,
    input wire        i_rx_done,  // i_byte_finish
    //input wire        i_irq,   //
    input wire        i_rx_busy,
    input wire        i_frame_err,
    output reg        o_ctrl_done,  // o_ctrl_byte_finish
    output reg [7:0]  o_tx,
    input wire        i_tx_start_clear,
    input wire        i_tx_busy,
    output reg        o_tx_start,
    output            o_irq
);

// Declare the UART memory mapped registers address
localparam RX_DATA  = 32'h3000_0000;

localparam TX_DATA	= 32'h3000_0004;

localparam STAT_REG = 32'h3000_0008;

localparam DATA_NUM = 32'h3000_000C;

//+------+-------+-------+-------+-------+-------+-------+-------+-------+-------+-------+
//|RX_DATA |  RESERVERD  |                        DATA BITS                              |
//|        |    31-8     |  7    |  6    |  5    |  4    |  3    |  2    |  1    |  0    |
//+------+-------+-------+-------+-------+-------+-------+-------+-------+-------+-------+
//|TX_DATA |  RESERVERD  |                        DATA BITS                              |
//|        |    31-8     |  7    |  6    |  5    |  4    |  3    |  2    |  1    |  0    |
//+------+-------+-------+-------+-------+-------+-------+-------+-------+-------+-------+-------+-------+
//|STAT_REG|  RESERVERD  |  Frame Err  |  Overrun Err  |  Tx_full  |  Tx_empty  |  Rx_full  |  Rx_empty |
//|        |    31-6     |  5          |  4            |  3        |  2         |  1        |  0        |
//+------+-------+-------+-------+-------+-------+-------+-------+-------+-------+-------+-------+-------+

//reg [31:0] rx_buffer;
reg [31:0] tx_buffer;
reg [31:0] stat_reg;    
reg tx_start_local;

wire Rx_fifo_full;
wire Rx_fifo_empty;
wire irq_sig;

always@(posedge clk or negedge rst_n)begin
    if(!rst_n)begin
        stat_reg <= 32'h0000_0005;   // Tx_empty & Rx_empty
    end else begin
        if(i_wb_valid && !i_wb_we)begin
            if(i_wb_adr==STAT_REG)
                stat_reg[5:4] <= 2'b00;  // Framw ERR=0 & Overrun Err=0
        end

        if(i_tx_busy)
            stat_reg[3:2] <= 2'b10; // Tx_full
        else
            stat_reg[3:2] <= 2'b01; // Tx_empty

        if(i_frame_err && i_rx_busy)
            stat_reg[5] <= 1'b1; // Frame Err
        else if(Rx_fifo_full && !stat_reg[1] && !i_frame_err)
            stat_reg[1:0] <= 2'b10;  // Rx_full
        else if(i_rx_busy && stat_reg[1:0]==2'b10)
            stat_reg[4] <= 1'b1;  // Overrun Err
        else if (Rx_fifo_empty) //i_wb_valid && i_wb_adr==RX_DATA && !i_wb_we && stat_reg[1:0]==2'b10) || i_frame_err)
            stat_reg[1:0] <= 2'b01;  // Rx_empty
    end
end


always@(posedge clk or negedge rst_n)begin
    if(!rst_n || i_tx_start_clear)begin
        tx_buffer <= 32'h00000000;
        tx_start_local <= 1'b0;
    end else begin
        if(i_wb_valid && i_wb_we && i_wb_adr==TX_DATA && !i_tx_busy)begin
            tx_buffer <= i_wb_dat;
            tx_start_local <= 1'b1;
        end
    end
end


/*always@(posedge clk or negedge rst_n)begin
    if(!rst_n)begin
        rx_buffer <= 32'h00000000;
    end else begin
        if(i_irq && !stat_reg[1] && !i_frame_err)begin 
            rx_buffer <= i_rx;
            //$display("rx_buffer: %d", i_rx);
        end
    end
end
*/


//
always@(posedge clk or negedge rst_n)begin
    if(!rst_n)begin
        o_ctrl_done <= 1'b0;
    end else begin                                              // Rx_full
        if((i_wb_valid && i_wb_adr==RX_DATA && !i_wb_we && stat_reg[1:0]==2'b10) || i_frame_err)
            o_ctrl_done <= 1'b1;
        else 
            o_ctrl_done <= 1'b0;
    end
end

always@(posedge clk or negedge rst_n)begin
    if(!rst_n || i_tx_start_clear)begin
        o_tx <= 8'b0;
        o_tx_start <= 1'b0;
    end else begin
        o_tx <= tx_buffer[7:0];
        o_tx_start <= tx_start_local;
    end
end

reg o_wb_rx_ack;
always@(posedge clk or negedge rst_n)begin
    if(!rst_n)begin
        o_wb_ack <= 1'b0;
    end else begin
        if (i_wb_valid)begin
            case(i_wb_adr)
                RX_DATA:begin
                    o_wb_rx_ack <= 1'b1; 
                    o_wb_ack <= o_wb_rx_ack; 
                end
                default:begin
                    o_wb_ack <= 1'b1;
                    o_wb_rx_ack <= 1'b0; 
                end    
            endcase      
        end
        else
            o_wb_ack <= 1'b0;
    end
end

wire [1:0] data_num;
reg [1:0] data_num_reg;

wire [7:0] Rx_fifo_o_data;
wire Rx_fifo_W_en;
assign Rx_fifo_W_en =  i_rx_done && !stat_reg[1] && !i_frame_err;

wire Rx_fifo_R_en;
assign Rx_fifo_R_en = (i_wb_valid && !i_wb_we && (i_wb_adr == RX_DATA)) ? 1 : 0;

reg Rx_fifo_R_en_d1;
always@(posedge clk)begin
	Rx_fifo_R_en_d1<= Rx_fifo_R_en;
end

wire Rx_fifo_R_en_edge;
assign Rx_fifo_R_en_edge = Rx_fifo_R_en & ~Rx_fifo_R_en_d1;

synchronous_fifo #(
    .DEPTH(4), 
    .DATA_WIDTH(8)
    ) 
    Rx_FIFO(
  .clk(clk), 
  .rst_n(rst_n),
  .W_en(Rx_fifo_W_en), 
  .R_en(Rx_fifo_R_en_edge),
  .Data_in(i_rx),
  .Data_out(Rx_fifo_o_data),
  .fifo_full(Rx_fifo_full), 
  .fifo_empty(Rx_fifo_empty), 
  .irq_sig(irq_sig),
  .data_num(data_num)
);

reg irq_force;
reg [31:0] irq_cnt;
assign o_irq = (o_ctrl_done & irq_sig) || irq_force;

always@(posedge clk)begin
	if(o_irq || Rx_fifo_empty) begin
        irq_cnt <= 0;   
        irq_force <= 0;
    end
    else if (irq_cnt == 32'd20*(clk_div - 1)) 
        irq_force <= 1; 
    else begin 
        irq_cnt <= irq_cnt + 1;
        irq_force <= 0;
    end
    if(o_irq) data_num_reg <= data_num; 
end

always@(posedge clk or negedge rst_n)begin
    if(!rst_n)begin
        o_ctrl_done <= 1'b0;
    end else begin                                              // Rx_full
        if((i_wb_valid && i_wb_adr==RX_DATA && !i_wb_we && stat_reg[1:0]==2'b10) || i_frame_err || i_rx_done)
            o_ctrl_done <= 1'b1;
        else 
            o_ctrl_done <= 1'b0;
    end
end


always@(posedge clk or negedge rst_n)begin
    if(!rst_n)begin
        o_wb_dat <= 32'h00000000;
    end else begin
        if(i_wb_valid && !i_wb_we)begin
            case(i_wb_adr)
                RX_DATA:begin
                    o_wb_dat <= Rx_fifo_o_data;
                end

                DATA_NUM:begin
                    o_wb_dat <= data_num_reg;
                end

                STAT_REG:begin
                    o_wb_dat <= stat_reg;
                end

                default:begin 
                    o_wb_dat <= 32'h00000000;
                end
            endcase
        end
    end
end


endmodule
