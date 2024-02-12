KeQueryHardwareCounterConfiguration proc near
                                        ; DATA XREF: .pdata:000000014011DF3C↑o
                mov     eax, cs:dword_140CF9EBC
                mov     r9, rcx
                mov     [r8], eax
                cmp     eax, edx
                jbe     short loc_1408BD8B7
                mov     eax, 0C0000023h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1408BD8B7:                          ; CODE XREF: KeQueryHardwareCounterConfiguration+E↑j
                xor     edx, edx
                test    eax, eax
                jz      short loc_1408BD8E4

loc_1408BD8BD:                          ; CODE XREF: KeQueryHardwareCounterConfiguration+42↓j
                mov     ecx, edx
                lea     r10, unk_140C2B1C0
                mov     eax, [r10+rdx*4]
                add     rcx, rcx
                inc     edx
                and     dword ptr [r9+rcx*8], 0
                and     dword ptr [r9+rcx*8+4], 0
                mov     [r9+rcx*8+8], rax
                cmp     edx, [r8]
                jb      short loc_1408BD8BD

loc_1408BD8E4:                          ; CODE XREF: KeQueryHardwareCounterConfiguration+1B↑j
                xor     eax, eax
                retn
KeQueryHardwareCounterConfiguration endp
