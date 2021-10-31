module thetoei(
input[3:0] switch, //4 个拨码开关接口，ON -- 低电平；OFF -- 高电平
output reg[7:0] res //8 个 LED 指示灯接口
);	
	always@(switch) 
	begin
		if(!switch[3]) res <= 8'hff; //使能端为0，所有输出为1,g1,g2使用按键，所以反
		else begin
			case(switch[2:0])
				3'b111:  res<= 8'b0111_1111; 
				3'b110:  res<= 8'b1011_1111; 
				3'b101:  res<= 8'b1101_1111; 
				3'b100:  res<= 8'b1110_1111; 
				3'b011:  res<= 8'b1111_0111; 
				3'b010:  res<= 8'b1111_1011; 
				3'b001:  res<= 8'b1111_1101; 
				3'b000:  res<= 8'b1111_1110; 
				default: ;
			endcase
		end
	end
	endmodule