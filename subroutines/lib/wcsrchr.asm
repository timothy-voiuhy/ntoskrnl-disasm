wcsrchr         proc near               ; CODE XREF: sub_1406DDCC4+4D↓p
                                        ; sub_14072C6BC+2F6↓p ...
                mov     r9, rcx
                xor     r8d, r8d

loc_1403D3D46:                          ; CODE XREF: wcsrchr+10↓j
                movzx   eax, word ptr [rcx]
                add     rcx, 2
                test    ax, ax
                jnz     short loc_1403D3D46

loc_1403D3D52:                          ; CODE XREF: wcsrchr+21↓j
                sub     rcx, 2
                movzx   eax, word ptr [rcx]
                cmp     rcx, r9
                jz      short loc_1403D3D63
                cmp     ax, dx
                jnz     short loc_1403D3D52

loc_1403D3D63:                          ; CODE XREF: wcsrchr+1C↑j
                cmp     ax, dx
                cmovz   r8, rcx
                mov     rax, r8
                retn
wcsrchr         endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1403D3D6F:                         ; DATA XREF: .pdata:00000001400E0A84↑o
                align 20h
; Exported entry 3084. wcsspn
; [00000049 BYTES: COLLAPSED FUNCTION wcsspn. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 2
algn_1403D3DCA:                         ; DATA XREF: .pdata:00000001400E0A90↑o
                align 10h
; Exported entry 3085. wcsstr

; =============== S U B R O U T I N E =======================================


