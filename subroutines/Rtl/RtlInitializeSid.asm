RtlInitializeSid proc near              ; CODE XREF: RtlDeriveCapabilitySidsFromName+9A↑p
                                        ; RtlDeriveCapabilitySidsFromName+105↑p ...
                cmp     r8b, 0Fh
                ja      short loc_1406B331E
                mov     [rcx+1], r8b
                mov     byte ptr [rcx], 1
                mov     eax, [rdx]
                mov     [rcx+2], eax
                movzx   eax, word ptr [rdx+4]
                mov     [rcx+6], ax
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406B331E:                          ; CODE XREF: RtlInitializeSid+4↑j
                mov     eax, 0C000000Dh
                retn
RtlInitializeSid endp
