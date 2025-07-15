%include "asm_io.asm"

section .data

        in1 : db "Enter C : ",0

        in2 : db "Enter B :",0

        in3 : db "Enter A :",0

section .text

global main

main :

        mov eax,in1

        call print_string

        call read_int

        mov ecx,eax



        mov eax,in2

        call print_string

        call read_int

        mov ebx,eax



        mov eax,in1

        call print_string

        call read_int

cmpa :

        cmp eax,ecx

        jl cmpb

        cmp  eax,ebx

        jl bmax

        jmp end

cmpb :

        cmp ecx,ebx

        jl bmax

        mov eax,ecx

        jmp end

bmax :

        mov eax,ebx



end :

        call print_int

        call print_nl

        mov ebx,0

        mov eax,1

        int 0x80