MmProbeAndLockPages proc near           ; CODE XREF: sub_1403E9D90+56↓p
                                        ; sub_1405CD8DC+6EA↓p ...
                sub     rsp, 28h
                test    r8d, r8d
                movzx   eax, dl
                mov     r10d, 1
                mov     r9d, r10d
                cmovz   r9d, r8d
                test    dl, dl
                mov     r8d, r9d
                cmovz   r10d, eax
                movzx   edx, r10b
                call    sub_140221A30
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmProbeAndLockPages endp
