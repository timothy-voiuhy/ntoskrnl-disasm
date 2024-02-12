KeQueryUnbiasedInterruptTime proc near  ; CODE XREF: sub_1405F8E80:loc_1405F95A4↓p
                                        ; sub_14067EC44+2380↓p ...
                mov     r8, 0FFFFF780000003B0h
                mov     r9, 0FFFFF78000000008h

loc_1402B7AE4:                          ; CODE XREF: KeQueryUnbiasedInterruptTime+20↓j
                mov     rcx, [r8]
                mov     rax, [r9]
                mov     rdx, [r8]
                cmp     rcx, rdx
                jnz     short loc_1402B7AE4
                sub     rax, rcx
                retn
KeQueryUnbiasedInterruptTime endp
