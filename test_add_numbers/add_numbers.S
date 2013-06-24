.data
  output:
    .asciz "Printing a number: %d\n"

.text
  .globl add_num
  add_num:
    add %eax, %ebx
    ret

  .globl _main
  _main:
    pushl %ebp
    movl %esp, %ebp
    movl $5, %eax
    movl $7, %ebx
    call add_num

    # now call printf
    # also, we are already 16 byte aligned so no
    # need to pad the stack

    pushl %ebx
    pushl $output

    call _printf
    leave
    ret
