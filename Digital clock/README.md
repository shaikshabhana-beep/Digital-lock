# Digital Clock

## Description

A digital clock designed using Verilog HDL that displays hours, minutes, and seconds. The clock automatically increments the time every second and resets after reaching 23:59:59.

## Features

* 24-hour digital clock
* Displays hours, minutes, and seconds
* Automatic second, minute, and hour counting
* Reset functionality
* Synchronous digital design
* Suitable for FPGA simulation

## Inputs

| Input   | Description                  |
| ------- | ---------------------------- |
| `clk`   | Clock signal                 |
| `reset` | Resets the clock to 00:00:00 |

## Outputs

| Output    | Description               |
| --------- | ------------------------- |
| `hours`   | Hour value from 0 to 23   |
| `minutes` | Minute value from 0 to 59 |
| `seconds` | Second value from 0 to 59 |

## Working Principle

The clock uses a clock signal to generate one-second intervals. The seconds counter increments every second, the minutes counter increments after 59 seconds, and the hours counter increments after 59 minutes. After 23:59:59, the clock returns to 00:00:00.

## Project Files

* `digital_clock.v` - Main Verilog design
* `digital_clock_tb.v` - Testbench
* `block_diagram.png` - System block diagram
* `expected_output.txt` - Expected simulation output

## Simulation

Using Icarus Verilog:

```bash
iverilog -o digital_clock_sim digital_clock.v digital_clock_tb.v
vvp digital_clock_sim
```

## Applications

* Digital watches
* Electronic clocks
* Timers
* FPGA-based clock systems
* Embedded digital systems
