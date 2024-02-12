_ui64tow_s      proc near               ; CODE XREF: sub_14092A8D4+3E5↓p
                                        ; sub_14092A8D4+751↓p
                                        ; DATA XREF: ...

var_18          = dword ptr -18h

                sub     rsp, 38h
                and     [rsp+38h+var_18], 0
                call    sub_1403D695C
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
_ui64tow_s      endp

algn_1403D6934:                         ; DATA XREF: .pdata:00000001400E0D3C↑o
                align 20h
; Exported entry 2988. _ultow_s

; =============== S U B R O U T I N E =======================================


