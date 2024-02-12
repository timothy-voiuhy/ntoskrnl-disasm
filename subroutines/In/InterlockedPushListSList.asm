InterlockedPushListSList proc near      ; CODE XREF: sub_1402369F0+A96↑p
                                        ; sub_14026BE30+4EE↑p ...
                prefetchw byte ptr [rcx]
                push    rbx
                mov     rax, [rcx]
                mov     r11, rcx
                mov     rcx, rdx
                mov     rdx, [r11+8]

loc_140406E11:                          ; CODE XREF: InterlockedPushListSList+2C↓j
                mov     r10, rdx
                and     r10b, 0F0h
                mov     [r8], r10
                lea     rbx, [rax+10000h]
                lea     bx, [rax+r9]
                lock cmpxchg16b xmmword ptr [r11]
                jnz     short loc_140406E11
                mov     rax, r10
                pop     rbx
                retn
InterlockedPushListSList endp
