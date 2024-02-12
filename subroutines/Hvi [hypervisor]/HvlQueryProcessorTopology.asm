HvlQueryProcessorTopology proc near     ; DATA XREF: .pdata:00000001400F1698↑o

var_18          = qword ptr -18h

                sub     rsp, 38h
                and     [rsp+38h+var_18], 0
                call    HvlQueryProcessorTopologyEx
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HvlQueryProcessorTopology endp
