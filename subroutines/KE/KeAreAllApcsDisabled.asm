KeAreAllApcsDisabled proc near          ; CODE XREF: sub_1402F21F8:loc_1402F2236↓p
                                        ; sub_14034FD80+23↓p ...
                sub     rsp, 28h
                mov     rax, gs:188h
                cmp     word ptr [rax+1E6h], 0
                jnz     short loc_1402A98A0
                call    sub_14024B150
                test    al, al
                jz      short loc_1402A98A0
                mov     rax, cr8
                cmp     al, 1
                jnb     short loc_1402A98A0
                xor     al, al

loc_1402A989A:                          ; CODE XREF: KeAreAllApcsDisabled+32↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_1402A98A0:                          ; CODE XREF: KeAreAllApcsDisabled+15↑j
                                        ; KeAreAllApcsDisabled+1E↑j ...
                mov     al, 1
                jmp     short loc_1402A989A
KeAreAllApcsDisabled endp
