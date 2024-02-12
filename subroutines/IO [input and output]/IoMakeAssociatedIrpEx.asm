IoMakeAssociatedIrpEx proc near         ; DATA XREF: .pdata:00000001400D302C↑o
                sub     rsp, 28h
                call    sub_1402F1188
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoMakeAssociatedIrpEx endp
