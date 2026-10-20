# Assembly Simple I/O

Computer Architecture and Organization exercises written in **32-bit x86 assembly using NASM syntax** and C runtime input/output functions.

## Exercises

| Source | Purpose |
| --- | --- |
| [simpleIOprogram.asm](Assembly/simpleIOprogram.asm) | Prompts for personal information and prints a formatted introduction |
| [prestadoMJ.asm](Assembly/Averager/prestadoMJ.asm) | Reads three integers and reports their integer average and division remainder |

## Concepts demonstrated

- Data and uninitialized storage sections
- Register arithmetic and integer division
- Stack-based function arguments and caller stack cleanup
- Calls to C library `printf` and `scanf`
- Formatted input and output

## Build environment

The source uses Windows-style `_main`, `_printf`, and `_scanf` symbols. Building requires NASM and a compatible 32-bit Windows C toolchain; a 64-bit-only compiler setup will need adjustment.

Existing `.obj` and `.exe` files are coursework artifacts. Read the assembly sources to inspect the exercises.

## Limitations

These are learning exercises. String input uses token-based `scanf`, and the averager’s displayed input range is not enforced by validation.

[More projects](https://github.com/mprestado/mprestado/blob/main/PROJECTS.md)
