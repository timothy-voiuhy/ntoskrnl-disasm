RtlClearAllBitsEx proc near             ; CODE XREF: sub_140660820+3B4↓p
                                        ; sub_140661000+14C↓p ...
                sub     rsp, 28h
                mov     rax, [rcx]
                mov     r8d, 0
                mov     rcx, [rcx+8]
                test    al, 1Fh
                setnz   r8b
                shr     rax, 5
                add     r8, rax
                xor     edx, edx
                shl     r8, 2
                call    memset
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlClearAllBitsEx endp
