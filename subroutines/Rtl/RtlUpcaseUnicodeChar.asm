RtlUpcaseUnicodeChar proc near          ; CODE XREF: sub_140206060+FE↑p
                                        ; towupper+4↑p ...
                cmp     cx, 61h ; 'a'
                jnb     short loc_1405E9C1B

loc_1405E9C16:                          ; CODE XREF: RtlUpcaseUnicodeChar+20↓j
                                        ; RtlUpcaseUnicodeChar+2A↓j
                movzx   eax, cx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405E9C1B:                          ; CODE XREF: RtlUpcaseUnicodeChar+4↑j
                cmp     cx, 7Ah ; 'z'
                ja      short loc_1405E9C26
                lea     eax, [rcx-20h]
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1405E9C26:                          ; CODE XREF: RtlUpcaseUnicodeChar+F↑j
                mov     r9, cs:qword_140D2D020
                test    r9, r9
                jz      short loc_1405E9C16
                mov     eax, 0C0h
                cmp     cx, ax
                jb      short loc_1405E9C16
                movzx   r8d, cx
                movzx   eax, cx
                shr     rax, 8
                movzx   edx, word ptr [r9+rax*2]
                mov     eax, r8d
                shr     eax, 4
                and     r8d, 0Fh
                and     eax, 0Fh
                add     edx, eax
                movzx   edx, word ptr [r9+rdx*2]
                add     edx, r8d
                movzx   eax, word ptr [r9+rdx*2]
                add     ax, cx
                retn
RtlUpcaseUnicodeChar endp
