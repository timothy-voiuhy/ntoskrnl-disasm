RtlSetSaclSecurityDescriptor proc near  ; CODE XREF: sub_1403F81A0+255↑p
                                        ; sub_1403B45C8+F6563↑p ...
                cmp     byte ptr [rcx], 1
                mov     r10, rcx
                jnz     short loc_1406B61F3
                movzx   ecx, word ptr [rcx+2]
                xor     r11d, r11d
                test    cx, cx
                js      short loc_1406B61FA
                test    dl, dl
                jnz     short loc_1406B61C9
                mov     eax, 0FFEFh
                and     cx, ax

loc_1406B61C0:                          ; CODE XREF: RtlSetSaclSecurityDescriptor+51↓j
                mov     [r10+2], cx

loc_1406B61C5:                          ; CODE XREF: RtlSetSaclSecurityDescriptor+4B↓j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406B61C9:                          ; CODE XREF: RtlSetSaclSecurityDescriptor+16↑j
                or      cx, 10h
                mov     rax, r11
                test    r8, r8
                cmovnz  rax, r8
                mov     [r10+18h], rax
                mov     eax, 0FFDFh
                and     cx, ax
                mov     [r10+2], cx
                test    r9b, r9b
                jz      short loc_1406B61C5
                or      cx, 20h
                jmp     short loc_1406B61C0
; ---------------------------------------------------------------------------

loc_1406B61F3:                          ; CODE XREF: RtlSetSaclSecurityDescriptor+6↑j
                mov     eax, 0C0000058h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406B61FA:                          ; CODE XREF: RtlSetSaclSecurityDescriptor+12↑j
                mov     eax, 0C0000079h
                retn
RtlSetSaclSecurityDescriptor endp
