// Full Adder/Subtractor test bench template
module fas_test;

// Put your code here
// ------------------
 logic a,b,w,z,s,cout;
    fas #() instance1(
        .a(a),
        .b(b),
        .cin(z),
        .a_ns(w),
        .s(s),
        .cout(cout)
    );
 initial
        begin
            a=1'b0;
            b=1'b0;
           z=1'b1;
            w=1'b0;
            #40
            a=1'b1;
           #40
          a=1'b0;
        end
// End of your code

endmodule