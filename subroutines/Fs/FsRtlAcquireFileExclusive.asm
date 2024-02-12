FsRtlAcquireFileExclusive proc near     ; CODE XREF: sub_1402604A0+316↑p
                                        ; sub_1402D49E8+40↑p
                                        ; DATA XREF: ...

var_18          = qword ptr -18h

                sub     rsp, 38h
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                call    sub_14068FCA0
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlAcquireFileExclusive endp
