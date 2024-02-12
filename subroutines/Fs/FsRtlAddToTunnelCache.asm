FsRtlAddToTunnelCache proc near         ; DATA XREF: .pdata:000000014011C274↑o

var_28          = dword ptr -28h
var_20          = dword ptr -20h
var_18          = qword ptr -18h
arg_20          = byte ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h

                sub     rsp, 48h
                mov     rax, [rsp+48h+arg_30]
                neg     [rsp+48h+arg_20]
                mov     [rsp+48h+var_18], rax
                mov     eax, [rsp+48h+arg_28]
                sbb     r10d, r10d
                and     r10d, 2
                mov     [rsp+48h+var_20], eax
                mov     [rsp+48h+var_28], r10d
                call    FsRtlAddToTunnelCacheEx
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlAddToTunnelCache endp
