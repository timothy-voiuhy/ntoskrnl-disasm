KeInitializeMutant proc near            ; DATA XREF: .pdata:00000001400DC914↑o
                sub     rsp, 28h
                xor     r9d, r9d
                xor     r8d, r8d
                call    sub_140311B2C
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeInitializeMutant endp
