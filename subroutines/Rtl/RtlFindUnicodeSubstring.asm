RtlFindUnicodeSubstring proc near       ; CODE XREF: sub_1405FAAE0+5F↑p
                                        ; sub_1407A3328+B2846↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140802E52 SIZE 00000031 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                movzx   eax, word ptr [rcx]
                movzx   r9d, word ptr [rdx]
                cmp     ax, r9w
                jb      short loc_140630011
                mov     rbx, [rcx+8]
                mov     edi, eax
                sub     rdi, r9
                mov     esi, r9d
                add     rdi, rbx
                test    r8b, r8b
                jz      loc_140802E52
                mov     rbp, [rdx+8]
                add     rsi, rbp
                cmp     rbx, rdi
                ja      short loc_140630011
                mov     r11, rbx
                sub     r11, rbp

loc_14062FFD0:                          ; CODE XREF: RtlFindUnicodeSubstring+8F↓j
                mov     r10, rbp
                cmp     rbp, rsi
                jnb     short loc_14062FFFF

loc_14062FFD8:                          ; CODE XREF: RtlFindUnicodeSubstring+B6↓j
                movzx   r14d, word ptr [r11+r10]
                movzx   ecx, word ptr [r10]
                cmp     r14w, cx
                jz      short loc_14063002F
                call    sub_14021DA60
                movzx   ecx, r14w
                movzx   r9d, ax
                call    sub_14021DA60
                cmp     ax, r9w
                jz      short loc_14063002F

loc_14062FFFF:                          ; CODE XREF: RtlFindUnicodeSubstring+56↑j
                                        ; RtlFindUnicodeSubstring+B8↓j
                cmp     r10, rsi
                jz      short loc_14063003A
                add     rbx, 2
                add     r11, 2
                cmp     rbx, rdi
                jbe     short loc_14062FFD0

loc_140630011:                          ; CODE XREF: RtlFindUnicodeSubstring+24↑j
                                        ; RtlFindUnicodeSubstring+48↑j ...
                xor     eax, eax

loc_140630013:                          ; CODE XREF: RtlFindUnicodeSubstring+BD↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14063002F:                          ; CODE XREF: RtlFindUnicodeSubstring+65↑j
                                        ; RtlFindUnicodeSubstring+7D↑j
                add     r10, 2
                cmp     r10, rsi
                jb      short loc_14062FFD8
                jmp     short loc_14062FFFF
; ---------------------------------------------------------------------------

loc_14063003A:                          ; CODE XREF: RtlFindUnicodeSubstring+82↑j
                                        ; RtlFindUnicodeSubstring+1D2EEF↓j
                mov     rax, rbx
                jmp     short loc_140630013
RtlFindUnicodeSubstring endp
