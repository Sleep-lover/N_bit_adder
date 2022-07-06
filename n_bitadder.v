module n_bitadder(
    input1,input2,answer
    );
    parameter N=32;
    input [N-1:0] input1,input2;
    output [N-1:0] answer;
    wire  carry_out;
    wire [N-1:0] carry;
    genvar i;
    generate 
    for(i=0;i<N;i=i+1)
        begin: generate_N_bit_Adder
        if(i==0) 
            half_adder f(input1[0],input2[0],answer[0],carry[0]);//sum of last bit using half adder
        else
            full_adder f(input1[i],input2[i],carry[i-1],answer[i],carry[i]);//other bits using full adder
        end
    assign carry_out = carry[N-1];
    endgenerate
endmodule 
 // half adder
module half_adder(x,y,s,c);
    input x,y;
    output s,c;
    assign s=x^y; //addition
    assign c=x&y; //carry output
endmodule
// full_adder
module full_adder(x,y,c_in,s,c_out);
    input x,y,c_in;
    output s,c_out;
    assign s = (x^y) ^ c_in; //addition
    assign c_out = (y&c_in)| (x&y) | (x&c_in); //carry output
endmodule 