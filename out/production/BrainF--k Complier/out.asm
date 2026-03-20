global main
extern putchar
extern getchar
section .bss
   tape resb 30000
section .text
main:
   sub rsp, 40
   lea rbx, [rel tape]
add byte [rbx], 8
loop_start_0:
    cmp byte [rbx], 0
    jz loop_end_0
add rbx, 1
add byte [rbx], 4
loop_start_1:
    cmp byte [rbx], 0
    jz loop_end_1
add rbx, 1
add byte [rbx], 2
add rbx, 1
add byte [rbx], 3
add rbx, 1
add byte [rbx], 3
add rbx, 1
add byte [rbx], 1
sub rbx, 4
sub byte [rbx], 1
    jmp loop_start_1
loop_end_1:
add rbx, 1
add byte [rbx], 1
add rbx, 1
add byte [rbx], 1
add rbx, 1
sub byte [rbx], 1
add rbx, 2
add byte [rbx], 1
loop_start_2:
    cmp byte [rbx], 0
    jz loop_end_2
sub rbx, 1
    jmp loop_start_2
loop_end_2:
sub rbx, 1
sub byte [rbx], 1
    jmp loop_start_0
loop_end_0:
add rbx, 2
movzx rcx, byte [rbx]
call putchar
add rbx, 1
sub byte [rbx], 3
movzx rcx, byte [rbx]
call putchar
add byte [rbx], 7
movzx rcx, byte [rbx]
call putchar
movzx rcx, byte [rbx]
call putchar
add byte [rbx], 3
movzx rcx, byte [rbx]
call putchar
add rbx, 2
movzx rcx, byte [rbx]
call putchar
sub rbx, 1
sub byte [rbx], 1
movzx rcx, byte [rbx]
call putchar
sub rbx, 1
movzx rcx, byte [rbx]
call putchar
add byte [rbx], 3
movzx rcx, byte [rbx]
call putchar
sub byte [rbx], 6
movzx rcx, byte [rbx]
call putchar
sub byte [rbx], 8
movzx rcx, byte [rbx]
call putchar
add rbx, 2
add byte [rbx], 1
movzx rcx, byte [rbx]
call putchar
add rbx, 1
add byte [rbx], 2
movzx rcx, byte [rbx]
call putchar
    xor rax, rax
    add rsp, 40
    ret
