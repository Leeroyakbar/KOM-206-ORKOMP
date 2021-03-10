segment .data ; deklarasi variabel
    msg     db "Hello world!", 10,0
    fmt     db "%s", 0
 
segment .text
    global main ; fungsi utama
    extern printf, fflush ; include library dari c
 
main:
        push msg        ; printf("%s\n", msg)
        push fmt
        call printf
        add esp, 8
         
        push 0
        call fflush
        add esp, 4
         
        mov eax, 1      ; exit(0)
        mov ebx, 0
