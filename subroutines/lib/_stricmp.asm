_stricmp        proc near               ; CODE XREF: HalGetEnvironmentVariable+27↓p
                                        ; HalSetEnvironmentVariable+23↓p ...
                sub     rsp, 28h
                call    sub_1403D19BC
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
_stricmp        endp

byte_1403D1A1F  db 11h dup(0CCh)        ; DATA XREF: .pdata:00000001400E06D0↑o
; Exported entry 2975. _strlwr

; =============== S U B R O U T I N E =======================================


