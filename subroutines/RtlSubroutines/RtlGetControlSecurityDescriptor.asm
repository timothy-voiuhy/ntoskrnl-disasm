RtlGetControlSecurityDescriptor proc near
                                        ; CODE XREF: sub_1403F928C+49↑p
                                        ; sub_1406266A0+38E↑p ...
                movzx   eax, byte ptr [rcx]
                mov     [r8], eax
                cmp     byte ptr [rcx], 1
                jnz     short loc_1406D6936
                movzx   eax, word ptr [rcx+2]
                mov     [rdx], ax
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406D6936:                          ; CODE XREF: RtlGetControlSecurityDescriptor+9↑j
                mov     eax, 0C0000058h
                retn
RtlGetControlSecurityDescriptor endp
