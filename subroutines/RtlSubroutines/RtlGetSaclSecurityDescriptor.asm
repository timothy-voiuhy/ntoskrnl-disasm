RtlGetSaclSecurityDescriptor proc near  ; CODE XREF: sub_1405C3720+28↑p
                                        ; sub_1405F0AD8+58↑p ...
                cmp     byte ptr [rcx], 1
                mov     r10, rcx
                jnz     short loc_1405F0BBC
                movzx   ecx, word ptr [rcx+2]
                and     cx, 10h
                setnz   al
                mov     [rdx], al
                xor     eax, eax
                test    cx, cx
                jnz     short loc_1405F0B90

loc_1405F0B8C:                          ; CODE XREF: RtlGetSaclSecurityDescriptor+4A↓j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_1405F0B90:                          ; CODE XREF: RtlGetSaclSecurityDescriptor+1A↑j
                movzx   ecx, word ptr [r10+2]
                test    cl, 10h
                jz      short loc_1405F0BAB
                test    cx, cx
                jns     short loc_1405F0BC3
                mov     ecx, [r10+0Ch]
                test    ecx, ecx
                jz      short loc_1405F0BAB
                lea     rax, [r10+rcx]

loc_1405F0BAB:                          ; CODE XREF: RtlGetSaclSecurityDescriptor+28↑j
                                        ; RtlGetSaclSecurityDescriptor+35↑j ...
                mov     [r8], rax
                mov     al, [r10+2]
                shr     al, 5
                and     al, 1
                mov     [r9], al
                jmp     short loc_1405F0B8C
; ---------------------------------------------------------------------------

loc_1405F0BBC:                          ; CODE XREF: RtlGetSaclSecurityDescriptor+6↑j
                mov     eax, 0C0000058h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405F0BC3:                          ; CODE XREF: RtlGetSaclSecurityDescriptor+2D↑j
                mov     rax, [r10+18h]
                jmp     short loc_1405F0BAB
RtlGetSaclSecurityDescriptor endp
