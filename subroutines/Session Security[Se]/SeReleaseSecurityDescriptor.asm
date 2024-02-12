SeReleaseSecurityDescriptor proc near   ; CODE XREF: sub_140218580+B1E↑p
                                        ; sub_1405ED4D0+22D↑p ...
                sub     rsp, 28h
                test    dl, dl
                jz      short loc_140628FCF

loc_140628FB8:                          ; CODE XREF: SeReleaseSecurityDescriptor+25↓j
                cmp     dl, 1
                jnz     short loc_140628FC9

loc_140628FBD:                          ; CODE XREF: SeReleaseSecurityDescriptor+23↓j
                test    rcx, rcx
                jz      short loc_140628FC9
                xor     edx, edx
                call    ExFreePoolWithTag

loc_140628FC9:                          ; CODE XREF: SeReleaseSecurityDescriptor+B↑j
                                        ; SeReleaseSecurityDescriptor+10↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140628FCF:                          ; CODE XREF: SeReleaseSecurityDescriptor+6↑j
                cmp     r8b, 1
                jz      short loc_140628FBD
                jmp     short loc_140628FB8
SeReleaseSecurityDescriptor endp
