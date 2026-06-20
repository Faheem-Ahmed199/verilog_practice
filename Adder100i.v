//Create a 100-bit binary ripple-carry adder by instantiating 100 full adders.
module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    
   genvar i;
    full_adder inst0(.a(a[0]),.b(b[0]),.cin(cin),.cout(cout[0]),.sum(sum[0]));
    generate
        for (i=1;i<100;i++) begin:ripple_adder
            full_adder fa(.a(a[i]),.b(b[i]),.cin(cout[i-1]),.cout(cout[i]),.sum(sum[i]));
        end
    endgenerate

endmodule

module full_adder(
    input a,b,cin,
    output cout,sum);
    assign sum=(a^b^cin);
    assign cout=(a&b | b&cin | a&cin);
endmodule
