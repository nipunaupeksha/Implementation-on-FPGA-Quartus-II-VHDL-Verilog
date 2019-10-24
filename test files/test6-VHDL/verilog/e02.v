module intermed_wire(in_1,in_2,in_3,out_1,out_2);
input in_1;
input in_2;
input in_3;
output out_1;
output out_2;
wire intermediate_sig;
assign out_1=intermediate_sig & in_3;
assign out_2 = intermediate_sig | in_3;
endmodule