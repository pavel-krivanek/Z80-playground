set -e 

zcc +zx -lndos -create-app -o hello_c.bin hello.c

z80dasm -l -a --origin=0x8000 -t hello_c.bin > hello_c.asm