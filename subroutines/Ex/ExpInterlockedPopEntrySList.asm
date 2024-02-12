ExpInterlockedPopEntrySList proc near   ; CODE XREF: sub_1402088C8+3A↑p
                                        ; sub_1402088C8+86↑p ...
                prefetchw byte ptr [rcx]
                push    rbx
                mov     r10, rcx

loc_140406D57:                          ; CODE XREF: ExpInterlockedPopEntrySList+25↓j
                                        ; DATA XREF: sub_1402CB270+28↑o ...
                mov     rax, [r10]
                mov     rdx, [r10+8]
                mov     r8, rdx
                and     r8, 0FFFFFFFFFFFFFFF0h
                jz      short loc_140406D7C

loc_140406D67:                          ; DATA XREF: sub_1402260D0+422↑o
                                        ; sub_140263560+15B↑o ...
                mov     rcx, [r8]
                mov     rbx, rax
                dec     bx

loc_140406D70:                          ; DATA XREF: sub_1402CB270+34↑o
                                        ; sub_1404011F0+2A3↑o ...
                lock cmpxchg16b xmmword ptr [r10]
                jnz     short loc_140406D57

loc_140406D77:                          ; CODE XREF: ExpInterlockedPopEntrySList+31↓j
                mov     rax, r8
                pop     rbx
                retn
; ---------------------------------------------------------------------------

loc_140406D7C:                          ; CODE XREF: ExpInterlockedPopEntrySList+15↑j
                lock or qword ptr [r10], 0
                jmp     short loc_140406D77
ExpInterlockedPopEntrySList endp
