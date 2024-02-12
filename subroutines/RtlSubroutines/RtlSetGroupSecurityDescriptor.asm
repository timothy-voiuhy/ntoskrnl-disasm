RtlSetGroupSecurityDescriptor proc near ; CODE XREF: RtlCheckTokenMembershipEx+EB↑p
                                        ; RtlCheckTokenCapability+1CA↑p ...
                cmp     byte ptr [rcx], 1
                mov     r9, rcx
                jnz     short loc_14067A033
                movzx   ecx, word ptr [rcx+2]
                xor     r10d, r10d
                test    cx, cx
                js      short loc_14067A03A
                test    rdx, rdx
                mov     eax, r10d
                cmovnz  rax, rdx
                mov     [r9+10h], rax
                mov     eax, 0FFFDh
                and     cx, ax
                mov     [r9+2], cx
                test    r8b, r8b
                jnz     short loc_14067A028

loc_14067A024:                          ; CODE XREF: RtlSetGroupSecurityDescriptor+41↓j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14067A028:                          ; CODE XREF: RtlSetGroupSecurityDescriptor+32↑j
                or      cx, 2
                mov     [r9+2], cx
                jmp     short loc_14067A024
; ---------------------------------------------------------------------------

loc_14067A033:                          ; CODE XREF: RtlSetGroupSecurityDescriptor+6↑j
                mov     eax, 0C0000058h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14067A03A:                          ; CODE XREF: RtlSetGroupSecurityDescriptor+12↑j
                mov     eax, 0C0000079h
                retn
RtlSetGroupSecurityDescriptor endp
