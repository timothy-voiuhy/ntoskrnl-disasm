NtOpenThreadToken proc near             ; DATA XREF: .pdata:00000001400FD878↑o
                                        ; PAGE:000000014098C128↓o

var_18          = qword ptr -18h

                sub     rsp, 38h
                mov     [rsp+38h+var_18], r9
                xor     r9d, r9d
                call    NtOpenThreadTokenEx
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
NtOpenThreadToken endp
