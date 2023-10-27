// VL30 ���ݴ�ת����·
`timescale 1ns/1ns

module s_to_p(
	input 				clk 		,   
	input 				rst_n		,
	input				valid_a		,
	input	 			data_a		,
 
 	output	reg 		ready_a		,
 	output	reg			valid_b		,
	output  reg [5:0] 	data_b
);
    reg [2:0] cnt; // ��λ������������������ֵΪ1+2+4=7��data_bΪ��λ
    reg [4:0] data_reg; // ����ļĴ���������һ��ʼ�����ʱ�򲻺����
    
    // ready_a����λ�����Ϊ0
    always@(posedge clk,negedge rst_n)begin
        if(!rst_n)
            ready_a <= 1'b0;
        else
            ready_a <= 1'b1;
    end
    
    // ���������
    always@(posedge clk,negedge rst_n)begin
        if(!rst_n)
            cnt <= 3'd0;
        else if(valid_a && ready_a)begin //ֻ��valid_a �� ready_a�����ź���Ч��ʱ��Ž������״̬
            if(cnt == 3'd5)
               cnt <= 3'd0;
           else 
               cnt <= cnt + 1'b1;
        end
        else
            cnt <= cnt;
    end
    
    always@(posedge clk,negedge rst_n)begin
        if(!rst_n) begin
            data_reg <= 4'd0;
            data_b <= 5'd0; 
        end
        else if(valid_a && ready_a)
            case(cnt)
                3'd0: data_reg[0] <= data_a;
                3'd1: data_reg[1] <= data_a;
                3'd2: data_reg[2] <= data_a;
                3'd3: data_reg[3] <= data_a;
                3'd4: data_reg[4] <= data_a;
                3'd5: data_b <= {data_a,data_reg}; //data_reg�Ǳ�Ҫ�ģ�data_b��ֵ����һ�������ظ�����
                default:;
            endcase
        else 
            data_reg <= data_reg;    
    end
    always@(posedge clk,negedge rst_n)begin
        if(!rst_n)
            valid_b <= 1'b0;
        else if(valid_a && ready_a && cnt == 3'd5)
            valid_b <= 1'b1;
        else
            valid_b <= 1'b0;
    end
    
endmodule