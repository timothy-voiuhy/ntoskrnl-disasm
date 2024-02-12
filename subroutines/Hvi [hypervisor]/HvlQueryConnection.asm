HvlQueryConnection proc near            ; CODE XREF: sub_1402AC9F0+1A0572↓p
                                        ; sub_1407921BC+30↓p ...

; FUNCTION CHUNK AT 000000014048FEEE SIZE 0000000B BYTES

                mov     rax, cs:qword_140E01848
                test    rax, rax
                jnz     loc_14048FEEE
                mov     eax, 0C0000001h
                retn
HvlQueryConnection endp
