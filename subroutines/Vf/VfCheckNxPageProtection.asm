VfCheckNxPageProtection proc near       ; DATA XREF: .pdata:00000001400F8F10↑o
                sub     rsp, 28h
                cmp     cs:dword_140C1D15C, 0
                jz      short loc_1405A0A52
                call    sub_1409C9CCC

loc_1405A0A52:                          ; CODE XREF: VfCheckNxPageProtection+B↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
VfCheckNxPageProtection endp
