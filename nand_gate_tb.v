module nand_gate_tb;
reg a,b;
wire y;

nand_gate dut(.a(a),.b(b),.y(y));
initial begin 
    $monitor("a=%b b=%b y=%b", a,b,y);
    $dumpfile("nand_gate_tb.vcd");
    $dumpvars(0,nand_gate_tb);
    a=0; b=0; #5;
    a=0; b=1; #5;
    a=1; b=0; #5;
    a=1; b=1; #5;
    $finish;
end
endmodule