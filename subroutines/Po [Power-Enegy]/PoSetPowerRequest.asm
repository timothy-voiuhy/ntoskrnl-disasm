PoSetPowerRequest proc near             ; CODE XREF: sub_1403415B0+26↓p
                                        ; sub_1403415B0+5E↓p ...

; FUNCTION CHUNK AT 000000014044ED32 SIZE 00000028 BYTES

                sub     rsp, 28h
                xor     eax, eax
                test    edx, edx
                jz      short loc_1402B2646
                sub     edx, 1
                jnz     loc_14044ED32
                lea     eax, [rdx+1]

loc_1402B2646:                          ; CODE XREF: PoSetPowerRequest+8↑j
                                        ; PoSetPowerRequest+19C71B↓j ...
                mov     edx, eax
                call    sub_1402B2820

loc_1402B264D:                          ; CODE XREF: PoSetPowerRequest+19C711↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoSetPowerRequest endp
