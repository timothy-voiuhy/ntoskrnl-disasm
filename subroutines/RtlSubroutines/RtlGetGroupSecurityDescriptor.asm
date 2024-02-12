RtlGetGroupSecurityDescriptor proc near ; CODE XREF: sub_14075CDA8+94↑p
                                        ; sub_14075D104+233↑p ...
                cmp     byte ptr [rcx], 1
                mov     r9, rdx
                jnz     short loc_14075E88E
                xor     eax, eax
                cmp     [rcx+2], ax
                jge     short loc_14075E895
                mov     edx, [rcx+8]
                test    edx, edx
                jnz     short loc_14075E888

loc_14075E877:                          ; CODE XREF: RtlGetGroupSecurityDescriptor+2C↓j
                                        ; RtlGetGroupSecurityDescriptor+39↓j
                mov     [r9], rax
                mov     al, [rcx+2]
                shr     al, 1
                and     al, 1
                mov     [r8], al
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14075E888:                          ; CODE XREF: RtlGetGroupSecurityDescriptor+15↑j
                lea     rax, [rcx+rdx]
                jmp     short loc_14075E877
; ---------------------------------------------------------------------------

loc_14075E88E:                          ; CODE XREF: RtlGetGroupSecurityDescriptor+6↑j
                mov     eax, 0C0000058h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14075E895:                          ; CODE XREF: RtlGetGroupSecurityDescriptor+E↑j
                mov     rax, [rcx+10h]
                jmp     short loc_14075E877
RtlGetGroupSecurityDescriptor endp
