_ui64toa_s      proc near               ; DATA XREF: .pdata:00000001400E0CF4↑o

var_18          = dword ptr -18h

                sub     rsp, 38h
                and     [rsp+38h+var_18], 0
                call    sub_1403D665C
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
_ui64toa_s      endp

algn_1403D6634:                         ; DATA XREF: .pdata:00000001400E0CF4↑o
                align 20h
; Exported entry 2987. _ultoa_s

; =============== S U B R O U T I N E =======================================


