MmLockPagableSectionByHandle proc near  ; CODE XREF: sub_1402F0958+44↑p
                                        ; sub_1403A6EE0+7A↑p ...
                sub     rsp, 28h
                mov     edx, 1
                call    sub_140261960
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmLockPagableSectionByHandle endp
