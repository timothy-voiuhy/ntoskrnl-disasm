ExFreePoolWithTag proc near             ; CODE XREF: sub_140200010+24↑p
                                        ; sub_140200A08+185↑p ...
                sub     rsp, 28h        ; ExFreePool
                call    sub_14023C050
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExFreePoolWithTag endp
