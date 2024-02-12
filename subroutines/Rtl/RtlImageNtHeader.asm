RtlImageNtHeader proc near              ; CODE XREF: sub_140261960+B3↑p
                                        ; sub_14033BD50+34↓p ...

arg_8           = qword ptr  10h

                sub     rsp, 28h
                and     [rsp+28h+arg_8], 0
                lea     r9, [rsp+28h+arg_8]
                xor     r8d, r8d
                mov     rdx, rcx
                lea     ecx, [r8+1]
                call    RtlImageNtHeaderEx
                mov     rax, [rsp+28h+arg_8]
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlImageNtHeader endp
