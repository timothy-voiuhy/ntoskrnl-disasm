FsRtlFindInTunnelCache proc near        ; DATA XREF: .pdata:000000014011C280↑o

var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h

                sub     rsp, 48h
                mov     rax, [rsp+48h+arg_30]
                mov     [rsp+48h+var_10], rax
                mov     rax, [rsp+48h+arg_28]
                mov     [rsp+48h+var_18], rax
                mov     rax, [rsp+48h+arg_20]
                and     [rsp+48h+var_20], 0
                mov     [rsp+48h+var_28], rax
                call    FsRtlFindInTunnelCacheEx
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlFindInTunnelCache endp
