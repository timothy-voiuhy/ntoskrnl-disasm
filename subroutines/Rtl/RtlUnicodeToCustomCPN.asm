RtlUnicodeToCustomCPN proc near         ; DATA XREF: .pdata:0000000140121E54↑o

var_18          = dword ptr -18h
arg_0           = byte ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rsi
                mov     [rsp+arg_18], rdi
                push    r14
                sub     rsp, 30h
                mov     eax, 0FDE9h
                xor     ebx, ebx
                mov     r11d, r8d
                mov     r10, rdx
                cmp     [rcx], ax
                jnz     short loc_14091240A
                mov     eax, [rsp+38h+arg_28]
                lea     r8, [rsp+38h+arg_0]
                test    r9, r9
                cmovnz  r8, r9
                test    eax, eax
                jnz     short loc_1409123E2
                mov     [r8], ebx
                mov     eax, ebx
                jmp     short loc_1409123F6
; ---------------------------------------------------------------------------

loc_1409123E2:                          ; CODE XREF: RtlUnicodeToCustomCPN+39↑j
                mov     r9, [rsp+38h+arg_20]
                mov     edx, r11d
                mov     rcx, r10
                mov     [rsp+38h+var_18], eax
                call    RtlUnicodeToUTF8N

loc_1409123F6:                          ; CODE XREF: RtlUnicodeToCustomCPN+40↑j
                cmp     eax, 0C0000023h
                mov     ecx, 80000005h
                cmovz   ebx, ecx
                mov     eax, ebx
                jmp     loc_1409124B1
; ---------------------------------------------------------------------------

loc_14091240A:                          ; CODE XREF: RtlUnicodeToCustomCPN+25↑j
                mov     edx, [rsp+38h+arg_28]
                shr     edx, 1
                cmp     [rcx+0Ch], bx
                jnz     short loc_140912450
                cmp     edx, r11d
                mov     eax, r11d
                cmovb   eax, edx
                test    r9, r9
                jz      short loc_140912427
                mov     [r9], eax

loc_140912427:                          ; CODE XREF: RtlUnicodeToCustomCPN+82↑j
                mov     rdi, [rcx+28h]
                test    eax, eax
                jz      short loc_1409124A7
                mov     r8, [rsp+38h+arg_20]
                mov     r9d, eax

loc_140912437:                          ; CODE XREF: RtlUnicodeToCustomCPN+AC↓j
                movzx   eax, word ptr [r8]
                lea     r8, [r8+2]
                mov     cl, [rax+rdi]
                mov     [r10], cl
                inc     r10
                sub     r9, 1
                jnz     short loc_140912437
                jmp     short loc_1409124A7
; ---------------------------------------------------------------------------

loc_140912450:                          ; CODE XREF: RtlUnicodeToCustomCPN+74↑j
                mov     r14, [rcx+28h]
                mov     rdi, r10
                test    edx, edx
                jz      short loc_14091249C
                mov     r8, [rsp+38h+arg_20]

loc_140912460:                          ; CODE XREF: RtlUnicodeToCustomCPN+FA↓j
                test    r11d, r11d
                jz      short loc_14091249C
                movzx   eax, word ptr [r8]
                add     r8, 2
                movzx   esi, word ptr [r14+rax*2]
                movzx   ecx, si
                shr     cx, 8
                test    cl, cl
                jz      short loc_14091248E
                mov     eax, r11d
                dec     r11d
                cmp     eax, 2
                jb      short loc_14091249C
                mov     [r10], cl
                inc     r10

loc_14091248E:                          ; CODE XREF: RtlUnicodeToCustomCPN+DB↑j
                mov     [r10], sil
                dec     r11d
                inc     r10
                add     edx, 0FFFFFFFFh
                jnz     short loc_140912460

loc_14091249C:                          ; CODE XREF: RtlUnicodeToCustomCPN+B9↑j
                                        ; RtlUnicodeToCustomCPN+C3↑j ...
                test    r9, r9
                jz      short loc_1409124A7
                sub     r10d, edi
                mov     [r9], r10d

loc_1409124A7:                          ; CODE XREF: RtlUnicodeToCustomCPN+8D↑j
                                        ; RtlUnicodeToCustomCPN+AE↑j ...
                cmp     r11d, edx
                sbb     eax, eax
                and     eax, 80000005h

loc_1409124B1:                          ; CODE XREF: RtlUnicodeToCustomCPN+65↑j
                mov     rbx, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlUnicodeToCustomCPN endp
