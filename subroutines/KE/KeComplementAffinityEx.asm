KeComplementAffinityEx proc near        ; CODE XREF: sub_140259F00+111↑p
                                        ; sub_14033F010+67↓p
                                        ; DATA XREF: ...
                xor     r11d, r11d
                mov     r10, rcx
                mov     eax, r11d
                cmp     r11w, [rdx]
                jnb     short loc_14025AC01
                nop

loc_14025ABE0:                          ; CODE XREF: KeComplementAffinityEx+2F↓j
                mov     r8d, eax
                inc     eax
                lea     r9, ds:0[r8*8]
                mov     r8, [r9+rdx+8]
                not     r8
                mov     [r9+r10+8], r8
                movzx   ecx, word ptr [rdx]
                cmp     eax, ecx
                jb      short loc_14025ABE0

loc_14025AC01:                          ; CODE XREF: KeComplementAffinityEx+D↑j
                movzx   ecx, word ptr [rdx+2]
                cmp     eax, ecx
                jb      short loc_14025AC20

loc_14025AC09:                          ; CODE XREF: KeComplementAffinityEx+65↓j
                mov     [r10+4], r11d
                movzx   eax, word ptr [rdx+2]
                mov     [r10], ax
                movzx   eax, word ptr [rdx+2]
                mov     [r10+2], ax
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_14025AC20:                          ; CODE XREF: KeComplementAffinityEx+37↑j
                                        ; KeComplementAffinityEx+63↓j
                mov     ecx, eax
                inc     eax
                mov     qword ptr [r10+rcx*8+8], 0FFFFFFFFFFFFFFFFh
                movzx   ecx, word ptr [rdx+2]
                cmp     eax, ecx
                jb      short loc_14025AC20
                jmp     short loc_14025AC09
KeComplementAffinityEx endp
