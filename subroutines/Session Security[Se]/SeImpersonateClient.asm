SeImpersonateClient proc near           ; DATA XREF: .pdata:0000000140122A3C↑o
                sub     rsp, 28h
                call    SeImpersonateClientEx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeImpersonateClient endp
