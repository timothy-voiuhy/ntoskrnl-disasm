IoPropagateIrpExtension proc near       ; DATA XREF: .pdata:00000001400CFA80↑o
                sub     rsp, 28h
                mov     r9d, r8d
                xor     r8d, r8d
                call    IoPropagateIrpExtensionEx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoPropagateIrpExtension endp
