RtlGetTokenNamedObjectPath proc near    ; DATA XREF: .pdata:0000000140122004↑o
                sub     rsp, 28h
                mov     r9, r8
                xor     r8d, r8d
                test    dl, dl
                setnz   r8b
                xor     edx, edx
                call    sub_140915D48
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlGetTokenNamedObjectPath endp
