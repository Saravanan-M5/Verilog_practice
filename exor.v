module exor(output y, input a, input b);
assign y=a^b;
endmodule

module exor_tb;
reg a,b;
wire y;
exor dut(.a(a),.b(b),.y(y));
initial begin 
    $monitor("a=%b b=%b y=%b",a,b,y);
    $dumpfile("exor_tb.vcd");
    $dumpvars(0,exor_tb);
    a=0; b=0; #5;
    a=0; b=1; #5;
    a=1; b=0; #5;
    a=1; b=1; #5;
    $finish;
end
endmodule