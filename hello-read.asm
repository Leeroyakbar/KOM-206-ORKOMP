segment .data   ;deklarasi data
msg     db 'Hello '
len     equ     $ - msg
 
segment .bss    ;deklarasi input
    varinput resb 4
 
segment .text   ;deklarasi fungsi utama
    global main
main:
    mov eax, 3  ;system call read
    mov ebx, 0  ;format(0, variabel yang mau di input
    mov ecx, varinput
    mov edx, 4
    int 0x80
     
    mov eax, 4  ;system call write
    mov ebx, 1  ;format
    mov ecx, msg
    mov edx, len
    int 0x80
     
    mov eax, 4
    mov ebx, 1
    mov ecx, varinput
    mov edx, 4
    int 0x80
