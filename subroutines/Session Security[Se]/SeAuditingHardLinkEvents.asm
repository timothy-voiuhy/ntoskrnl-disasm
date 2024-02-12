SeAuditingHardLinkEvents proc near      ; DATA XREF: .pdata:0000000140122934↑o
                movzx   eax, word ptr [rdx+2]
                test    al, 10h
                jz      short loc_14092202A
                xor     r8d, r8d
                test    ax, ax
                jns     short loc_140921FFC
                mov     eax, [rdx+0Ch]
                test    eax, eax
                jz      short loc_14092202A
                add     rax, rdx
                jmp     short loc_140922000
; ---------------------------------------------------------------------------

loc_140921FFC:                          ; CODE XREF: SeAuditingHardLinkEvents+E↑j
                mov     rax, [rdx+18h]

loc_140922000:                          ; CODE XREF: SeAuditingHardLinkEvents+1A↑j
                test    rax, rax
                jz      short loc_14092202A
                cmp     r8w, [rax+4]
                jz      short loc_14092202A
                cmp     cs:byte_140C1D344, r8b
                jz      short loc_140922019
                test    cl, cl
                jnz     short loc_140922026

loc_140922019:                          ; CODE XREF: SeAuditingHardLinkEvents+33↑j
                cmp     cs:byte_140C1D345, r8b
                jz      short loc_14092202A
                test    cl, cl
                jnz     short loc_14092202A

loc_140922026:                          ; CODE XREF: SeAuditingHardLinkEvents+37↑j
                mov     al, 1
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14092202A:                          ; CODE XREF: SeAuditingHardLinkEvents+6↑j
                                        ; SeAuditingHardLinkEvents+15↑j ...
                xor     al, al
                retn
SeAuditingHardLinkEvents endp
