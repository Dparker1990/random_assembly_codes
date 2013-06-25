.data
  output:
    .asciz "Printing a number: %d\n"

.text
  .globl _main
  _main:
    pushl %ebp
    movl  %esp , %ebp
    movl  $5   , %eax
    movl  $7   , %ebx
    add   %eax , %ebx

    # push printf arguments onto the stack
    pushl %ebx
    pushl $output

    # now call printf
    # we are already 16 byte aligned so no
    # need to pad the stack
    call _printf
    leave
    ret
