vsprintf        proc near               ; DATA XREF: .pdata:00000001400E0A00↑o
                sub     rsp, 28h
                mov     r9, r8
                xor     r8d, r8d
                call    sub_1403D3A28
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
vsprintf        endp

algn_1403D3AD5:                         ; DATA XREF: .pdata:00000001400E0A00↑o
                align 20h
; Exported entry 3069. wcscat
; [0000002C BYTES: COLLAPSED FUNCTION wcscat. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 0CCh
algn_1403D3B0D:                         ; DATA XREF: .pdata:00000001400E0A0C↑o
                align 20h
; Exported entry 3073. wcscpy
; [0000001B BYTES: COLLAPSED FUNCTION wcscpy. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 4
byte_1403D3B3C  db 14h dup(0CCh)        ; DATA XREF: .pdata:00000001400E0A18↑o
; Exported entry 3071. wcschr

; =============== S U B R O U T I N E =======================================


