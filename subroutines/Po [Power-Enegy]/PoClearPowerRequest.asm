PoClearPowerRequest proc near           ; CODE XREF: sub_1403415B0:loc_1403415FC↓p
                                        ; sub_1403415B0:loc_140341615↓p ...

; FUNCTION CHUNK AT 000000014044ED0A SIZE 00000028 BYTES

                sub     rsp, 28h
                xor     eax, eax
                test    edx, edx
                jz      short loc_1402B2616
                sub     edx, 1
                jnz     loc_14044ED0A
                lea     eax, [rdx+1]

loc_1402B2616:                          ; CODE XREF: PoClearPowerRequest+8↑j
                                        ; PoClearPowerRequest+19C723↓j ...
                mov     edx, eax
                call    sub_1402B265C

loc_1402B261D:                          ; CODE XREF: PoClearPowerRequest+19C719↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoClearPowerRequest endp
