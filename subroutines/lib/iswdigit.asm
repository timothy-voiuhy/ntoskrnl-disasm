iswdigit        proc near               ; CODE XREF: sub_140697758+CA↓p
                                        ; DATA XREF: .pdata:00000001400E0850↑o
                sub     rsp, 28h
                mov     edx, 4
                call    sub_1403D45AC
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
iswdigit        endp

algn_1403D2484:                         ; DATA XREF: .pdata:00000001400E0850↑o
                align 10h
; Exported entry 3018. iswspace

; =============== S U B R O U T I N E =======================================


