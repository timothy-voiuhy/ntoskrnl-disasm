InbvIsBootDriverInstalled proc near     ; CODE XREF: sub_1403B4CD0+2F↑p
                                        ; sub_1403B4D60+28↑p ...
                sub     rsp, 28h
                mov     rax, cs:qword_140C509F0
                test    rax, rax
                jz      short loc_1403B4DE9
                mov     rax, [rax+38h]
                test    rax, rax
                jnz     short loc_1403B4DF1

loc_1403B4DE9:                          ; CODE XREF: InbvIsBootDriverInstalled+E↑j
                xor     al, al

loc_1403B4DEB:                          ; CODE XREF: InbvIsBootDriverInstalled+26↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403B4DF1:                          ; CODE XREF: InbvIsBootDriverInstalled+17↑j
                call    sub_1404079D0
                jmp     short loc_1403B4DEB
InbvIsBootDriverInstalled endp
