VfCheckNxPagePriority proc near         ; DATA XREF: .pdata:00000001400F8F04↑o
                sub     rsp, 28h
                cmp     cs:dword_140C1D15C, 0
                jz      short loc_1405A0A32
                call    sub_1409C9C24

loc_1405A0A32:                          ; CODE XREF: VfCheckNxPagePriority+B↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
VfCheckNxPagePriority endp
