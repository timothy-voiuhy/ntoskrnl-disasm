AlpcGetMessageAttribute proc near       ; CODE XREF: sub_1402B2424+174↑p
                                        ; sub_140677634+10C↓p ...
                push    rbx
                sub     rsp, 20h
                mov     r8d, [rcx]
                mov     rbx, rcx
                test    edx, r8d
                jz      short loc_1402B3B0F
                lea     eax, [rdx-1]
                test    edx, eax
                jnz     short loc_1402B3B0F
                imul    ecx, edx, -2
                and     ecx, r8d
                call    AlpcGetHeaderSize
                mov     eax, eax
                add     rax, rbx

loc_1402B3B08:                          ; CODE XREF: AlpcGetMessageAttribute+31↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402B3B0F:                          ; CODE XREF: AlpcGetMessageAttribute+F↑j
                                        ; AlpcGetMessageAttribute+16↑j
                xor     eax, eax
                jmp     short loc_1402B3B08
AlpcGetMessageAttribute endp
