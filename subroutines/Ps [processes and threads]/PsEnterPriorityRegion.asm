PsEnterPriorityRegion proc near         ; DATA XREF: .pdata:00000001400D5E70↑o
                sub     rsp, 28h
                mov     rcx, gs:188h
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                call    sub_140248280
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsEnterPriorityRegion endp
