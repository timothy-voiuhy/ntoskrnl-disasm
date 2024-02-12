NtCompareSigningLevels proc near        ; DATA XREF: .pdata:0000000140106DA0↑o
                                        ; PAGE:000000014098B8E8↓o
                sub     rsp, 28h
                mov     r8, cs:qword_140C1D920
                xor     eax, eax
                test    r8, r8
                jz      short loc_14071C64A
                mov     rax, r8
                call    sub_1404079D0

loc_14071C64A:                          ; CODE XREF: NtCompareSigningLevels+10↑j
                neg     eax
                sbb     eax, eax
                not     eax
                and     eax, 0C0000428h
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
NtCompareSigningLevels endp
