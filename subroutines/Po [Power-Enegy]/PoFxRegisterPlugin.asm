PoFxRegisterPlugin proc near            ; DATA XREF: .pdata:000000014011F8D4↑o
                sub     rsp, 28h
                mov     r8, rdx
                xor     edx, edx
                call    sub_14056C1B8
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoFxRegisterPlugin endp
