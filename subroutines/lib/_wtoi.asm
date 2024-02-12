_wtoi           proc near               ; CODE XREF: sub_140753934+206↓p
                                        ; sub_140754698+E9BFF↓p ...
                sub     rsp, 28h
                call    _wtol
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
_wtoi           endp

byte_1403D207F  db 11h dup(0CCh)        ; DATA XREF: .pdata:00000001400E07B4↑o
; Exported entry 3006. _wtol

; =============== S U B R O U T I N E =======================================


