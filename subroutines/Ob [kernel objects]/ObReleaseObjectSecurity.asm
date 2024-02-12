ObReleaseObjectSecurity proc near       ; CODE XREF: sub_1403F81A0+298↑p
                                        ; sub_140625AB8+11B↓p ...
                sub     rsp, 28h
                test    rcx, rcx
                jz      short loc_140624807
                test    dl, dl
                jnz     short loc_14062480D
                mov     edx, 1
                call    ObDereferenceSecurityDescriptor

loc_140624807:                          ; CODE XREF: ObReleaseObjectSecurity+7↑j
                                        ; ObReleaseObjectSecurity+24↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14062480D:                          ; CODE XREF: ObReleaseObjectSecurity+B↑j
                xor     edx, edx
                call    ExFreePoolWithTag
                jmp     short loc_140624807
ObReleaseObjectSecurity endp
