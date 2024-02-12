PsSetCreateThreadNotifyRoutine proc near
                                        ; DATA XREF: .pdata:000000014010CA58↑o
                sub     rsp, 28h
                xor     edx, edx
                call    sub_1407992E4
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsSetCreateThreadNotifyRoutine endp
