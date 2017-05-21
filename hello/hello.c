// 
// Hello World program for ZX Spectrum without usage of any external library
// 
// Shows several ways how to make C functions with built-in assembler
//
// zcc +zx -lndos -create-app -o hello_c.bin hello.c
//

unsigned char string[] = "Hello World!\n";

// clear screen

void cls() 
{ 
  #asm
  call $0D6B
  #endasm
}

// open screen channel

void opench() 
{
  #asm
  ld a, 2
  call $1601
  #endasm
}

// prints string of size 3 characters
// example function with __FASTCALL__
// only one argument, passed in HL
// return value in HL (not here)

void __FASTCALL__ print1(unsigned char * aString) 
{
  #asm
  ld d, h
  ld e, l
  ld bc, 3
  call $203C
  #endasm
}

// prints string of given lenght
// shows how to get arguments from the stack
// return value in HL

int print2(unsigned char length, unsigned char * aString) 
{
  #asm
  ld hl, 2	// skip over return address on stack
  add hl, sp 
  ld e, (hl)	// DE = aString
  inc hl
  ld d, (hl) 
  inc hl
  ld b, 0	// BC = length
  ld c, (hl) 	
  push bc	// save BC for return value
  call $203C
  pop bc		
  ld h, b	// result in HL
  ld l, c
  #endasm
}

// prints string of given lenght
// shows how to get arguments from the stack
// no return value

void print3(unsigned char length, unsigned char * aString) 
{
  #asm
  ld hl, 2	//skip over return address on stack
  add hl, sp 
  ld e, (hl)	// DE = aString
  inc hl
  ld d, (hl) 
  inc hl
  ld b, 0	// BC = length
  ld c, (hl) 
  call $203C
  #endasm
}


// prints string of given lenght
// shows how to get arguments from the stack
// no return value

void print4(unsigned char * aString, unsigned char length) 
{
  #asm

  ld hl, 2	//skip over return address on stack
  add hl, sp 
  ld c, (hl)	// BC = length, ATTENTION: 16-bits alignment!
  inc hl
  ld b, 0 	
  inc hl	// DE = aString
  ld e, (hl)
  inc hl
  ld d, (hl) 	
  call $203C
  #endasm
}


// prints string of given lenght
// shows how to get arguments from the stack
// no return value

void print5(unsigned char * aString, unsigned int length) 
{
  #asm
  pop hl	// return address in HL
  pop bc	// get arguments (16-bit alignment)
  pop de
  push hl	// save HL
  call $203C
  pop hl	// restore HL
  push de	// restore stack
  push bc
  push hl
  #endasm
}

int main() 
{
  int ret;

  cls();	// prepare screen
  opench();

  ret = print2( sizeof(string)-1, string );	// the last character is 0!
  if (ret == 13) print1("OK\n");
  
  print3(sizeof(string) - 1, string );
  print4(string, sizeof(string) - 1);
  print5(string, sizeof(string) - 1);

}

// at least some EoL needed