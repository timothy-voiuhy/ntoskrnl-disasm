RtlPrefixUnicodeString proc near        ; CODE XREF: sub_140202244+30↑p
                                        ; sub_140569884+44F↑p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                movzx   eax, word ptr [rcx]
                mov     r9, [rcx+8]
                cmp     [rdx], ax
                jb      short loc_14063035E
                lea     rbx, [r9+rax]
                cmp     r9, rbx
                jnb     short loc_140630338
                test    r8b, r8b
                jz      short loc_140630362
                mov     rdi, [rdx+8]
                sub     rdi, r9
                nop     dword ptr [rax+rax+00h]

loc_140630320:                          ; CODE XREF: RtlPrefixUnicodeString+46↓j
                movzx   r11d, word ptr [r9]
                movzx   ecx, word ptr [rdi+r9]
                cmp     r11w, cx
                jnz     short loc_140630346

loc_14063032F:                          ; CODE XREF: RtlPrefixUnicodeString+6C↓j
                add     r9, 2
                cmp     r9, rbx
                jb      short loc_140630320

loc_140630338:                          ; CODE XREF: RtlPrefixUnicodeString+1D↑j
                                        ; RtlPrefixUnicodeString+8D↓j
                mov     al, 1

loc_14063033A:                          ; CODE XREF: RtlPrefixUnicodeString+70↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140630346:                          ; CODE XREF: RtlPrefixUnicodeString+3D↑j
                call    sub_14021DA60
                movzx   ecx, r11w
                movzx   r10d, ax
                call    sub_14021DA60
                cmp     ax, r10w
                jz      short loc_14063032F

loc_14063035E:                          ; CODE XREF: RtlPrefixUnicodeString+14↑j
                                        ; RtlPrefixUnicodeString+82↓j
                xor     al, al
                jmp     short loc_14063033A
; ---------------------------------------------------------------------------

loc_140630362:                          ; CODE XREF: RtlPrefixUnicodeString+22↑j
                mov     rcx, [rdx+8]
                sub     rcx, r9

loc_140630369:                          ; CODE XREF: RtlPrefixUnicodeString+8B↓j
                movzx   eax, word ptr [rcx+r9]
                cmp     [r9], ax
                jnz     short loc_14063035E
                add     r9, 2
                cmp     r9, rbx
                jb      short loc_140630369
                jmp     short loc_140630338
RtlPrefixUnicodeString endp
