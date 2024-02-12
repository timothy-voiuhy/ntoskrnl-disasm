RtlSetControlSecurityDescriptor proc near
                                        ; CODE XREF: sub_14073125C+115↑p
                                        ; DATA XREF: .pdata:000000014010AC04↑o
                movzx   r10d, dx
                movzx   eax, r8w
                mov     r9d, r10d
                not     r9d
                test    eax, r9d
                setz    r9b
                test    r10d, 0FFFFC03Fh
                setz    al
                test    al, r9b
                jz      short loc_140772717
                not     dx
                and     dx, [rcx+2]
                or      dx, r8w
                mov     [rcx+2], dx
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140772717:                          ; CODE XREF: RtlSetControlSecurityDescriptor+22↑j
                mov     eax, 0C000000Dh
                retn
RtlSetControlSecurityDescriptor endp
