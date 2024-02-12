atoi            proc near               ; CODE XREF: sub_14099D840+2C3↓p
                                        ; sub_140A6F168+158↓p ...
                sub     rsp, 28h
                call    atol
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
atoi            endp

algn_1403D154F:                         ; DATA XREF: .pdata:00000001400E061C↑o
                align 20h
; Exported entry 3008. atol

; =============== S U B R O U T I N E =======================================


