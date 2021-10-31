module demo(data,cout);
	input [3:0]data;
	output wire [8:0]cout;
	 conv c1(
	.switch(data),
	.res(cout)
	);
endmodule