IoRegisterFsRegistrationChange proc near
                                        ; DATA XREF: .pdata:000000014011C9E8↑o
                sub     rsp, 28h
                xor     r8d, r8d
                call    IoRegisterFsRegistrationChangeMountAware
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoRegisterFsRegistrationChange endp
