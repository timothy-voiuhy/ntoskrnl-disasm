PsSetCreateProcessNotifyRoutine proc near
                                        ; CODE XREF: sub_1409DE9D8+4D↓p
                                        ; sub_140A71F6C+1A↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                mov     al, dl
                xor     edx, edx
                test    al, al
                setnz   dl
                call    sub_140799388
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsSetCreateProcessNotifyRoutine endp
