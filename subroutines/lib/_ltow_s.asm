_ltow_s         proc near               ; CODE XREF: sub_1403B7E44+51↑p
                                        ; sub_1403B7E44+13F↑p
                                        ; DATA XREF: ...

var_18          = dword ptr -18h

                sub     rsp, 38h        ; _itow_s
                xor     eax, eax
                cmp     r9d, 0Ah
                jnz     short loc_1403D6904
                test    ecx, ecx
                jns     short loc_1403D6904
                lea     eax, [r9-9]

loc_1403D6904:                          ; CODE XREF: _ltow_s+A↑j
                                        ; _ltow_s+E↑j
                mov     [rsp+38h+var_18], eax
                call    sub_1403D6AA0
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
_ltow_s         endp

algn_1403D6913:                         ; DATA XREF: .pdata:00000001400E0D30↑o
                align 20h
; Exported entry 2986. _ui64tow_s

; =============== S U B R O U T I N E =======================================


