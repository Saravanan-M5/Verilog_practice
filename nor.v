module nor1(output y, input a, input b);
assign y=~(a|b);
endmodule

module nor1_tb;
reg a,b;
wire y;
nor1 dut(.a(a),.b(b),.y(y));
initial begin 
    $monitor("a=%b b=%b y=%b",a,b,y);
    $dumpfile("nor1_tb.vcd");
    $dumpvars(0,nor1_tb);
    a=0; b=0; #5;
    a=0; b=1; #5;
    a=1; b=0; #5;
    a=1; b=1; #5;
    $finish;
end
endmodule