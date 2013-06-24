.data
  output:
    .asciz "Printing a number: %d\n"

.text
  .globl _main
  _main:
    movl $0, %eax # define cpuid output option
    movl $5, %edi

    # now call printf

    subl $0x4, %esp # padding stack for 16 byte alignment
    pushl %edi
    pushl $output

    call _printf
    call _exit
    nop
