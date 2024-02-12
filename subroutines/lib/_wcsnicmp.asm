_wcsnicmp       proc near               ; CODE XREF: sub_14050E45C+39↓p
                                        ; sub_14050E45C+62↓p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                xor     r9d, r9d
                mov     rbx, r8
                mov     r11, rdx
                mov     r10, rcx
                test    r8, r8
                jz      short loc_1403D1EB0
                sub     r10, rdx

loc_1403D1E69:                          ; CODE XREF: _wcsnicmp+53↓j
                movzx   ecx, word ptr [r10+r11]
                lea     eax, [rcx-41h]
                cmp     ax, 19h
                lea     edx, [rcx+20h]
                cmova   dx, cx
                movzx   ecx, word ptr [r11]
                lea     r11, [r11+2]
                lea     eax, [rcx-41h]
                cmp     ax, 19h
                lea     r8d, [rcx+20h]
                cmova   r8w, cx
                sub     rbx, 1
                jz      short loc_1403D1EA5
                test    dx, dx
                jz      short loc_1403D1EA5
                cmp     dx, r8w
                jz      short loc_1403D1E69

loc_1403D1EA5:                          ; CODE XREF: _wcsnicmp+48↑j
                                        ; _wcsnicmp+4D↑j
                movzx   eax, r8w
                movzx   r9d, dx
                sub     r9d, eax

loc_1403D1EB0:                          ; CODE XREF: _wcsnicmp+14↑j
                mov     rbx, [rsp+arg_0]
                mov     eax, r9d
                retn
; ---------------------------------------------------------------------------
                db 0CCh
_wcsnicmp       endp

algn_1403D1EBA:                         ; DATA XREF: .pdata:00000001400E076C↑o
                align 20h
; Exported entry 2998. _wcsnset
; [0000001E BYTES: COLLAPSED FUNCTION _wcsnset. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 0CCh
byte_1403D1EDF  db 11h dup(0CCh)        ; DATA XREF: .pdata:00000001400E0778↑o
; Exported entry 2999. _wcsnset_s
; [00000088 BYTES: COLLAPSED FUNCTION _wcsnset_s. PRESS CTRL-NUMPAD+ TO EXPAND]
algn_1403D1F78:                         ; DATA XREF: .pdata:00000001400E0784↑o
                align 20h
; Exported entry 3000. _wcsrev
; [00000040 BYTES: COLLAPSED FUNCTION _wcsrev. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 0CCh
algn_1403D1FC1:                         ; DATA XREF: .pdata:00000001400E0790↑o
                align 10h
; Exported entry 3001. _wcsset_s

; =============== S U B R O U T I N E =======================================


