SeCompareSigningLevels proc near        ; CODE XREF: sub_140372284+11E93B↑p
                                        ; NtSetInformationProcess+2903↑p ...
                sub     rsp, 28h
                mov     r8, cs:qword_140C1D920
                xor     eax, eax
                test    r8, r8
                jz      short loc_14077D83A
                mov     rax, r8
                call    sub_1404079D0

loc_14077D83A:                          ; CODE XREF: SeCompareSigningLevels+10↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeCompareSigningLevels endp
