# 4-Bit ALU Design Using Verilog HDL

## Project Overview

This project implements a 4-bit Arithmetic Logic Unit (ALU) using Verilog HDL.

The ALU performs basic arithmetic and logical operations based on a 3-bit select signal.

## Block Diagram

```text
       A[3:0]
          |
          |
          v

    +-------------+
    |             |
    |   4-bit     |
    |    ALU      |
    |             |
    +-------------+
          |
          v
      RESULT[3:0]

       ^
       |
    B[3:0]

    SEL[2:0]
```

## Inputs and Outputs

### Inputs

| Signal | Width | Description        |
| ------ | ----- | ------------------ |
| A      | 4-bit | First operand      |
| B      | 4-bit | Second operand     |
| SEL    | 3-bit | Operation selector |

### Output

| Signal | Width | Description |
| ------ | ----- | ----------- |
| RESULT | 4-bit | ALU Output  |

## Operations Supported

| SEL | Operation   |
| --- | ----------- |
| 000 | Addition    |
| 001 | Subtraction |
| 010 | AND         |
| 011 | OR          |
| 100 | XOR         |
| 101 | NOT A       |

## Example Simulation

Input:

```text
A = 0101 (5)
B = 0011 (3)
```

Output:

```text
ADD RESULT = 1000
SUB RESULT = 0010
AND RESULT = 0001
OR RESULT  = 0111
XOR RESULT = 0110
NOT RESULT = 1010
```

## Tools Used

* Verilog HDL
* Icarus Verilog
* VS Code
* GitHub

## Project Files

```text
RTL/
 └── alu_4bit.v

TB/
 └── alu_4bit_tb.v
```

## Author

Suriya K S

Electronics and Communication Engineering

Government College of Engineering, Erode
