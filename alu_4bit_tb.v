module alu_4bit_tb;

reg [3:0] A;
reg [3:0] B;
reg [2:0] SEL;

wire [3:0] RESULT;

alu_4bit uut(
    .A(A),
    .B(B),
    .SEL(SEL),
    .RESULT(RESULT)
);

initial begin

A = 4'b0101;
B = 4'b0011;

SEL = 3'b000; #10;
$display("ADD RESULT = %b", RESULT);

SEL = 3'b001; #10;
$display("SUB RESULT = %b", RESULT);

SEL = 3'b010; #10;
$display("AND RESULT = %b", RESULT);

SEL = 3'b011; #10;
$display("OR RESULT = %b", RESULT);

SEL = 3'b100; #10;
$display("XOR RESULT = %b", RESULT);

SEL = 3'b101; #10;
$display("NOT RESULT = %b", RESULT);

$finish;

end

endmodule