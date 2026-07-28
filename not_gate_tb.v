module not_gate_tb;
reg a;
wire y;

not_gate dut(.a(a),.y(y));
initial begin
    $monitor("a=%b y=%b",a,y);
    $dumpfile("not_gate_tb");
    $dumpvars(0,not_gate_tb);
    a=0; #10;
    a=1; #10;
    $finish;
end
endmodule