PsGetContextThread proc near            ; DATA XREF: .pdata:0000000140121998↑o

var_18          = dword ptr -18h

                sub     rsp, 38h
                mov     r9b, r8b
                mov     [rsp+38h+var_18], 1
                call    sub_1406652B4
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsGetContextThread endp
