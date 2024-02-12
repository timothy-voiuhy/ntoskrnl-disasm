MmTrimAllSystemPagableMemory proc near  ; CODE XREF: sub_1409B2340+37↓p
                                        ; DATA XREF: .pdata:00000001400F4EC0↑o
                sub     rsp, 28h
                mov     edx, ecx
                xor     ecx, ecx
                call    sub_14053C210
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmTrimAllSystemPagableMemory endp
