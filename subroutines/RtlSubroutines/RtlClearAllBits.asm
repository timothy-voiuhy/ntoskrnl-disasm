RtlClearAllBits proc near               ; CODE XREF: sub_1405E534C+1A4↓p
                                        ; sub_14065E450+3A↓p ...
                sub     rsp, 28h
                mov     eax, [rcx]
                mov     edx, 0
                mov     rcx, [rcx+8]
                test    al, 1Fh
                setnz   dl
                shr     eax, 5
                lea     r8d, [rax+rdx]
                xor     edx, edx
                shl     r8d, 2
                call    memset
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlClearAllBits endp
