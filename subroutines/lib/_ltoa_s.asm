_ltoa_s         proc near               ; DATA XREF: .pdata:00000001400E0CE8↑o

var_18          = dword ptr -18h

                sub     rsp, 38h        ; _itoa_s
                xor     eax, eax
                cmp     r9d, 0Ah
                jnz     short loc_1403D6604
                test    ecx, ecx
                jns     short loc_1403D6604
                lea     eax, [r9-9]

loc_1403D6604:                          ; CODE XREF: _ltoa_s+A↑j
                                        ; _ltoa_s+E↑j
                mov     [rsp+38h+var_18], eax
                call    sub_1403D6790
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
_ltoa_s         endp

algn_1403D6613:                         ; DATA XREF: .pdata:00000001400E0CE8↑o
                align 20h
; Exported entry 2985. _ui64toa_s

; =============== S U B R O U T I N E =======================================


