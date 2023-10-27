`timescale 1ns/1ns

module s_to_p_test;

    // 时钟信号
    reg clk;
    // 复位信号
    reg rst_n;
    // 输入信号
    reg valid_a;
    reg data_a;
    // 输出信号
    wire ready_a;
    wire valid_b;
    wire [5:0] data_b;
    
    // 实例化被测试的模块
    s_to_p dut (
        .clk(clk),
        .rst_n(rst_n),
        .valid_a(valid_a),
        .data_a(data_a),
        .ready_a(ready_a),
        .valid_b(valid_b),
        .data_b(data_b)
    );
    
    // 时钟生成
    always begin
        #5 clk = ~clk;
    end

    // 初始化信号
    initial begin
        clk = 0;
        rst_n = 0;
        valid_a = 0;
        data_a = 0;

        // 复位模块
        rst_n = 1;
        #10 rst_n = 0;
        #10 rst_n = 1;

        // 测试用例1
        valid_a = 1;
        data_a = 1;
        #20;

        // 测试用例2
        data_a = 0;
        #20;

        // 测试用例3
        data_a = 1;
        #20;

        // 测试用例4
        data_a = 0;
        #20;

        // 测试用例5
        data_a = 1;
        #20;

        // 测试用例6
        data_a = 0;
        #20;

        // 测试用例7
        data_a = 1;
        #20;

        // 测试用例8
        data_a = 0;
        #20;

        // 测试用例9
        data_a = 1;
        #20;

        // 结束仿真
        $finish;
    end

endmodule

// `timescale 1ns/1ns

// module testbench;

//   // 信号声明
//   reg clk;
//   reg rst_n;
//   reg valid_a;
//   reg [5:0] data_a;

//   wire ready_a;
//   wire valid_b;
//   wire [5:0] data_b;

//   // 实例化被测试的模块
//   s_to_p dut (
//     .clk(clk),
//     .rst_n(rst_n),
//     .valid_a(valid_a),
//     .data_a(data_a),
//     .ready_a(ready_a),
//     .valid_b(valid_b),
//     .data_b(data_b)
//   );

//   // 初始化时钟
//   initial begin
//     clk = 0;
//     forever begin
//       #5 clk = ~clk; // 时钟周期为 10ns
//     end
//   end

//   // 初始化输入信号
//   initial begin
//     rst_n = 0;
//     valid_a = 0;
//     data_a = 6'b000000;

//     // 在复位后等待一段时间
//     #20 rst_n = 1;

//     // 发送一些数据到模块
//     valid_a = 1;
//     data_a = 6'b101010; // 你可以更改数据值
//     #50; // 等待足够长的时间

//     // 在这里添加更多的测试用例

//     // 终止仿真
//     $finish;
//   end

//   // 显示模块的输出
//   always @(posedge clk) begin
//     $display("valid_b = %b, data_b = %b", valid_b, data_b);
//   end

// endmodule

// `timescale 1ns / 1ps

// module VL30_s_to_p_tb(

//     );

//     // 信号声明
//     reg clk;
//     reg rst_n;
//     reg valid_a;
//     reg data_a;
//     wire ready_a;
//     wire valid_b;
//     wire [5:0] data_b;

//     // 模块实例化
//     s_to_p dut (
//         .clk(clk),
//         .rst_n(rst_n),
//         .valid_a(valid_a),
//         .data_a(data_a),
//         .ready_a(ready_a),
//         .valid_b(valid_b),
//         .data_b(data_b)
//     );

//     // 时钟生成
//     always begin
//         #50 clk = ~clk; // 产生50%占空比的时钟信号
//     end

//     // 初始化
//     initial begin
//         clk = 0;
//         rst_n = 0;
//         valid_a = 0;
//         data_a = 0;
        
//         // 在上升沿时复位，然后释放复位
//         rst_n = 0;
//         #10 rst_n = 1;
        
//         // 输入测试数据
//         valid_a = 1;
//         #30
//         data_a = 1'b1; 
//         #40
//         data_a = 1'b0; 
//         #50
//         data_a = 1'b1; 
//         #100
//         data_a = 1'b0;

//         // 模拟信号监测
//        // $monitor("Time=%0t, valid_a=%b, data_a=%b, ready_a=%b, valid_b=%b, data_b=%b", $time, valid_a, data_a, ready_a, valid_b, data_b);

//         // 等待一些时间
//         #50;

//         // 结束仿真
//         $finish;
//     end

// endmodule
