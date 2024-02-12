RtlNumberOfClearBitsEx proc near        ; DATA XREF: .pdata:00000001400F7C8C↑o
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                call    RtlNumberOfSetBitsEx
                mov     rcx, [rbx]
                sub     rcx, rax
                mov     rax, rcx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlNumberOfClearBitsEx endp
