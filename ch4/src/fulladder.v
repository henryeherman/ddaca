
/*
module fulladder(
	a,
	b,
	cin,
	s,
	cout
);

	input wire a, b, cin;
	output reg s, cout;

	//wire p, q;
	reg p, q;
*/

module fulladder(input logic a, b, cin, output logic s, cout); 

logic p, q;
    
	//assign p = a ^ b;
	//assign q = a & b;
	//assign s = p ^ cin;
	//assign cout = q | (p & cin);

    always @(*)
    begin
      p = a ^ b;
      q = a & b;
      s = p ^ cin;
      cout = q | (p & cin);
    end
endmodule
