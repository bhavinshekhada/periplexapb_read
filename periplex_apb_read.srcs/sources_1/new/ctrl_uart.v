module ctrl_uart (
    input                   clk,
    input [1:0]             s_strobe,
    input  wire [31:0]      data_write,
    input                   enable,
    input                   done, // Signal indicating UART is ready for next byte

    output    reg            busy,
    output  reg              dv, // Data valid signal
    output reg [7:0]         tx_data
);

reg [1:0] max_counter;
reg [3:0] state = 0;
parameter idle = 4'b0000;
parameter byte1 = 4'b0001;
parameter byte2 = 4'b0010;
parameter byte3 = 4'b0011;
parameter byte4 = 4'b0100;
parameter ack1 = 4'b0101;
parameter ack2 = 4'b0110;
parameter ack3 = 4'b0111;
parameter ack4 = 4'b1000;

always @(posedge clk)
begin
    case(state)
        idle:
        begin
            tx_data <= 0;
            busy <= 0;
            dv <= 0;
            max_counter <= 0;
            if(enable)
                state <= byte1;
            else
                state <= idle;
        end

        byte1: begin
                    busy <= 1;
                    tx_data <= data_write[7:0];
                    dv <= 1;
                    state <= ack1;
               end
               
        ack1: begin
            dv <= 0;
//            tx_data <= 0;
            if(done)
            begin
                if(max_counter == s_strobe) begin
                        state <= idle;
                        dv <= 0;
                    end
                    else begin
                        state <= byte2;
                        dv <= 0;
                        max_counter <= max_counter + 1;
                    end
            end else begin               
                state <= ack1;
//                dv <= 0;
            end
            end

        byte2: begin
                tx_data <= data_write[15:8];
                dv <= 1;
                state <= ack2;
               end
               
        ack2: begin
                dv <= 0;
//                tx_data <= 0;
                if(done) begin
                    if(max_counter == s_strobe)
                        state <= idle;
                    else begin
                        state <= byte3;
                        dv <= 0;
                        max_counter <= max_counter + 1;
                    end
            end else begin
                state <= ack2;
//                dv <= 0;
            end
        end

        byte3: begin
                tx_data <= data_write[23:16];
                dv <= 1;
                state <= ack3;
               end
               
        ack3: begin
                dv <= 0;
//                tx_data <= 0;
                if(done) begin
                    if(max_counter == s_strobe)
                            state <= idle;
                        else begin
                            state <= byte4;
                            dv <= 0;
                            max_counter <= max_counter + 1;
                        end
                end else begin
                    state <= ack3;
//                    dv <= 0;
                end
        end

        byte4: begin
                tx_data <= data_write[31:24];
                dv <= 1;
                state <= ack4;
               end
               
        ack4: begin
                dv <= 0;
//                tx_data <= 0;
                if(done) begin
                    state <= idle;
                end else begin
                    state <= ack4;
//                    dv <= 0;
                end
    end
    endcase
end

endmodule