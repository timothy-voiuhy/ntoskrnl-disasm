IofCompleteRequest proc near            ; CODE XREF: sub_14021A330+377↑p
                                        ; sub_14021A330+5C5↑p ...

; FUNCTION CHUNK AT 0000000140439F78 SIZE 0000001B BYTES

                sub     rsp, 28h
                mov     eax, cs:dword_140CFC6BC
                test    eax, eax
                jnz     loc_140439F78
                call    sub_14025D100

loc_14025D0E7:                          ; CODE XREF: IofCompleteRequest+1DCEB3↓j
                                        ; IofCompleteRequest+1DCEBE↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IofCompleteRequest endp
