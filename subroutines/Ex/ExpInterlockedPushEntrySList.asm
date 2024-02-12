ExpInterlockedPushEntrySList proc near  ; CODE XREF: sub_1402089A4+34↑p
                                        ; sub_14020ECD0+A8↑p ...
                prefetchw byte ptr [rcx]
                push    rbx
                mov     r10, rcx
                mov     rcx, rdx
                mov     r11, rdx
                mov     rax, [r10]
                mov     rdx, [r10+8]

loc_140406DA4:                          ; CODE XREF: ExpInterlockedPushEntrySList+2A↓j
                mov     r8, rdx
                and     r8b, 0F0h
                mov     [r11], r8
                lea     rbx, [rax+10001h]
                lock cmpxchg16b xmmword ptr [r10]
                jnz     short loc_140406DA4
                mov     rax, r8
                pop     rbx
                retn
ExpInterlockedPushEntrySList endp
