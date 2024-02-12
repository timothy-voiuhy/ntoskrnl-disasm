VfFailSystemBIOS proc near              ; DATA XREF: .pdata:00000001400F8F34↑o

var_18          = qword ptr -18h

                sub     rsp, 38h
                cmp     cs:dword_140C1CC48, 0
                jz      short loc_1405A0ADC
                test    cs:dword_140C2A6E0, 40000000h
                jz      short loc_1405A0ADC
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                mov     edx, edx
                xor     r8d, r8d
                call    sub_1409D2D64

loc_1405A0ADC:                          ; CODE XREF: VfFailSystemBIOS+B↑j
                                        ; VfFailSystemBIOS+17↑j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
VfFailSystemBIOS endp
