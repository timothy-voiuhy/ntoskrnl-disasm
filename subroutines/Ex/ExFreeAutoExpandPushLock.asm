ExFreeAutoExpandPushLock proc near      ; DATA XREF: .pdata:00000001400DC650↑o
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                call    ExCleanupAutoExpandPushLock
                mov     rcx, rbx
                call    sub_14023C050
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExFreeAutoExpandPushLock endp
