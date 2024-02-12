RtlCreateSecurityDescriptor proc near   ; CODE XREF: sub_1402013A4+84↑p
                                        ; sub_1402013A4+EB↑p ...
                cmp     edx, 1
                jnz     short loc_1405E77F9
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  xmmword ptr [rcx], xmm0
                movups  xmmword ptr [rcx+10h], xmm0
                mov     [rcx+20h], rax
                mov     [rcx], dl
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405E77F9:                          ; CODE XREF: RtlCreateSecurityDescriptor+3↑j
                mov     eax, 0C0000058h
                retn
RtlCreateSecurityDescriptor endp
