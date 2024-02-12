RtlValidateUnicodeString proc near      ; CODE XREF: RtlDuplicateUnicodeString+5C↓p
                                        ; DATA XREF: .pdata:00000001400C939C↑o
                xor     eax, eax
                test    ecx, ecx
                jnz     short loc_140203D33
                test    rdx, rdx
                jz      short locret_140203D26
                movzx   r8d, word ptr [rdx]
                test    r8b, 1
                jnz     short loc_140203D33
                movzx   ecx, word ptr [rdx+2]
                test    cl, 1
                jnz     short loc_140203D33
                cmp     r8w, cx
                ja      short loc_140203D33
                mov     r9d, 0FFFEh
                cmp     cx, r9w
                ja      short loc_140203D33
                cmp     [rdx+8], rax
                jz      short loc_140203D28

locret_140203D26:                       ; CODE XREF: RtlValidateUnicodeString+9↑j
                                        ; RtlValidateUnicodeString+41↓j
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140203D28:                          ; CODE XREF: RtlValidateUnicodeString+34↑j
                test    r8w, r8w
                jnz     short loc_140203D33
                test    cx, cx
                jz      short locret_140203D26

loc_140203D33:                          ; CODE XREF: RtlValidateUnicodeString+4↑j
                                        ; RtlValidateUnicodeString+13↑j ...
                mov     eax, 0C000000Dh
                retn
RtlValidateUnicodeString endp
