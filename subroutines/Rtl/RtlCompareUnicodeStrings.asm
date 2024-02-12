RtlCompareUnicodeStrings proc near      ; CODE XREF: sub_1403A3320+C6↑p
                                        ; sub_1403BCCE0+2D↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = byte ptr  28h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                cmp     rdx, r9
                mov     rax, rdx
                mov     rbp, r9
                mov     rbx, r8
                cmova   rax, r9
                mov     rsi, rdx
                mov     r10, rcx
                lea     r11, [rcx+rax*2]
                cmp     rcx, r11
                jnb     short loc_14062D837
                sub     rbx, rcx
                cmp     [rsp+28h+arg_20], 0
                jnz     short loc_14062D870
                nop     dword ptr [rax]

loc_14062D820:                          ; CODE XREF: RtlCompareUnicodeStrings+55↓j
                movzx   eax, word ptr [r10]
                movzx   ecx, word ptr [rbx+r10]
                cmp     ax, cx
                jnz     short loc_14062D858
                add     r10, 2
                cmp     r10, r11
                jb      short loc_14062D820

loc_14062D837:                          ; CODE XREF: RtlCompareUnicodeStrings+31↑j
                sub     esi, ebp
                mov     eax, esi
                jmp     short loc_14062D85A
; ---------------------------------------------------------------------------

loc_14062D83D:                          ; CODE XREF: RtlCompareUnicodeStrings+9D↓j
                call    sub_14021DA60
                movzx   ecx, r9w
                movzx   edi, ax
                call    sub_14021DA60
                cmp     di, ax
                jz      short loc_14062D87F
                movzx   ecx, ax
                mov     eax, edi

loc_14062D858:                          ; CODE XREF: RtlCompareUnicodeStrings+4C↑j
                sub     eax, ecx

loc_14062D85A:                          ; CODE XREF: RtlCompareUnicodeStrings+5B↑j
                                        ; RtlCompareUnicodeStrings+AC↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_14062D870:                          ; CODE XREF: RtlCompareUnicodeStrings+3B↑j
                                        ; RtlCompareUnicodeStrings+A6↓j
                movzx   ecx, word ptr [r10]
                movzx   r9d, word ptr [rbx+r10]
                cmp     cx, r9w
                jnz     short loc_14062D83D

loc_14062D87F:                          ; CODE XREF: RtlCompareUnicodeStrings+71↑j
                add     r10, 2
                cmp     r10, r11
                jb      short loc_14062D870
                sub     esi, ebp
                mov     eax, esi
                jmp     short loc_14062D85A
RtlCompareUnicodeStrings endp
