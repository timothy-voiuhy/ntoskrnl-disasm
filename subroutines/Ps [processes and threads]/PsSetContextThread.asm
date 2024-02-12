PsSetContextThread proc near            ; DATA XREF: .pdata:00000001401219A4↑o

var_18          = dword ptr -18h

                sub     rsp, 38h
                mov     r9b, r8b
                mov     [rsp+38h+var_18], 1
                call    sub_1406650FC
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsSetContextThread endp
