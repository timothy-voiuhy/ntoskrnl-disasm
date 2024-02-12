iswalnum        proc near               ; CODE XREF: sub_1408B7684+87↓p
                                        ; sub_1408B7684+A6↓p ...
                sub     rsp, 28h
                mov     edx, 107h
                call    sub_1403D45AC
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
iswalnum        endp

byte_1403D2444  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400E0838↑o

; =============== S U B R O U T I N E =======================================


sub_1403D244C   proc near               ; CODE XREF: sub_1408B7684:loc_1408B771D↓p
                                        ; DATA XREF: .pdata:00000001400E0844↑o
                sub     rsp, 28h
                mov     edx, 103h
                call    sub_1403D45AC
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403D244C   endp

byte_1403D2460  db 10h dup(0CCh)        ; DATA XREF: .pdata:00000001400E0844↑o
; Exported entry 3017. iswdigit

; =============== S U B R O U T I N E =======================================


