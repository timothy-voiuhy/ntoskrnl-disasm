MmSecureVirtualMemory proc near         ; CODE XREF: sub_1403BD814+14A↑p
                                        ; sub_14067EC44+204A↑p ...
                sub     rsp, 28h
                mov     eax, r8d
                mov     r8d, 4
                cmp     eax, 2
                cmovz   r8d, eax
                xor     r9d, r9d
                call    MmSecureVirtualMemoryEx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmSecureVirtualMemory endp
