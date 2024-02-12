_wcslwr         proc near               ; CODE XREF: sub_140705AF8+51↓p
                                        ; sub_140947338+1A↓p
                                        ; DATA XREF: ...

var_18          = qword ptr -18h

                sub     rsp, 38h
                xor     r9d, r9d
                mov     rdx, rcx
                test    rcx, rcx
                jnz     short loc_1403D1D90
                xor     r8d, r8d
                mov     [rsp+38h+var_18], r9
                call    __misaligned_access
                xor     eax, eax
                jmp     short loc_1403D1DB9
; ---------------------------------------------------------------------------

loc_1403D1D90:                          ; CODE XREF: _wcslwr+D↑j
                movzx   ecx, word ptr [rcx]
                mov     r8, rdx
                jmp     short loc_1403D1DB1
; ---------------------------------------------------------------------------

loc_1403D1D98:                          ; CODE XREF: _wcslwr+44↓j
                lea     eax, [rcx-41h]
                cmp     ax, 19h
                ja      short loc_1403D1DA9
                add     cx, 20h ; ' '
                mov     [r8], cx

loc_1403D1DA9:                          ; CODE XREF: _wcslwr+2F↑j
                add     r8, 2
                movzx   ecx, word ptr [r8]

loc_1403D1DB1:                          ; CODE XREF: _wcslwr+26↑j
                test    cx, cx
                jnz     short loc_1403D1D98
                mov     rax, rdx

loc_1403D1DB9:                          ; CODE XREF: _wcslwr+1E↑j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
_wcslwr         endp

byte_1403D1DBF  db 11h dup(0CCh)        ; DATA XREF: .pdata:00000001400E0754↑o
; Exported entry 2996. _wcslwr_s

; =============== S U B R O U T I N E =======================================


