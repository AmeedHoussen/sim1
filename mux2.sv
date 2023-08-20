// 2->1 multiplexer template
module mux2 (
    input logic d0,          // Data input 0
    input logic d1,          // Data input 1
    input logic sel,         // Select input
    output logic z           // Output
);

// Put your code here
// ------------------
   logic g45,g56,g12,g23,g36;
 NAND2 #(
        .Tpdlh(8),
        .Tpdhl(8)
) instance4(
        .Z(g45),
        .A(sel),
        .B(d1)
);


 NAND2 #(
        .Tpdlh(8),
        .Tpdhl(8)
) instance5(
        .Z(g56),
        .A(g45),
        .B(g45)
);


 NAND2 #(
        .Tpdlh(8),
        .Tpdhl(8)
) instance1(
        .Z(g12),
        .A(sel),
        .B(sel)
);


 NAND2 #(
        .Tpdlh(8),
        .Tpdhl(8)
) instance2(
        .Z(g23),
        .A(d0),
        .B(g12)
);



 NAND2 #(
        .Tpdlh(8),
        .Tpdhl(8)
) instance3(
        .Z(g36),
        .A(g23),
        .B(g23)
);


    OR2 #(
        .Tpdlh(5),
        .Tpdhl(5)
    )instance6(
        .Z(z),
        .A(g56),
        .B(g36)
    );


// End of your code

endmodule