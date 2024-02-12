RtlUpcaseUnicodeToCustomCPN proc near   ; DATA XREF: .pdata:0000000140121E60↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r11d, [rsp+48h+arg_28]
                xor     r13d, r13d
                shr     r11d, 1
                mov     rsi, r9
                mov     ebx, r8d
                mov     r10, rdx
                mov     rdi, rcx
                cmp     [rcx+0Ch], r13w
                jnz     short loc_140912560
                cmp     r11d, ebx
                mov     eax, ebx
                cmovb   eax, r11d
                test    r9, r9
                jz      short loc_14091251B
                mov     [r9], eax

loc_14091251B:                          ; CODE XREF: RtlUpcaseUnicodeToCustomCPN+46↑j
                mov     rbp, [rcx+28h]
                test    eax, eax
                jz      loc_1409125F1
                mov     rsi, [rsp+48h+arg_20]
                mov     r14d, eax

loc_14091252F:                          ; CODE XREF: RtlUpcaseUnicodeToCustomCPN+89↓j
                movzx   eax, word ptr [rsi]
                movzx   ecx, byte ptr [rax+rbp]
                mov     rax, [rdi+20h]
                movzx   ecx, word ptr [rax+rcx*2]
                call    sub_14021DA60
                movzx   r9d, ax
                lea     rsi, [rsi+2]
                mov     al, [r9+rbp]
                mov     [r10], al
                inc     r10
                sub     r14, 1
                jnz     short loc_14091252F
                jmp     loc_1409125F1
; ---------------------------------------------------------------------------

loc_140912560:                          ; CODE XREF: RtlUpcaseUnicodeToCustomCPN+38↑j
                mov     r15, [rcx+38h]
                mov     r14, rdx
                mov     r12, [rcx+28h]
                test    r11d, r11d
                jz      short loc_1409125E6
                mov     rbp, [rsp+48h+arg_20]

loc_140912575:                          ; CODE XREF: RtlUpcaseUnicodeToCustomCPN+114↓j
                test    ebx, ebx
                jz      short loc_1409125E6
                movzx   eax, word ptr [rbp+0]
                add     rbp, 2
                movzx   edx, word ptr [r12+rax*2]
                mov     eax, edx
                shr     rax, 8
                movzx   ecx, word ptr [r15+rax*2]
                test    cx, cx
                jz      short loc_1409125A3
                movzx   eax, dl
                add     rcx, rax
                movzx   ecx, word ptr [r15+rcx*2]
                jmp     short loc_1409125AE
; ---------------------------------------------------------------------------

loc_1409125A3:                          ; CODE XREF: RtlUpcaseUnicodeToCustomCPN+C4↑j
                mov     rax, [rdi+20h]
                movzx   ecx, dl
                movzx   ecx, word ptr [rax+rcx*2]

loc_1409125AE:                          ; CODE XREF: RtlUpcaseUnicodeToCustomCPN+D1↑j
                call    sub_14021DA60
                movzx   r9d, ax
                movzx   edx, word ptr [r12+r9*2]
                movzx   ecx, dx
                shr     cx, 8
                test    cl, cl
                jz      short loc_1409125D6
                mov     eax, ebx
                dec     ebx
                cmp     eax, 2
                jb      short loc_1409125E6
                mov     [r10], cl
                inc     r10

loc_1409125D6:                          ; CODE XREF: RtlUpcaseUnicodeToCustomCPN+F5↑j
                or      eax, 0FFFFFFFFh
                mov     [r10], dl
                add     ebx, eax
                inc     r10
                add     r11d, eax
                jnz     short loc_140912575

loc_1409125E6:                          ; CODE XREF: RtlUpcaseUnicodeToCustomCPN+9E↑j
                                        ; RtlUpcaseUnicodeToCustomCPN+A7↑j ...
                test    rsi, rsi
                jz      short loc_1409125F1
                sub     r10d, r14d
                mov     [rsi], r10d

loc_1409125F1:                          ; CODE XREF: RtlUpcaseUnicodeToCustomCPN+51↑j
                                        ; RtlUpcaseUnicodeToCustomCPN+8B↑j ...
                mov     rbp, [rsp+48h+arg_8]
                cmp     ebx, r11d
                mov     rbx, [rsp+48h+arg_0]
                mov     rsi, [rsp+48h+arg_10]
                sbb     eax, eax
                and     eax, 80000005h
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlUpcaseUnicodeToCustomCPN endp
