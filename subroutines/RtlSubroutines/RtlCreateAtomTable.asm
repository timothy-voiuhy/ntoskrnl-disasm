RtlCreateAtomTable proc near            ; DATA XREF: .pdata:0000000140105948↑o
                sub     rsp, 28h
                mov     r8, rdx
                xor     edx, edx
                call    RtlCreateAtomTableEx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlCreateAtomTable endp
