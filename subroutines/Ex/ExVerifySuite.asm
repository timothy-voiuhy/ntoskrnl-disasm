ExVerifySuite   proc near               ; CODE XREF: sub_140538F8C+4A↓p
                                        ; sub_140538F8C+58↓p ...
                cmp     ecx, 12h
                jg      short loc_1403AAB56
                mov     eax, ds:0FFFFF780000002D0h
                bt      eax, ecx
                setb    al
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403AAB56:                          ; CODE XREF: ExVerifySuite+3↑j
                xor     al, al
                retn
ExVerifySuite   endp

; ---------------------------------------------------------------------------
                align 2
algn_1403AAB5A:                         ; DATA XREF: .pdata:00000001400DDF94↑o
                align 20h
; Exported entry 670. HeadlessDispatch

; =============== S U B R O U T I N E =======================================


