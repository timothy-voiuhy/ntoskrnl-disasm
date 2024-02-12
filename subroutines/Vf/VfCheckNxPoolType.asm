VfCheckNxPoolType proc near             ; DATA XREF: .pdata:00000001400F8F1C↑o
                sub     rsp, 28h
                cmp     cs:dword_140C1D15C, 0
                jz      short loc_1405A0A72
                call    sub_1409C9D74

loc_1405A0A72:                          ; CODE XREF: VfCheckNxPoolType+B↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
VfCheckNxPoolType endp
