SeFreePrivileges proc near              ; CODE XREF: sub_140208EE8+6A8↑p
                                        ; sub_140218580+20E5D2↓p ...
                sub     rsp, 28h
                xor     edx, edx
                call    ExFreePoolWithTag
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeFreePrivileges endp
