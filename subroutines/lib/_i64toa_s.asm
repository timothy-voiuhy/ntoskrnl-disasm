_i64toa_s       proc near               ; DATA XREF: .pdata:00000001400E0CDC↑o

var_18          = dword ptr -18h

                sub     rsp, 38h
                xor     eax, eax
                cmp     r9d, 0Ah
                jnz     short loc_1403D65D5
                test    rcx, rcx
                jns     short loc_1403D65D5
                lea     eax, [r9-9]

loc_1403D65D5:                          ; CODE XREF: _i64toa_s+A↑j
                                        ; _i64toa_s+F↑j
                mov     [rsp+38h+var_18], eax
                call    sub_1403D665C
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
_i64toa_s       endp

algn_1403D65E4:                         ; DATA XREF: .pdata:00000001400E0CDC↑o
                align 10h
; Exported entry 2957. _itoa_s
; Exported entry 2961. _ltoa_s

; =============== S U B R O U T I N E =======================================


