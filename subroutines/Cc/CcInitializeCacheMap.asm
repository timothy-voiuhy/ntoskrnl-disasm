CcInitializeCacheMap proc near          ; DATA XREF: .pdata:00000001400D95F0↑o

var_18          = qword ptr -18h
var_10          = dword ptr -10h
arg_20          = qword ptr  28h

                sub     rsp, 38h
                mov     rax, [rsp+38h+arg_20]
                and     [rsp+38h+var_10], 0
                mov     [rsp+38h+var_18], rax
                call    CcInitializeCacheMapEx
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
CcInitializeCacheMap endp
