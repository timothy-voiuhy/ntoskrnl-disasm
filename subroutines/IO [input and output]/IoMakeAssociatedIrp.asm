IoMakeAssociatedIrp proc near           ; DATA XREF: .pdata:00000001400F2784↑o
                sub     rsp, 28h
                mov     r8b, dl
                xor     edx, edx
                call    sub_1402F1188
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoMakeAssociatedIrp endp
