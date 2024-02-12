PsWrapApcWow64Thread proc near          ; DATA XREF: .pdata:00000001400F78B4↑o
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+580h]
                test    rax, rax
                jz      short loc_140582DE1
                movzx   eax, word ptr [rax+8]
                mov     ecx, 14Ch
                cmp     ax, cx
                jz      short loc_140582DD4
                mov     ecx, 1C4h
                cmp     ax, cx
                jnz     short loc_140582DE1

loc_140582DD4:                          ; CODE XREF: PsWrapApcWow64Thread+28↑j
                mov     rax, [rdx]
                neg     rax
                shl     rax, 2
                mov     [rdx], rax

loc_140582DE1:                          ; CODE XREF: PsWrapApcWow64Thread+1A↑j
                                        ; PsWrapApcWow64Thread+32↑j
                xor     eax, eax
                retn
PsWrapApcWow64Thread endp
