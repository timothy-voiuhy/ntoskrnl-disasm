RtlCompareUnicodeString proc near       ; CODE XREF: sub_14021D56C+34↑p
                                        ; sub_1403814F0+F↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140802FE4 SIZE 0000002C BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r9, [rcx+8]
                movzx   edi, word ptr [rcx]
                movzx   ebp, word ptr [rdx]
                shr     rdi, 1
                shr     rbp, 1
                mov     rax, rdi
                cmp     rdi, rbp
                cmova   rax, rbp
                lea     rbx, [r9+rax*2]
                cmp     r9, rbx
                jnb     short loc_140630AA8
                test    r8b, r8b
                jz      loc_140630B0B
                mov     r11, [rdx+8]
                mov     r14d, 0FFE0h
                sub     r11, r9
                mov     r15d, 0C0h
                nop     word ptr [rax+rax+00000000h]

loc_140630A90:                          ; CODE XREF: RtlCompareUnicodeString+76↓j
                movzx   ecx, word ptr [r9]
                movzx   r10d, word ptr [r11+r9]
                cmp     cx, r10w
                jnz     short loc_140630AC6

loc_140630A9F:                          ; CODE XREF: RtlCompareUnicodeString+A9↓j
                add     r9, 2
                cmp     r9, rbx
                jb      short loc_140630A90

loc_140630AA8:                          ; CODE XREF: RtlCompareUnicodeString+39↑j
                                        ; RtlCompareUnicodeString+F9↓j
                sub     edi, ebp
                mov     eax, edi

loc_140630AAC:                          ; CODE XREF: RtlCompareUnicodeString+B6↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140630AC6:                          ; CODE XREF: RtlCompareUnicodeString+6D↑j
                call    sub_14021DA60
                movzx   r8d, ax
                cmp     r10d, 61h ; 'a'
                jnb     short loc_140630AE8

loc_140630AD5:                          ; CODE XREF: RtlCompareUnicodeString+C2↓j
                                        ; RtlCompareUnicodeString+CE↓j ...
                cmp     r8w, r10w
                jz      short loc_140630A9F
                movzx   eax, r10w
                mov     ecx, r8d

loc_140630AE2:                          ; CODE XREF: RtlCompareUnicodeString+EE↓j
                sub     ecx, eax
                mov     eax, ecx
                jmp     short loc_140630AAC
; ---------------------------------------------------------------------------

loc_140630AE8:                          ; CODE XREF: RtlCompareUnicodeString+A3↑j
                cmp     r10d, 7Ah ; 'z'
                ja      short loc_140630AF4
                add     r10w, r14w
                jmp     short loc_140630AD5
; ---------------------------------------------------------------------------

loc_140630AF4:                          ; CODE XREF: RtlCompareUnicodeString+BC↑j
                mov     rsi, cs:qword_140D2D020
                test    rsi, rsi
                jz      short loc_140630AD5
                cmp     r10w, r15w
                jb      short loc_140630AD5
                jmp     loc_140802FE4
; ---------------------------------------------------------------------------

loc_140630B0B:                          ; CODE XREF: RtlCompareUnicodeString+3E↑j
                mov     r8, [rdx+8]
                sub     r8, r9

loc_140630B12:                          ; CODE XREF: RtlCompareUnicodeString+F7↓j
                movzx   ecx, word ptr [r9]
                movzx   eax, word ptr [r8+r9]
                cmp     cx, ax
                jnz     short loc_140630AE2
                add     r9, 2
                cmp     r9, rbx
                jb      short loc_140630B12
                jmp     loc_140630AA8
RtlCompareUnicodeString endp
