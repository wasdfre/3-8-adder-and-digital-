module conv(
input[3:0] switch, //4 个拨码开关接口，ON -- 低电平；OFF -- 高电平
output reg[8:0] res //8 个 LED 指示灯接口
);	
 always @ (switch)
    	begin
             //记得位数
            	case(switch[3:0])
            		4'b0000:res<= 9'h3f;
           			4'b0001:res<= 9'h06;
            		4'b0010:res<=9'h5b;
            		4'b0011:res<=9'h4f;
            		4'b0100:res<=9'h66;
            		4'b0101:res<=9'h6d;
            		4'b0110:res<=9'h7d;
            		4'b0111:res<=9'h07;
            		4'b1000:res<=9'h7f;
						4'b1001:res<=9'h6f;
						default:;
            	endcase   
    end
endmodule