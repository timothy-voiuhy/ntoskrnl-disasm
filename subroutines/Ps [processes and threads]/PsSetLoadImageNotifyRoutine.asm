PsSetLoadImageNotifyRoutine proc near   ; CODE XREF: sub_14094884C+194↓p
                                        ; DATA XREF: .pdata:000000014010CA64↑o
                sub     rsp, 28h
                xor     edx, edx
                call    PsSetLoadImageNotifyRoutineEx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsSetLoadImageNotifyRoutine endp
