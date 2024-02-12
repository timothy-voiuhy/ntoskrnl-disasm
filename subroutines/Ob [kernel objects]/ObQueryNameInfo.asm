ObQueryNameInfo proc near               ; DATA XREF: .pdata:0000000140105BF4↑o
                movzx   eax, byte ptr [rcx-16h]
                add     rcx, 0FFFFFFFFFFFFFFD0h
                test    al, 2
                jz      short loc_140707A92
                and     eax, 3
                lea     rdx, unk_140C25E20
                movzx   eax, byte ptr [rax+rdx]
                sub     rcx, rax

loc_140707A8D:                          ; CODE XREF: ObQueryNameInfo+24↓j
                mov     rax, rcx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140707A92:                          ; CODE XREF: ObQueryNameInfo+A↑j
                xor     ecx, ecx
                jmp     short loc_140707A8D
ObQueryNameInfo endp
