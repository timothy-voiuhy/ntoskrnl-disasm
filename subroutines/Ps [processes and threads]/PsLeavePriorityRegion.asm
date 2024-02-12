PsLeavePriorityRegion proc near         ; DATA XREF: .pdata:00000001400D5BD0↑o
                sub     rsp, 28h
                mov     rcx, gs:188h
                xor     r9d, r9d
                xor     r8d, r8d
                mov     dl, 1
                call    sub_140248280
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsLeavePriorityRegion endp
