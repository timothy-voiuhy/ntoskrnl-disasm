KeGetXSaveFeatureFlags proc near        ; CODE XREF: sub_14099EB00+2E4↓p
                                        ; DATA XREF: .pdata:00000001400DDE2C↑o
                mov     rax, 0FFFFF780000003D8h
                xor     edx, edx
                cmp     [rax], rdx
                jz      short loc_1403A9748
                mov     eax, ds:0FFFFF780000003ECh
                mov     ecx, eax
                and     ecx, 1
                shl     ecx, 3
                mov     edx, ecx
                test    al, 2
                jnz     short loc_1403A974C

loc_1403A9748:                          ; CODE XREF: KeGetXSaveFeatureFlags+F↑j
                                        ; KeGetXSaveFeatureFlags+31↓j
                mov     eax, edx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1403A974C:                          ; CODE XREF: KeGetXSaveFeatureFlags+26↑j
                or      ecx, 10h
                mov     edx, ecx
                jmp     short loc_1403A9748
KeGetXSaveFeatureFlags endp
