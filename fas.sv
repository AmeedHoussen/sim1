
// Full Adder/Subtractor template
module fas (
    input logic a,           // Input bit a
    input logic b,           // Input bit b
    input logic cin,         // Carry in
    input logic a_ns,        // A_nS (add/not subtract) control
    output logic s,          // Output S
    output logic cout        // Carry out
);

// Put your code here
// ------------------
  logic g12,g34,g45,g68,g78,g89,g95;
    XNOR2 #(
        .Tpdlh(4),
        .Tpdhl(4)
    ) instance1(
        .Z(g12),
        .A(a),
        .B(b)
    );

   XNOR2 #(
        .Tpdlh(4),
        .Tpdhl(4)
    ) instance2(
        .Z(s),
        .A(g12),
        .B(cin)
    );

  NAND2 #(
        .Tpdlh(8),
        .Tpdhl(8)
    ) instance3(
        .Z(g34),
        .A(b),
        .B(cin)
    );

  NAND2 #(
        .Tpdlh(8),
        .Tpdhl(8)
    ) instance4(
        .Z(g45),
        .A(g34),
        .B(g34)
    );

  OR2 #(
        .Tpdlh(5),
        .Tpdhl(5)
    ) instance5(
        .Z(cout),
        .A(g45),
        .B(g95)
    );


  OR2 #(
        .Tpdlh(5),
        .Tpdhl(5)
    ) instance6(
        .Z(g68),
        .A(a),
        .B(cin)
    );


  XNOR2 #(
        .Tpdlh(4),
        .Tpdhl(4)
    ) instance7(
        .Z(g78),
        .A(a),
        .B(a_ns)
    );

  NAND2 #(
        .Tpdlh(8),
        .Tpdhl(8)
    ) instance8(
        .Z(g89),
        .A(g68),
        .B(g78)
    );


  NAND2 #(
        .Tpdlh(8),
        .Tpdhl(8)
    ) instance9(
        .Z(g95),
        .A(g89),
        .B(g89)
    );
// End of your code

endmodule

