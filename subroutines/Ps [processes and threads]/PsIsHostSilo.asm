PsIsHostSilo    proc near               ; CODE XREF: sub_14032A6F0+C9↓p
                                        ; sub_140394BD0+F9↓p ...
                test    rcx, rcx
                setz    al
                retn
PsIsHostSilo    endp

; ---------------------------------------------------------------------------
                align 8
algn_14024DAE8:                         ; DATA XREF: .pdata:00000001400CCB04↑o
                align 10h
; Exported entry 403. FsRtlCheckOplock

; =============== S U B R O U T I N E =======================================


