%include "asm_io.asm"

section .data

        msg : db "N = ",0

        res : db "Sum = ",0

section .text

global main

main :

        mov eax,msg

        call print_string

        call read_int

        mov ecx,eax

        mov eax,res

        call print_string

        xor eax,eax

        mov ebx,-2



        while :

                add ebx,2

                add eax,ebx

        loop while

end :

        call print_int

        call print_nl

        mov ebx,0

        mov eax,1

        int 0x80

