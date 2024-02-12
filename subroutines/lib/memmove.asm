memmove         proc near               ; CODE XREF: sub_1402001A0+178↑p
                                        ; sub_1402001A0+1C5↑p ...
                mov     rax, rcx        ; RtlCopyMemory
                                        ; RtlMoveMemory
                                        ; memcpy
                cmp     r8, 8
                jb      short loc_140412A80
                cmp     r8, 10h
                ja      short loc_140412A60
                mov     r11, [rdx]
                mov     rdx, [rdx+r8-8]
                mov     [rcx], r11
                mov     [rcx+r8-8], rdx
                retn
; ---------------------------------------------------------------------------

loc_140412A60:                          ; CODE XREF: memmove+D↑j
                cmp     r8, 20h ; ' '
                ja      short loc_140412AC0
                movups  xmm0, xmmword ptr [rdx]
                movups  xmm1, xmmword ptr [rdx+r8-10h]
                movups  xmmword ptr [rcx], xmm0
                movups  xmmword ptr [rcx+r8-10h], xmm1
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_140412A80:                          ; CODE XREF: memmove+7↑j
                test    r8, r8
                jz      short locret_140412A9A
                sub     rdx, rcx
                jb      short loc_140412AA0

loc_140412A8A:                          ; CODE XREF: memmove+58↓j
                mov     r11b, [rcx+rdx]
                inc     rcx
                dec     r8
                mov     [rcx-1], r11b
                jnz     short loc_140412A8A

locret_140412A9A:                       ; CODE XREF: memmove+43↑j
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_140412AA0:                          ; CODE XREF: memmove+48↑j
                add     rcx, r8

loc_140412AA3:                          ; CODE XREF: memmove+71↓j
                mov     r11b, [rcx+rdx-1]
                dec     rcx
                dec     r8
                mov     [rcx], r11b
                jnz     short loc_140412AA3
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_140412AC0:                          ; CODE XREF: memmove+24↑j
                lea     r11, [rdx+r8]
                sub     rdx, rcx
                jnb     short loc_140412AD2
                cmp     r11, rcx
                ja      loc_140412C40

loc_140412AD2:                          ; CODE XREF: memmove+87↑j
                movups  xmm0, xmmword ptr [rcx+rdx]
                add     rcx, 10h
                test    cl, 0Fh
                jz      short loc_140412AF1
                and     rcx, 0FFFFFFFFFFFFFFF0h
                movups  xmm1, xmmword ptr [rcx+rdx]
                movups  xmmword ptr [rax], xmm0
                movaps  xmm0, xmm1
                add     rcx, 10h

loc_140412AF1:                          ; CODE XREF: memmove+9D↑j
                add     r8, rax
                sub     r8, rcx
                mov     r9, r8
                shr     r9, 6
                jz      short loc_140412B6F
                cmp     r9, 1000h
                ja      loc_140412BC0
                and     r8, 3Fh
                jmp     short loc_140412B40
; ---------------------------------------------------------------------------
                align 40h

loc_140412B40:                          ; CODE XREF: memmove+D1↑j
                                        ; memmove+12D↓j
                movups  xmm1, xmmword ptr [rcx+rdx]
                movups  xmm2, xmmword ptr [rcx+rdx+10h]
                movups  xmm3, xmmword ptr [rcx+rdx+20h]
                movups  xmm4, xmmword ptr [rcx+rdx+30h]
                movaps  xmmword ptr [rcx-10h], xmm0
                add     rcx, 40h ; '@'
                dec     r9
                movaps  xmmword ptr [rcx-40h], xmm1
                movaps  xmmword ptr [rcx-30h], xmm2
                movaps  xmmword ptr [rcx-20h], xmm3
                movaps  xmm0, xmm4
                jnz     short loc_140412B40

loc_140412B6F:                          ; CODE XREF: memmove+BE↑j
                                        ; memmove+1F7↓j
                mov     r9, r8
                shr     r9, 4
                jz      short loc_140412B91
                nop     dword ptr [rax+rax+00000000h]

loc_140412B80:                          ; CODE XREF: memmove+14F↓j
                movaps  xmmword ptr [rcx-10h], xmm0
                movups  xmm0, xmmword ptr [rcx+rdx]
                add     rcx, 10h
                dec     r9
                jnz     short loc_140412B80

