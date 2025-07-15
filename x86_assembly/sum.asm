%include "asm_io.asm"
section .data
        msg : db "N = " ,0
        res : db "is equal to ",0
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
        while :
                add eax,ecx
        loop while
        call print_int
        call print_nl
end :
        mov eax,0
        mov eax,1
        int 0x80