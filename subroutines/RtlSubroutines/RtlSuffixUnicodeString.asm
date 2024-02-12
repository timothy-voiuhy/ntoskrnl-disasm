RtlSuffixUnicodeString proc near        ; CODE XREF: sub_1408B9704+276↑p
                                        ; sub_1408B9704+2B8↑p
                                        ; DATA XREF: ...
                push    rbx
                sub     rsp, 20h
                movzx   ebx, word ptr [rdx]
                movzx   eax, word ptr [rcx]
                cmp     bx, ax
                jb      short loc_1409113B3
                mov     r10, [rcx+8]
                mov     r9d, eax
                shr     rax, 1
                lea     r11, [r10+rax*2]
                cmp     r10, r11
                jnb     short loc_1409113AF
                mov     rax, [rdx+8]
                mov     ecx, ebx
                sub     rcx, r9
                shr     rcx, 1
                test    r8b, r8b
                jz      short loc_140911394
                lea     rbx, [rax+rcx*2]
                sub     rbx, r10

loc_14091136C:                          ; CODE XREF: RtlSuffixUnicodeString+60↓j
                movzx   ecx, word ptr [rbx+r10]
                call    sub_14021DA60
                movzx   ecx, word ptr [r10]
                movzx   r9d, ax
                call    sub_14021DA60
                cmp     ax, r9w
                jnz     short loc_1409113B3
                add     r10, 2
                cmp     r10, r11
                jb      short loc_14091136C
                jmp     short loc_1409113AF
; ---------------------------------------------------------------------------

loc_140911394:                          ; CODE XREF: RtlSuffixUnicodeString+33↑j
                lea     rdx, [rax+rcx*2]
                sub     rdx, r10

loc_14091139B:                          ; CODE XREF: RtlSuffixUnicodeString+7D↓j
                movzx   eax, word ptr [rdx+r10]
                cmp     [r10], ax
                jnz     short loc_1409113B3
                add     r10, 2
                cmp     r10, r11
                jb      short loc_14091139B

loc_1409113AF:                          ; CODE XREF: RtlSuffixUnicodeString+22↑j
                                        ; RtlSuffixUnicodeString+62↑j
                mov     al, 1
                jmp     short loc_1409113B5
; ---------------------------------------------------------------------------

loc_1409113B3:                          ; CODE XREF: RtlSuffixUnicodeString+F↑j
                                        ; RtlSuffixUnicodeString+57↑j ...
                xor     al, al

loc_1409113B5:                          ; CODE XREF: RtlSuffixUnicodeString+81↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlSuffixUnicodeString endp
