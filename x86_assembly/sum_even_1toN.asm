;This scrit represent the sum of even numbers from 1 to N
%include "asm_io.asm"

section .data

        msg : db "N(even) = ",0

        res : db "Sum = ",0

        errr : db "N odd",10,0

        two dd 2

section .text

global main

main :

        mov eax,msg

        call print_string

        call read_int

        mov ebx,eax

        xor edx,edx

        div dword [two]

        cmp edx,0

        jne err

        mov eax,res

        call print_string

        mov ecx,ebx

        while :

                cmp ecx,0

                je result

                add ecx,-2

                add ebx,ecx

        jmp while



result :

        mov eax,ebx

        call print_int

        call print_nl

        jmp end

err :

        mov eax,errr

        call print_string

end :

        mov ebx,0

        mov eax,1

        int 0x80