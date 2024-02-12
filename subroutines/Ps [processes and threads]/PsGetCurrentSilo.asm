PsGetCurrentSilo proc near              ; CODE XREF: sub_1405072E0+AE↓p
                                        ; sub_1405D4C60+12↓p ...
                mov     rcx, gs:188h
                mov     rax, [rcx+608h]
                cmp     rax, 0FFFFFFFFFFFFFFFDh
                jnz     short locret_14024C7E9
                mov     rax, [rcx+220h]
                mov     rax, [rax+510h]
                test    rax, rax
                jnz     short loc_14024C7F0

locret_14024C7E9:                       ; CODE XREF: PsGetCurrentSilo+14↑j
                                        ; PsGetCurrentSilo+3A↓j ...
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_14024C7F0:                          ; CODE XREF: PsGetCurrentSilo+27↑j
                                        ; PsGetCurrentSilo+48↓j
                test    dword ptr [rax+528h], 40000000h
                jnz     short locret_14024C7E9
                mov     rax, [rax+430h]
                test    rax, rax
                jz      short locret_14024C7E9
                jmp     short loc_14024C7F0
PsGetCurrentSilo endp
