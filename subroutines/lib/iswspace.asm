iswspace        proc near               ; CODE XREF: sub_140928B48+31↓p
                                        ; sub_1409295B4+113↓p ...
                sub     rsp, 28h
                mov     edx, 8
                call    sub_1403D45AC
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
iswspace        endp

algn_1403D24A4:                         ; DATA XREF: .pdata:00000001400E085C↑o
                align 10h
; Exported entry 3021. mbstowcs

; =============== S U B R O U T I N E =======================================


