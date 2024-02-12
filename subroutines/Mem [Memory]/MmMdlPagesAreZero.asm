MmMdlPagesAreZero proc near             ; DATA XREF: .pdata:00000001400D8DEC↑o
                movzx   eax, word ptr [rcx+0Ah]
                mov     edx, 4002h
                and     ax, dx
                cmp     ax, dx
                jnz     short loc_14035BDB8
                mov     edx, [rcx+2Ch]
                lea     r8, [rcx+30h]
                add     edx, [rcx+20h]
                mov     r9d, [rcx+28h]
                and     edx, 0FFFh
                add     r9, 0FFFh
                add     r9, rdx
                xor     edx, edx
                shr     r9, 0Ch
                lea     eax, [rdx+1]
                test    r9, r9
                jz      short locret_14035BDB6

loc_14035BD9D:                          ; CODE XREF: MmMdlPagesAreZero+54↓j
                mov     rcx, cs:qword_140C4EC00
                cmp     [r8], rcx
                jnz     short loc_14035BDB8
                add     edx, eax
                add     r8, 8
                mov     ecx, edx
                cmp     rcx, r9
                jb      short loc_14035BD9D

locret_14035BDB6:                       ; CODE XREF: MmMdlPagesAreZero+3B↑j
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14035BDB8:                          ; CODE XREF: MmMdlPagesAreZero+F↑j
                                        ; MmMdlPagesAreZero+47↑j
                xor     eax, eax
                retn
MmMdlPagesAreZero endp
