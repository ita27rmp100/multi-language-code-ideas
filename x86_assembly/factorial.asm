%include "asm_io.asm"

section .data 

        msg : db "Enter n = ",0

        res : db "Factorial = ",0

section .text

global main

main :

        mov eax,msg

        call print_string

        call read_int

        mov ebx,eax



        mov ecx,2

        mov eax,1



        while :

                cmp  ecx,ebx

                jg result

                mul ecx

                inc ecx

        jmp while



        result :

                mov ebx,eax

                mov eax,res

                call print_string

                mov eax,ebx

                call print_int

                call print_nl

mov ebx,0

mov eax,1

int 0x80

