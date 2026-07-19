# PWM Generator on Arty A7 FPGA

## Overview

This project implements a **Pulse Width Modulation (PWM) Generator** on the **Digilent Arty A7 FPGA** using **Verilog HDL**. The design generates a PWM signal by comparing an 8-bit counter with a programmable duty cycle value. By varying the duty cycle, the average output voltage can be controlled, making this design suitable for applications such as LED dimming, motor speed control, and servo control.

## Features

- 8-bit PWM resolution (256 duty cycle levels)
- Adjustable duty cycle (0–255)
- Verilog HDL implementation
- Compatible with Digilent Arty A7 (Artix-7 FPGA)
- Modular and synthesizable design
- Simulation testbench included

## Hardware Requirements

- Digilent Arty A7 FPGA Board
- Xilinx Vivado Design Suite
- USB cable for FPGA programming
- LED, PMOD device, or oscilloscope for observing the PWM output

## Project Structure

```text
PWM-ArtyA7/
├── src/
│   ├── pwm_generator.v
│   └── top.v
├── sim/
│   └── tb_pwm.v
├── constraints/
│   └── arty_a7.xdc
└── README.md
```

## Working Principle

The PWM generator uses an 8-bit counter that continuously increments on every rising edge of the system clock. The counter value is compared with a user-defined duty cycle.

- If `counter < duty_cycle`, the PWM output is **HIGH**.
- Otherwise, the PWM output is **LOW**.

As the duty cycle increases, the output remains HIGH for a larger portion of each PWM period, increasing the average output voltage.

## PWM Frequency

The Arty A7 provides a **100 MHz** onboard clock.

For an 8-bit PWM counter:

```
PWM Frequency = Clock Frequency / 256
              = 100 MHz / 256
              ≈ 390.625 kHz
```

A clock divider can be added to generate lower PWM frequencies for applications such as LED dimming or servo motor control.

## Applications

- LED brightness control
- DC motor speed control
- Servo motor control
- Fan speed regulation
- Audio signal generation
- Digital control systems
- Power electronics

## Simulation

The provided testbench verifies PWM generation for different duty cycle values:

- 25% Duty Cycle
- 50% Duty Cycle
- 75% Duty Cycle
- 100% Duty Cycle

The output waveform can be viewed using the Vivado Simulator.

## Getting Started

1. Open Xilinx Vivado.
2. Create a new RTL project.
3. Add the Verilog source files.
4. Add the Arty A7 XDC constraints file.
5. Run Synthesis.
6. Run Implementation.
7. Generate the Bitstream.
8. Program the FPGA using Vivado Hardware Manager.
9. Observe the PWM signal on the assigned output pin.

## Future Enhancements

- Configurable PWM frequency
- Higher-resolution PWM (10-bit/12-bit)
- Multiple PWM channels
- Clock-enable based implementation
- AXI-Lite interface for processor control
- Dead-time insertion for motor control applications


**Developed using Verilog HDL and Xilinx Vivado for the Digilent Arty A7 (Artix-7 FPGA).**
Shravani Jadhav
