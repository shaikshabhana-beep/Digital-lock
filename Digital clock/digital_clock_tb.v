`timescale 1ns/1ps

module digital_clock_tb;

reg clk;
reg reset;

wire [4:0] hours;
wire [5:0] minutes;
wire [5:0] seconds;

digital_clock #(
    .CLK_FREQ(10)
) uut (
    .clk(clk),
    .reset(reset),
    .hours(hours),
    .minutes(minutes),
    .seconds(seconds)
);

always #5 clk = ~clk;

initial begin

    $monitor("Time = %02d:%02d:%02d | Reset = %b",
             hours, minutes, seconds, reset);

    clk = 0;
    reset = 1;

    #10;
    reset = 0;

    // Run simulation
    #620;

    reset = 1;
    #10;

    $display("Simulation completed successfully.");
    $finish;

end

endmodule