loc_140412B91:                          ; CODE XREF: memmove+136↑j
                and     r8, 0Fh
                jz      short loc_140412BA5
                lea     r11, [rcx+r8-10h]
                movups  xmm1, xmmword ptr [r11+rdx]
                movups  xmmword ptr [r11], xmm1

loc_140412BA5:                          ; CODE XREF: memmove+155↑j
                movaps  xmmword ptr [rcx-10h], xmm0
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_140412BC0:                          ; CODE XREF: memmove+C7↑j
                mov     r9, r8
                shr     r9, 6
                and     r8, 3Fh
                prefetchnta byte ptr [rcx+rdx+40h]
                jmp     short loc_140412C00
; ---------------------------------------------------------------------------
                align 40h

loc_140412C00:                          ; CODE XREF: memmove+190↑j
                                        ; memmove+1F2↓j
                movups  xmm1, xmmword ptr [rcx+rdx]
                movups  xmm2, xmmword ptr [rcx+rdx+10h]
                movups  xmm3, xmmword ptr [rcx+rdx+20h]
                movups  xmm4, xmmword ptr [rcx+rdx+30h]
                movntps xmmword ptr [rcx-10h], xmm0
                add     rcx, 40h ; '@'
                prefetchnta byte ptr [rcx+rdx+40h]
                dec     r9
                movntps xmmword ptr [rcx-40h], xmm1
                movntps xmmword ptr [rcx-30h], xmm2
                movntps xmmword ptr [rcx-20h], xmm3
                movaps  xmm0, xmm4
                jnz     short loc_140412C00
                sfence
                jmp     loc_140412B6F
; ---------------------------------------------------------------------------
                align 20h

loc_140412C40:                          ; CODE XREF: memmove+8C↑j
                add     rcx, r8
                movups  xmm0, xmmword ptr [rcx+rdx-10h]
                sub     rcx, 10h
                sub     r8, 10h
                test    cl, 0Fh
                jz      short loc_140412C6D
                mov     r11, rcx
                and     rcx, 0FFFFFFFFFFFFFFF0h
                movups  xmm1, xmmword ptr [rcx+rdx]
                movups  xmmword ptr [r11], xmm0
                movaps  xmm0, xmm1
                mov     r8, rcx
                sub     r8, rax

loc_140412C6D:                          ; CODE XREF: memmove+213↑j
                mov     r9, r8
                shr     r9, 6
                jz      short loc_140412CAF
                and     r8, 3Fh
                jmp     short loc_140412C80
; ---------------------------------------------------------------------------
                align 20h

loc_140412C80:                          ; CODE XREF: memmove+23A↑j
                                        ; memmove+26D↓j
                movups  xmm1, xmmword ptr [rcx+rdx-10h]
                movups  xmm2, xmmword ptr [rcx+rdx-20h]
                movups  xmm3, xmmword ptr [rcx+rdx-30h]
                movups  xmm4, xmmword ptr [rcx+rdx-40h]
                movaps  xmmword ptr [rcx], xmm0
                sub     rcx, 40h ; '@'
                dec     r9
                movaps  xmmword ptr [rcx+30h], xmm1
                movaps  xmmword ptr [rcx+20h], xmm2
                movaps  xmmword ptr [rcx+10h], xmm3
                movaps  xmm0, xmm4
                jnz     short loc_140412C80

loc_140412CAF:                          ; CODE XREF: memmove+234↑j
                mov     r9, r8
                shr     r9, 4
                jz      short loc_140412CD1
                nop     dword ptr [rax+rax+00000000h]

loc_140412CC0:                          ; CODE XREF: memmove+28F↓j
                movaps  xmmword ptr [rcx], xmm0
                movups  xmm0, xmmword ptr [rcx+rdx-10h]
                sub     rcx, 10h
                dec     r9
                jnz     short loc_140412CC0

loc_140412CD1:                          ; CODE XREF: memmove+276↑j
                and     r8, 0Fh
                jz      short loc_140412CE6
                mov     r11, rcx
                sub     r11, r8
                movups  xmm1, xmmword ptr [r11+rdx]
                movups  xmmword ptr [r11], xmm1

loc_140412CE6:                          ; CODE XREF: memmove+295↑j
                movaps  xmmword ptr [rcx], xmm0
                retn
memmove         endp

; ---------------------------------------------------------------------------
algn_140412CEA:                         ; DATA XREF: .pdata:00000001400E3E38↑o
                align 20h
; Exported entry 3029. memset

; =============== S U B R O U T I N E =======================================


