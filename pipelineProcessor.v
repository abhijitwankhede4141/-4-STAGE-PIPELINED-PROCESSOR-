module pipelineProcessor(
    input clk, reset,
    input [7:0] instr_in,
    input [7:0] data_in,
    output reg [7:0] result
);

    reg [7:0] IF_ID_instr, ID_EX_instr, EX_MEM_instr, MEM_WB_instr;
    reg [7:0] ID_EX_data, EX_MEM_data, MEM_WB_data;
    reg [7:0] regfile [0:7];

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            IF_ID_instr <= 8'b0;
            ID_EX_instr <= 8'b0;
            EX_MEM_instr <= 8'b0;
            MEM_WB_instr <= 8'b0;
            result <= 8'b0;
        end else begin
            // IF Stage
            IF_ID_instr <= instr_in;
            
            // ID Stage
            ID_EX_instr <= IF_ID_instr;
            ID_EX_data <= regfile[IF_ID_instr[2:0]];
            
            // EX Stage
            EX_MEM_instr <= ID_EX_instr;
            case (ID_EX_instr[7:6])
                2'b00: EX_MEM_data <= ID_EX_data + regfile[ID_EX_instr[5:3]];
                2'b01: EX_MEM_data <= ID_EX_data - regfile[ID_EX_instr[5:3]];
                2'b10: EX_MEM_data <= data_in;
                default: EX_MEM_data <= 8'b0;
            endcase
            
            // MEM Stage
            MEM_WB_instr <= EX_MEM_instr;
            MEM_WB_data <= EX_MEM_data;
            
            // WB Stage
            if (MEM_WB_instr[7:6] != 2'b10)
                regfile[MEM_WB_instr[2:0]] <= MEM_WB_data;
            else
                result <= MEM_WB_data;
        end
    end
endmodule
