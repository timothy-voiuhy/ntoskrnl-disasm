NtQueryInformationByName proc near      ; DATA XREF: .pdata:000000014011CACC↑o
                                        ; PAGE:000000014098AB88↓o

var_28          = dword ptr -28h
var_20          = dword ptr -20h
var_18          = qword ptr -18h
arg_20          = dword ptr  28h

                sub     rsp, 48h
                and     [rsp+48h+var_18], 0
                and     [rsp+48h+var_20], 0
                mov     eax, [rsp+48h+arg_20]
                mov     [rsp+48h+var_28], eax
                call    IoQueryInformationByName
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
NtQueryInformationByName endp
