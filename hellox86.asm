segment .data ; deklerasi data
    msg     db "Hello x86", 10
    len     equ $ - msg
 
segment .text
    global main ; fungsi utama
 
main :
            mov eax, 4  ; write(1, msg, len)
            mov ebx, 1
            mov ecx, msg
            mov edx, len
            int 0x80
             
            mov eax, 1      ; exit(0)
            mov ebx, 0
            int 0x80
