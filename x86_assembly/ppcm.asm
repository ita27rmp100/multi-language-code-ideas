%include "asm_io.asm"

section .data

        A : dd 0

        B : dd 0

section .bss

section .text

global main

main :

        call read_int

        mov ebx,eax

        mov [A],eax

        call read_int

        mov ecx,eax

        mov [B],eax

        cmp ecx,0

        je end



        calc :

                cmp ebx,ecx

                je end

                jl swap

                mov eax,ebx

                sub eax,ecx

                mov ebx,eax

        jmp calc



swap :

        xchg ebx,ecx

        jmp calc



end :

        mov eax,ebx

        mov eax,[A]

        mov ecx,[B]

        mul ecx

        xor edx,edx

        div ebx



        call print_int

        call print_nl



        mov ebx,0

        mov eax,1

        int 0x80