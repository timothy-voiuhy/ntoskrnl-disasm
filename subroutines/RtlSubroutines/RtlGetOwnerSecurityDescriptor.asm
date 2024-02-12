RtlGetOwnerSecurityDescriptor proc near ; CODE XREF: sub_1406B4F00+16A↑p
                                        ; sub_1406B5660+2A↑p ...
                cmp     byte ptr [rcx], 1
                mov     r9, rdx
                jnz     short loc_1406B56F0
                xor     eax, eax
                cmp     [rcx+2], ax
                jge     short loc_1406B56EA
                mov     edx, [rcx+4]
                test    edx, edx
                jz      short loc_1406B56DB
                lea     rax, [rcx+rdx]

loc_1406B56DB:                          ; CODE XREF: RtlGetOwnerSecurityDescriptor+15↑j
                                        ; RtlGetOwnerSecurityDescriptor+2E↓j
                mov     [r9], rax
                mov     al, [rcx+2]
                and     al, 1
                mov     [r8], al
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406B56EA:                          ; CODE XREF: RtlGetOwnerSecurityDescriptor+E↑j
                mov     rax, [rcx+8]
                jmp     short loc_1406B56DB
; ---------------------------------------------------------------------------

loc_1406B56F0:                          ; CODE XREF: RtlGetOwnerSecurityDescriptor+6↑j
                mov     eax, 0C0000058h
                retn
RtlGetOwnerSecurityDescriptor endp
