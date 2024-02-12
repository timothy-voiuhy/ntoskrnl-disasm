MmMapMemoryDumpMdl proc near            ; DATA XREF: .pdata:00000001400F4C5C↑o
                sub     rsp, 28h
                mov     r8, rcx
                mov     rcx, cs:qword_140C4E5B0
                shl     rcx, 19h
                mov     rax, 0FFFFF68000000000h
                shl     rax, 19h
                xor     r9d, r9d
                sub     rcx, rax
                sar     rcx, 10h
                call    sub_140383864
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmMapMemoryDumpMdl endp
