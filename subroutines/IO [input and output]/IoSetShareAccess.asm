IoSetShareAccess proc near              ; DATA XREF: .pdata:0000000140101B38↑o

var_18          = qword ptr -18h
var_10          = dword ptr -10h

                sub     rsp, 38h
                and     [rsp+38h+var_10], 0
                and     [rsp+38h+var_18], 0
                call    IoSetLinkShareAccess
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoSetShareAccess endp
