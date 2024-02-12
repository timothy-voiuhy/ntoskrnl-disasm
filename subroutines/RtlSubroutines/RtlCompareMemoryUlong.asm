RtlCompareMemoryUlong proc near         ; CODE XREF: sub_14029B720+206↑p
                                        ; sub_140348BA0+1BE↑p ...
                push    rdi
                mov     rdi, rcx
                shr     rdx, 2
                jz      short loc_14040766A
                mov     rcx, rdx
                mov     eax, r8d
                repe scasd
                jz      short loc_14040766A
                inc     rcx
                sub     rdx, rcx

loc_14040766A:                          ; CODE XREF: RtlCompareMemoryUlong+8↑j
                                        ; RtlCompareMemoryUlong+12↑j
                lea     rax, ds:0[rdx*4]
                pop     rdi
                retn
RtlCompareMemoryUlong endp
