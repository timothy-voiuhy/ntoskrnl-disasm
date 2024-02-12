MmAllocateMappingAddress proc near      ; CODE XREF: sub_1403C8C64+1B3↑p
                                        ; sub_1404F948C+10C↑p ...
                sub     rsp, 28h
                xor     r8d, r8d
                call    MmAllocateMappingAddressEx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmAllocateMappingAddress endp
