
module demo(cin,a,b,cout,res);
	input cin;
	input a;
	input b;
	output wire cout;
	output wire res;
	wire [7:0]temp;
	wire [3:0]sw={1'b1,a,b,cin};
	thetoei d1(
	.switch(sw),
	.res(temp)
	);
	assign res=temp[1]&temp[2]&temp[4]&temp[7];
	assign cout=temp[3]&temp[5]&temp[6]&temp[7];
endmodule