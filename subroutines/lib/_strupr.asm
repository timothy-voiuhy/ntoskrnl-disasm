_strupr         proc near               ; CODE XREF: HalInitializeBios+2D↑p
                                        ; sub_1403C8608+3F↑p ...

var_18          = qword ptr -18h

                sub     rsp, 38h
                mov     rdx, rcx
                test    rcx, rcx
                jnz     short loc_1403D0C80
                and     [rsp+38h+var_18], rcx
                xor     r9d, r9d
                xor     r8d, r8d
                call    __misaligned_access
                xor     eax, eax
                jmp     short loc_1403D0CA1
; ---------------------------------------------------------------------------

loc_1403D0C80:                          ; CODE XREF: _strupr+A↑j
                mov     cl, [rcx]
                mov     r8, rdx
                jmp     short loc_1403D0C9A
; ---------------------------------------------------------------------------

loc_1403D0C87:                          ; CODE XREF: _strupr+3C↓j
                lea     eax, [rcx-61h]
                cmp     al, 19h
                ja      short loc_1403D0C94
                sub     cl, 20h ; ' '
                mov     [r8], cl

loc_1403D0C94:                          ; CODE XREF: _strupr+2C↑j
                inc     r8
                mov     cl, [r8]

loc_1403D0C9A:                          ; CODE XREF: _strupr+25↑j
                test    cl, cl
                jnz     short loc_1403D0C87
                mov     rax, rdx

loc_1403D0CA1:                          ; CODE XREF: _strupr+1E↑j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
_strupr         endp

algn_1403D0CA7:                         ; DATA XREF: .pdata:00000001400E0568↑o
                align 10h
; Exported entry 2991. _vsnwprintf

; =============== S U B R O U T I N E =======================================


