# Simple Processor - Intel laboratory

## Overview

This repository contains my Verilog implementation of an simple processor.

The processor supports arithmetic and logical operations, memory access,
conditional branches, and seven-segment display output.

## Processor Features

- Program Counter (PC)
- Instruction memory
- Arithmetic and logical operations
- Load and store operations
- Seven-segment display interface
- Conditional branch instructions
- ALU condition flags:
  - Zero (`z`)
  - Negative (`n`)
  - Carry (`c`)
- Six execution time steps (`T0` - `T5`)

## Instruction Set

| Instruction | Description |
|-------------|-------------|
| `mv` | Move data |
| `mvt` | Move immediate data |
| `add` | Addition |
| `sub` | Subtraction |
| `ld` | Load data from memory |
| `st` | Store data to memory |
| `and` | Bit-wise AND |
| `b` | Unconditional branch |
| `beq` | Branch if equal |
| `bne` | Branch if not equal |
| `bcc` | Branch if carry clear |
| `bcs` | Branch if carry set |
| `bpl` | Branch if positive |
| `bmi` | Branch if negative |

## Project Structure

### Verilog Source

- `proc.v` - Main processor
- `top.v` - Top-level module
- `flipflop.v` - Flip-flop/register module
- `seg7.v` - Seven-segment display module
- `inst_mem.v` - Instruction memory
- `inst_mem.mif` - Memory initialization file
- `part5.v`
- `part6.v`

### Assembly Programs

- `part7.s`
- `branches.s`
- `part6.s`
- `seg7.s`
- `sw_led.s`
- `scroll.s`
- `sitbooboosit.s`

### Testbench

- `tb/` - Testbench files

### Simulation

- `sim/` - DE-Sim simulation
