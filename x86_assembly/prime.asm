%include "asm_io.asm"

section .data

        msg : db "Enter number : ",0 

        pr : db "prime",10,0

        npr : db "not prime",10,0

        half : db 0

section .text

global main

main :

        mov eax,msg

        call print_string

        call read_int

        cmp eax,0

        jge prepa

        imul eax,-1

   prepa :

        cmp eax,2

        jl nprime

        mov ebx,eax

        shr eax,1

        mov [half],eax

        mov ecx,2



        while :

                cmp ecx,[half]

                jg prime

                mov eax,ebx



                xor edx,edx

                div ecx

                cmp edx,0



                je nprime

                inc ecx



        jmp while



        prime :

                mov eax,pr

                call print_string

                jmp fin

        nprime :

                mov eax,npr

                call print_string

        fin :

                mov ebx,0

                mov eax,1

                int 0x80