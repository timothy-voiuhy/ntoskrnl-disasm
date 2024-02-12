PsSetCreateProcessNotifyRoutineEx proc near
                                        ; DATA XREF: .pdata:000000014010CA4C↑o
                sub     rsp, 28h
                neg     dl
                sbb     edx, edx
                neg     edx
                add     edx, 2
                call    sub_140799388
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsSetCreateProcessNotifyRoutineEx endp
