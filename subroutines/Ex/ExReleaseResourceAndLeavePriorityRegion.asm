ExReleaseResourceAndLeavePriorityRegion proc near
                                        ; DATA XREF: .pdata:00000001400F9F78↑o
                push    rbx
                sub     rsp, 20h
                call    ExReleaseResourceLite
                mov     rbx, gs:188h
                xor     r9d, r9d
                mov     rcx, rbx
                xor     r8d, r8d
                mov     dl, 1
                call    sub_140248280
                mov     rcx, rbx
                call    sub_14021E1F0
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExReleaseResourceAndLeavePriorityRegion endp
