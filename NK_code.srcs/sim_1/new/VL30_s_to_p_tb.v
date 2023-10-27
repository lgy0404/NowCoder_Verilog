`timescale 1ns/1ns

module s_to_p_test;

    // ʱ���ź�
    reg clk;
    // ��λ�ź�
    reg rst_n;
    // �����ź�
    reg valid_a;
    reg data_a;
    // ����ź�
    wire ready_a;
    wire valid_b;
    wire [5:0] data_b;
    
    // ʵ���������Ե�ģ��
    s_to_p dut (
        .clk(clk),
        .rst_n(rst_n),
        .valid_a(valid_a),
        .data_a(data_a),
        .ready_a(ready_a),
        .valid_b(valid_b),
        .data_b(data_b)
    );
    
    // ʱ������
    always begin
        #5 clk = ~clk;
    end

    // ��ʼ���ź�
    initial begin
        clk = 0;
        rst_n = 0;
        valid_a = 0;
        data_a = 0;

        // ��λģ��
        rst_n = 1;
        #10 rst_n = 0;
        #10 rst_n = 1;

        // ��������1
        valid_a = 1;
        data_a = 1;
        #20;

        // ��������2
        data_a = 0;
        #20;

        // ��������3
        data_a = 1;
        #20;

        // ��������4
        data_a = 0;
        #20;

        // ��������5
        data_a = 1;
        #20;

        // ��������6
        data_a = 0;
        #20;

        // ��������7
        data_a = 1;
        #20;

        // ��������8
        data_a = 0;
        #20;

        // ��������9
        data_a = 1;
        #20;

        // ��������
        $finish;
    end

endmodule

// `timescale 1ns/1ns

// module testbench;

//   // �ź�����
//   reg clk;
//   reg rst_n;
//   reg valid_a;
//   reg [5:0] data_a;

//   wire ready_a;
//   wire valid_b;
//   wire [5:0] data_b;

//   // ʵ���������Ե�ģ��
//   s_to_p dut (
//     .clk(clk),
//     .rst_n(rst_n),
//     .valid_a(valid_a),
//     .data_a(data_a),
//     .ready_a(ready_a),
//     .valid_b(valid_b),
//     .data_b(data_b)
//   );

//   // ��ʼ��ʱ��
//   initial begin
//     clk = 0;
//     forever begin
//       #5 clk = ~clk; // ʱ������Ϊ 10ns
//     end
//   end

//   // ��ʼ�������ź�
//   initial begin
//     rst_n = 0;
//     valid_a = 0;
//     data_a = 6'b000000;

//     // �ڸ�λ��ȴ�һ��ʱ��
//     #20 rst_n = 1;

//     // ����һЩ���ݵ�ģ��
//     valid_a = 1;
//     data_a = 6'b101010; // ����Ը�������ֵ
//     #50; // �ȴ��㹻����ʱ��

//     // ��������Ӹ���Ĳ�������

//     // ��ֹ����
//     $finish;
//   end

//   // ��ʾģ������
//   always @(posedge clk) begin
//     $display("valid_b = %b, data_b = %b", valid_b, data_b);
//   end

// endmodule

// `timescale 1ns / 1ps

// module VL30_s_to_p_tb(

//     );

//     // �ź�����
//     reg clk;
//     reg rst_n;
//     reg valid_a;
//     reg data_a;
//     wire ready_a;
//     wire valid_b;
//     wire [5:0] data_b;

//     // ģ��ʵ����
//     s_to_p dut (
//         .clk(clk),
//         .rst_n(rst_n),
//         .valid_a(valid_a),
//         .data_a(data_a),
//         .ready_a(ready_a),
//         .valid_b(valid_b),
//         .data_b(data_b)
//     );

//     // ʱ������
//     always begin
//         #50 clk = ~clk; // ����50%ռ�ձȵ�ʱ���ź�
//     end

//     // ��ʼ��
//     initial begin
//         clk = 0;
//         rst_n = 0;
//         valid_a = 0;
//         data_a = 0;
        
//         // ��������ʱ��λ��Ȼ���ͷŸ�λ
//         rst_n = 0;
//         #10 rst_n = 1;
        
//         // �����������
//         valid_a = 1;
//         #30
//         data_a = 1'b1; 
//         #40
//         data_a = 1'b0; 
//         #50
//         data_a = 1'b1; 
//         #100
//         data_a = 1'b0;

//         // ģ���źż��
//        // $monitor("Time=%0t, valid_a=%b, data_a=%b, ready_a=%b, valid_b=%b, data_b=%b", $time, valid_a, data_a, ready_a, valid_b, data_b);

//         // �ȴ�һЩʱ��
//         #50;

//         // ��������
//         $finish;
//     end

// endmodule
