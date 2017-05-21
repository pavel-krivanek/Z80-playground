# Z80-playground
Notes and random code about programming for Z80 (ZX Spectrum)

## Toolbox

- z88dk (zcc)
- z80asm
- fuse or http://torinak.com/qaop

## Compilation (+conversion to *.TAP)
```
zcc +zx -lndos -create-app -o hello_c.bin hello.c

z80dasm -l -a --origin=0x8000 -t hello_c.bin > hello_c.asm
```