ExfAcquirePushLockShared proc near      ; CODE XREF: sub_140958DEC:loc_1409590C7↓p
                                        ; DATA XREF: .pdata:00000001400D34AC↑o
                sub     rsp, 28h
                mov     r8, rcx
                xor     edx, edx
                call    sub_1402F6140
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExfAcquirePushLockShared endp
