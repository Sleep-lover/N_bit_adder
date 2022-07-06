// Testbench Verilog code for N-bit Adder 
`include "n_bitadder.v"
module n_bitadder_tb;
    reg [31:0] input1;
    reg [31:0] input2;
    wire [31:0] answer;

    n_bitadder M(
        .input1(input1), //assigment;
        .input2(input2), 
        .answer(answer)
        );
    initial begin
        $dumpfile("n_bitadder.vcd");
        $dumpvars(0,n_bitadder_tb);
        input1 = 1209;
        input2 = 4565;
        #100;

    end
 
endmodule