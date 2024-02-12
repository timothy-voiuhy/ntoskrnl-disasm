KeSetSystemAffinityThread proc near     ; DATA XREF: .pdata:00000001400DFF5C↑o
                sub     rsp, 28h
                call    KeSetSystemAffinityThreadEx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeSetSystemAffinityThread endp
