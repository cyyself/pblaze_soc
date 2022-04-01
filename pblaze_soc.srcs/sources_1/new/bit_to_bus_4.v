module bit_to_bus_4(
    input bit_3,
    input bit_2,
    input bit_1,
    input bit_0,
    output [3:0] bus_out
    );
    assign bus_out = {bit_3,bit_2,bit_1,bit_0};
endmodule
