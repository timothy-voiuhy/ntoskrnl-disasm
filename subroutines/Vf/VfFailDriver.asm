VfFailDriver    proc near               ; DATA XREF: .pdata:00000001400F8F28↑o

var_18          = qword ptr -18h

                sub     rsp, 38h
                cmp     cs:dword_140C1CC48, 0
                jz      short loc_1405A0AA0
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                mov     edx, edx
                xor     r8d, r8d
                call    sub_1409D2D64

loc_1405A0AA0:                          ; CODE XREF: VfFailDriver+B↑j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
VfFailDriver    endp

algn_1405A0AA6:                         ; DATA XREF: .pdata:00000001400F8F28↑o
                align 10h
; Exported entry 2640. VfFailSystemBIOS

; =============== S U B R O U T I N E =======================================


