HalGetMemoryCachingRequirements proc near
                                        ; CODE XREF: sub_140998CF4+DC↓p
                                        ; sub_140A6B85C+85↓p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                xor     r9d, r9d
                mov     rbx, rdx
                test    r8, r8
                jz      short loc_1403A482E
                mov     r11d, cs:dword_140C4AE90
                mov     [r8], r9d
                test    r11d, r11d
                jz      short loc_1403A4817
                mov     r10, cs:qword_140C4AE88

loc_1403A47E6:                          ; CODE XREF: HalGetMemoryCachingRequirements+55↓j
                mov     rax, [r10]
                shl     rax, 0Ch
                cmp     rcx, rax
                jb      short loc_1403A480B
                mov     rdx, [r10+8]
                shl     rdx, 0Ch
                add     rdx, rax
                lea     rax, [rcx+rbx]
                cmp     rax, rdx
                jbe     short loc_1403A481E
                cmp     rcx, rdx
                jb      short loc_1403A482E

loc_1403A480B:                          ; CODE XREF: HalGetMemoryCachingRequirements+30↑j
                inc     r9d
                add     r10, 18h
                cmp     r9d, r11d
                jb      short loc_1403A47E6

loc_1403A4817:                          ; CODE XREF: HalGetMemoryCachingRequirements+1D↑j
                mov     eax, 0C0000001h
                jmp     short loc_1403A4827
; ---------------------------------------------------------------------------

loc_1403A481E:                          ; CODE XREF: HalGetMemoryCachingRequirements+44↑j
                mov     eax, [r10+10h]
                mov     [r8], eax
                xor     eax, eax

loc_1403A4827:                          ; CODE XREF: HalGetMemoryCachingRequirements+5C↑j
                                        ; HalGetMemoryCachingRequirements+73↓j
                mov     rbx, [rsp+arg_0]
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403A482E:                          ; CODE XREF: HalGetMemoryCachingRequirements+E↑j
                                        ; HalGetMemoryCachingRequirements+49↑j
                mov     eax, 0C000000Dh
                jmp     short loc_1403A4827
HalGetMemoryCachingRequirements endp
