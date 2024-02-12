RtlInvertRangeList proc near            ; DATA XREF: .pdata:000000014010DB44↑o

var_18          = qword ptr -18h

                sub     rsp, 38h
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                xor     r8d, r8d
                call    RtlInvertRangeListEx
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlInvertRangeList endp
