EtwEventEnabled proc near               ; CODE XREF: sub_140233220+1DD↑p
                                        ; sub_14024F4C0+AC9↓p ...
                sub     rsp, 28h
                mov     r8, rcx
                test    rcx, rcx
                jz      short loc_1402334FD
                mov     rax, [rcx+20h]
                mov     r9, [rdx+8]
                cmp     dword ptr [rax+60h], 0
                jz      short loc_1402334F6
                movzx   ecx, byte ptr [rax+64h]
                cmp     [rdx+4], cl
                ja      short loc_140233536

loc_1402334E3:                          ; CODE XREF: EtwEventEnabled+7A↓j
                mov     ecx, [rax+68h]
                test    cl, 40h
                jz      short loc_1402334F0
                test    r9, r9
                jz      short loc_14023352E

loc_1402334F0:                          ; CODE XREF: EtwEventEnabled+29↑j
                test    [rax+70h], r9
                jnz     short loc_14023351F

loc_1402334F6:                          ; CODE XREF: EtwEventEnabled+18↑j
                                        ; EtwEventEnabled+6C↓j ...
                cmp     byte ptr [r8+65h], 0
                jnz     short loc_140233505

loc_1402334FD:                          ; CODE XREF: EtwEventEnabled+A↑j
                                        ; EtwEventEnabled+5B↓j
                xor     al, al
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140233505:                          ; CODE XREF: EtwEventEnabled+3B↑j
                mov     rcx, [r8+28h]
                mov     r8, r9
                movzx   edx, byte ptr [rdx+4]
                add     rcx, 60h ; '`'
                call    sub_140252AD0
                test    al, al
                jz      short loc_1402334FD
                jmp     short loc_14023352E
; ---------------------------------------------------------------------------

loc_14023351F:                          ; CODE XREF: EtwEventEnabled+34↑j
                mov     rcx, [rax+78h]
                mov     rax, rcx
                and     rax, r9
                cmp     rax, rcx
                jnz     short loc_1402334F6

loc_14023352E:                          ; CODE XREF: EtwEventEnabled+2E↑j
                                        ; EtwEventEnabled+5D↑j
                mov     al, 1
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140233536:                          ; CODE XREF: EtwEventEnabled+21↑j
                test    cl, cl
                jnz     short loc_1402334F6
                jmp     short loc_1402334E3
EtwEventEnabled endp
