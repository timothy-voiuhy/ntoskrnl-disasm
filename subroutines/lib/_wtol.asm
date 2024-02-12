_wtol           proc near               ; CODE XREF: _wtoi+4↑p
                                        ; sub_140697758+142↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                test    rcx, rcx
                jnz     short loc_1403D209D
                xor     eax, eax
                jmp     short loc_1403D20AC
; ---------------------------------------------------------------------------

loc_1403D209D:                          ; CODE XREF: _wtol+7↑j
                xor     edx, edx
                lea     r9d, [rdx+1]
                lea     r8d, [rdx+0Ah]
                call    sub_1403D4104

loc_1403D20AC:                          ; CODE XREF: _wtol+B↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
_wtol           endp

algn_1403D20B2:                         ; DATA XREF: .pdata:00000001400E07C0↑o
                align 20h
; Exported entry 3009. bsearch

; =============== S U B R O U T I N E =======================================


