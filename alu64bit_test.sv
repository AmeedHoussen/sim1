// 64-bit ALU test bench template
module alu64bit_test;

// Put your code here
// ------------------

logic [63:0] a;
logic [63:0] b;
logic [1:0] op;
logic cin;
logic [63:0] s;
logic cout;
alu64bit alu64bit_test(.a(a), .b(b),.op(op),.cin(cin),.s(s),.cout(cout));
initial begin


             b=64'b0;
             a=64'b0;
            op={1'b1,1'b1};
            cin=1;
 
	#6000

         a=64'b0;
        b=64'b0;
        op={1'b1,1'b1};
        cin=0;
 

end

// End of your code

endmodule