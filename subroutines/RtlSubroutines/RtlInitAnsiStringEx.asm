RtlInitAnsiStringEx proc near           ; CODE XREF: RtlInitUTF8StringEx+4↓p
                                        ; RtlCreateUnicodeStringFromAsciiz+16↓p ...
                and     qword ptr [rcx], 0
                mov     [rcx+8], rdx
                test    rdx, rdx
                jz      short loc_1403B7DEC
                or      rax, 0FFFFFFFFFFFFFFFFh

loc_1403B7DD1:                          ; CODE XREF: RtlInitAnsiStringEx+18↓j
                inc     rax
                cmp     byte ptr [rdx+rax], 0
                jnz     short loc_1403B7DD1
                cmp     rax, 0FFFEh
                ja      short loc_1403B7DF0
                mov     [rcx], ax
                inc     ax
                mov     [rcx+2], ax

loc_1403B7DEC:                          ; CODE XREF: RtlInitAnsiStringEx+B↑j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_1403B7DF0:                          ; CODE XREF: RtlInitAnsiStringEx+20↑j
                mov     eax, 0C0000106h
                retn
RtlInitAnsiStringEx endp
