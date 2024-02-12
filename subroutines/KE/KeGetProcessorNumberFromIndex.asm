KeGetProcessorNumberFromIndex proc near ; CODE XREF: HalGetProcessorIdByNtNumber+25↓p
                                        ; sub_14037ABD4+3F↓p ...
                xor     r8d, r8d
                test    ecx, ecx
                jnz     short loc_1402A9CAE
                mov     [rdx], r8d

loc_1402A9CAA:                          ; CODE XREF: KeGetProcessorNumberFromIndex+38↓j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1402A9CAE:                          ; CODE XREF: KeGetProcessorNumberFromIndex+5↑j
                cmp     ecx, 500h
                jnb     short loc_1402A9CDA
                mov     eax, ecx
                lea     rcx, dword_140D010D0
                mov     ecx, [rcx+rax*4]
                test    ecx, ecx
                jz      short loc_1402A9CDA
                mov     eax, ecx
                mov     [rdx+3], r8b
                shr     eax, 6
                and     cl, 3Fh
                mov     [rdx], ax
                mov     [rdx+2], cl
                jmp     short loc_1402A9CAA
; ---------------------------------------------------------------------------

loc_1402A9CDA:                          ; CODE XREF: KeGetProcessorNumberFromIndex+14↑j
                                        ; KeGetProcessorNumberFromIndex+24↑j
                mov     eax, 0C000000Dh
                retn
KeGetProcessorNumberFromIndex endp
