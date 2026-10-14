# The Elements of Computing Systems — Nand2Tetris

My implementations of projects 1–5 from **Nand2Tetris**, based on *The Elements of Computing Systems* by Noam Nisan and Shimon Schocken.

I worked on these projects in January 2023, building up from basic logic gates to a complete Hack computer. I stopped after implementing the computer in project 5 and did not continue into writing my own assembler, virtual machine translator, or compiler.

## What I built

| Directory | Project | Implementations |
| --- | --- | --- |
| `01_boolean_logic/` | Boolean logic | Basic gates, 16-bit gates, multiplexers, and demultiplexers. |
| `02_boolean_arithmetic/` | Boolean arithmetic | Half adder, full adder, 16-bit adder, incrementer, and the Hack ALU. |
| `03_sequential_logic/` | Sequential logic | Bit storage, registers, RAM chips up to 16K, and the program counter. |
| `04_machine_language/` | Machine language | Hack assembly programs for multiplication (`Mult.asm`) and filling or clearing the screen based on keyboard input (`Fill.asm`). |
| `05_computer_architecture/` | Computer architecture | Memory with screen and keyboard I/O, instruction decoding, the CPU, and the complete Hack computer. |

The final implementation is [`Computer.hdl`](05_computer_architecture/Computer.hdl), which connects the CPU to instruction ROM and data memory to execute Hack machine code. The last commit, dated January 18, 2023, adds this computer chip.

## Where I stopped

This repository covers the hardware construction projects and assembly programming exercises through **project 5**.

Project 6 (the assembler) and the later software projects—the VM translator, Jack compiler, and operating system—are not implemented here. The included `.hack` files are machine-code programs used in the exercises, rather than an implementation of an assembler.

## Files and tools

- `.hdl` — chip implementations in the course's hardware description language.
- `.asm` — Hack assembly source programs.
- `.hack` — Hack machine-code programs.
- `.tst` — simulator test scripts.
- `.cmp` — expected test results.
- `.out` — saved simulator output.

The projects use the [Nand2Tetris software tools](https://www.nand2tetris.org/software): the Hardware Simulator for chip designs, and the Assembler and CPU Emulator for assembly exercises. The tools are not included in this repository.

Saved test outputs are historical artifacts. Some project 5 outputs differ from their comparison files, and the simulator tests have not been freshly rerun.

## Reference

[Nand2Tetris](https://www.nand2tetris.org/) teaches how to build a computer and its software stack from basic logic gates. This repository contains my implementations alongside the supplied specifications, test scripts, and comparison files.
