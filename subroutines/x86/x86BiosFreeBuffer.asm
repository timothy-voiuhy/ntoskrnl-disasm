x86BiosFreeBuffer proc near             ; DATA XREF: .pdata:00000001400DFA64↑o
                cmp     cs:byte_140C4C331, 1
                jnz     short loc_1403CB586
                cmp     cs:byte_140C5085C, 1
                jnz     short loc_1403CB586
                movzx   ecx, cx
                shl     ecx, 4
                movzx   eax, dx
                add     ecx, eax
                and     ecx, 0FFFFFh
                cmp     ecx, 20000h
                jnz     short loc_1403CB586
                mov     cs:byte_140C5085C, 0
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403CB586:                          ; CODE XREF: x86BiosFreeBuffer+7↑j
                                        ; x86BiosFreeBuffer+10↑j ...
                mov     eax, 0C000000Dh
                retn
x86BiosFreeBuffer endp
