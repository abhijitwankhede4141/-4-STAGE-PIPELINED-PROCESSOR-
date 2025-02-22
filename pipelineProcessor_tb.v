module pipelineProcessor_tb;
    reg clk, reset;
    reg [7:0] instr_in, data_in;
    wire [7:0] result;

    pipelineProcessor uut (
        .clk(clk),
        .reset(reset),
        .instr_in(instr_in),
        .data_in(data_in),
        .result(result)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0; reset = 1; instr_in = 0; data_in = 0;
        #10 reset = 0;
        
        // ADD R1, R2
        instr_in = 8'b00001010;
        #10;
        
        // SUB R3, R4
        instr_in = 8'b01011011;
        #10;
        
        // LOAD R5, DATA
        instr_in = 8'b10000101; data_in = 8'b00001111;
        #10;
        
        $stop;
    end
endmodule
