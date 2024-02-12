PoUnregisterSystemState proc near       ; DATA XREF: .pdata:00000001400F69D8↑o
                sub     rsp, 28h
                test    rcx, rcx
                jz      short loc_14056F30E
                call    PoDeletePowerRequest

loc_14056F30E:                          ; CODE XREF: PoUnregisterSystemState+7↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoUnregisterSystemState endp
