SeUnregisterImageVerificationCallback proc near
                                        ; DATA XREF: .pdata:00000001401226B8↑o
                sub     rsp, 28h
                lock dec cs:dword_140CEC724
                call    ExUnregisterCallback
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeUnregisterImageVerificationCallback endp
