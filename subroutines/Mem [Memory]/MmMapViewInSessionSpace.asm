MmMapViewInSessionSpace proc near       ; DATA XREF: .pdata:0000000140106410↑o

var_18          = qword ptr -18h
arg_18          = qword ptr  20h

                sub     rsp, 38h
                and     [rsp+38h+arg_18], 0
                lea     r9, [rsp+38h+arg_18]
                and     [rsp+38h+var_18], 0
                call    MmMapViewInSessionSpaceEx
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmMapViewInSessionSpace endp
