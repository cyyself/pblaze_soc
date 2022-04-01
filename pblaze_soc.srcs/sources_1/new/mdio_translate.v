module mdio_translate(
    output mdio_i,
    input  mdio_o,
    input  mdio_t,
    inout  mdio
);

assign mdio_i = mdio;
assign mdio = mdio_t ? mdio_o : 1'bz;

endmodule