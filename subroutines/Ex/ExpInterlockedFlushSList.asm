ExpInterlockedFlushSList proc near      ; CODE XREF: sub_14023A280:loc_14023A785↑p
                                        ; sub_1402A3050+197↑p ...
                prefetchw byte ptr [rcx]
                push    rbx
                mov     r10, rcx
                mov     rax, [rcx]
                mov     rdx, [rcx+8]

loc_140406DDE:                          ; CODE XREF: ExpInterlockedFlushSList+1B↓j
                xor     ecx, ecx
                mov     rbx, rax
                xor     bx, bx
                lock cmpxchg16b xmmword ptr [r10]
                jnz     short loc_140406DDE
                mov     rax, rdx
                and     al, 0F0h
                pop     rbx
                retn
ExpInterlockedFlushSList endp
