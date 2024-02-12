RtlCompareMemory proc near              ; CODE XREF: sub_14024B450+34C↑p
                                        ; sub_14024B450+37E↑p ...
                push    rdi
                push    rsi
                mov     rsi, rcx
                mov     rdi, rdx
                xor     edx, ecx
                and     edx, 7
                jnz     short loc_140407632
                cmp     r8, 8
                jb      short loc_140407632
                mov     r9, rdi
                neg     ecx
                and     ecx, 7
                jz      short loc_1404075F6
                sub     r8, rcx
                repe cmpsb
                jnz     short loc_140407626

loc_1404075F6:                          ; CODE XREF: RtlCompareMemory+1D↑j
                mov     rcx, r8
                and     rcx, 0FFFFFFFFFFFFFFF8h
                jz      short loc_14040761A
                sub     r8, rcx
                shr     rcx, 3
                repe cmpsq
                jz      short loc_14040761A
                inc     rcx
                sub     rsi, 8
                sub     rdi, 8
                shl     rcx, 3

loc_14040761A:                          ; CODE XREF: RtlCompareMemory+2D↑j
                                        ; RtlCompareMemory+39↑j
                add     r8, rcx
                jz      short loc_140407629
                mov     rcx, r8
                repe cmpsb
                jz      short loc_140407629

loc_140407626:                          ; CODE XREF: RtlCompareMemory+24↑j
                dec     rdi

loc_140407629:                          ; CODE XREF: RtlCompareMemory+4D↑j
                                        ; RtlCompareMemory+54↑j
                sub     rdi, r9
                mov     rax, rdi
                pop     rsi
                pop     rdi
                retn
; ---------------------------------------------------------------------------

loc_140407632:                          ; CODE XREF: RtlCompareMemory+D↑j
                                        ; RtlCompareMemory+13↑j
                test    r8, r8
                jz      short loc_140407644
                mov     rcx, r8
                repe cmpsb
                jz      short loc_140407644
                inc     rcx
                sub     r8, rcx

loc_140407644:                          ; CODE XREF: RtlCompareMemory+65↑j
                                        ; RtlCompareMemory+6C↑j
                mov     rax, r8
                pop     rsi
                pop     rdi
                retn
RtlCompareMemory endp
