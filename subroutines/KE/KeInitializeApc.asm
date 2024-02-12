KeInitializeApc proc near               ; CODE XREF: sub_140210850+64↑p
                                        ; sub_14023D030+359↑p ...

arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = byte ptr  38h
arg_38          = qword ptr  40h

                mov     byte ptr [rcx], 12h
                mov     r10, rcx
                mov     byte ptr [rcx+2], 58h ; 'X'
                cmp     r8d, 2
                jz      short loc_1402D2E29

loc_1402D2DE0:                          ; CODE XREF: KeInitializeApc+60↓j
                mov     rax, [rsp+arg_20]
                mov     [rcx+50h], r8b
                mov     [rcx+28h], rax
                mov     [rcx+8], rdx
                mov     rdx, [rsp+arg_28]
                mov     [rcx+30h], rdx
                mov     rax, rdx
                neg     rax
                mov     [rcx+20h], r9
                sbb     rcx, rcx
                and     rcx, [rsp+arg_38]
                neg     rdx
                sbb     al, al
                and     al, [rsp+arg_30]
                mov     [r10+51h], al
                mov     [r10+38h], rcx
                mov     byte ptr [r10+52h], 0
                mov     byte ptr [r10+1], 0
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402D2E29:                          ; CODE XREF: KeInitializeApc+E↑j
                mov     r8b, [rdx+24Ah]
                jmp     short loc_1402D2DE0
KeInitializeApc endp
