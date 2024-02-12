RtlSetOwnerSecurityDescriptor proc near ; CODE XREF: RtlCheckTokenMembershipEx+DC↑p
                                        ; RtlCheckTokenCapability+1BA↑p ...
                cmp     byte ptr [rcx], 1
                mov     r9, rcx
                jnz     short loc_14067A093
                movzx   ecx, word ptr [rcx+2]
                xor     r10d, r10d
                test    cx, cx
                js      short loc_14067A09A
                test    rdx, rdx
                mov     eax, r10d
                cmovnz  rax, rdx
                mov     [r9+8], rax
                mov     eax, 0FFFEh
                and     cx, ax
                mov     [r9+2], cx
                test    r8b, r8b
                jnz     short loc_14067A088

loc_14067A084:                          ; CODE XREF: RtlSetOwnerSecurityDescriptor+41↓j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14067A088:                          ; CODE XREF: RtlSetOwnerSecurityDescriptor+32↑j
                or      cx, 1
                mov     [r9+2], cx
                jmp     short loc_14067A084
; ---------------------------------------------------------------------------

loc_14067A093:                          ; CODE XREF: RtlSetOwnerSecurityDescriptor+6↑j
                mov     eax, 0C0000058h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14067A09A:                          ; CODE XREF: RtlSetOwnerSecurityDescriptor+12↑j
                mov     eax, 0C0000079h
                retn
RtlSetOwnerSecurityDescriptor endp
