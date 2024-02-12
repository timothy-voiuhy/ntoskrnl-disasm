_i64tow_s       proc near               ; CODE XREF: sub_14092A8D4+459↓p
                                        ; sub_14092A8D4+7BC↓p
                                        ; DATA XREF: ...

var_18          = dword ptr -18h

                sub     rsp, 38h
                xor     eax, eax
                cmp     r9d, 0Ah
                jnz     short loc_1403D68D5
                test    rcx, rcx
                jns     short loc_1403D68D5
                lea     eax, [r9-9]

loc_1403D68D5:                          ; CODE XREF: _i64tow_s+A↑j
                                        ; _i64tow_s+F↑j
                mov     [rsp+38h+var_18], eax
                call    sub_1403D695C
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
_i64tow_s       endp

algn_1403D68E4:                         ; DATA XREF: .pdata:00000001400E0D24↑o
                align 10h
; Exported entry 2959. _itow_s
; Exported entry 2962. _ltow_s

; =============== S U B R O U T I N E =======================================


