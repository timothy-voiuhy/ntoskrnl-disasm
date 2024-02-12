RtlIsZeroMemory proc near               ; CODE XREF: RtlNormalizeSecurityDescriptor+32E↑p
                                        ; DATA XREF: .pdata:00000001400F7FE0↑o
                xor     eax, eax
                jmp     short loc_14058DC93
; ---------------------------------------------------------------------------

loc_14058DC84:                          ; CODE XREF: RtlIsZeroMemory+16↓j
                test    rdx, rdx
                jz      short loc_14058DCA7
                cmp     [rcx], al
                jnz     short locret_14058DCC1
                inc     rcx
                dec     rdx

loc_14058DC93:                          ; CODE XREF: RtlIsZeroMemory+2↑j
                test    cl, 7
                jnz     short loc_14058DC84
                jmp     short loc_14058DCA7
; ---------------------------------------------------------------------------

loc_14058DC9A:                          ; CODE XREF: RtlIsZeroMemory+2B↓j
                cmp     [rcx], rax
                jnz     short locret_14058DCC1
                add     rcx, 8
                sub     rdx, 8

loc_14058DCA7:                          ; CODE XREF: RtlIsZeroMemory+7↑j
                                        ; RtlIsZeroMemory+18↑j
                cmp     rdx, 8
                jnb     short loc_14058DC9A
                test    rdx, rdx
                jz      short loc_14058DCBF

loc_14058DCB2:                          ; CODE XREF: RtlIsZeroMemory+3D↓j
                cmp     [rcx], al
                jnz     short locret_14058DCC1
                inc     rcx
                sub     rdx, 1
                jnz     short loc_14058DCB2

loc_14058DCBF:                          ; CODE XREF: RtlIsZeroMemory+30↑j
                mov     al, 1

locret_14058DCC1:                       ; CODE XREF: RtlIsZeroMemory+B↑j
                                        ; RtlIsZeroMemory+1D↑j ...
                retn
RtlIsZeroMemory endp
