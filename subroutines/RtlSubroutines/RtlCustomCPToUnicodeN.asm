RtlCustomCPToUnicodeN proc near         ; DATA XREF: .pdata:0000000140121E48↑o

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
                mov     r8, rcx
                cmp     [rcx], ax
                jnz     short loc_1409122AD
                mov     eax, [rsp+38h+arg_28]
                lea     r8, [rsp+38h+arg_0]
                test    r9, r9
                cmovnz  r8, r9
                test    eax, eax
                jnz     short loc_140912285
                mov     [r8], ebx
                mov     eax, ebx
                jmp     short loc_140912299
; ---------------------------------------------------------------------------

loc_140912285:                          ; CODE XREF: RtlCustomCPToUnicodeN+3C↑j
                mov     r9, [rsp+38h+arg_20]
                mov     edx, r11d
                mov     rcx, r10
                mov     [rsp+38h+var_18], eax
                call    RtlUTF8ToUnicodeN

loc_140912299:                          ; CODE XREF: RtlCustomCPToUnicodeN+43↑j
                cmp     eax, 0C0000023h
                mov     ecx, 80000005h
                cmovz   ebx, ecx
                mov     eax, ebx
                jmp     loc_140912375
; ---------------------------------------------------------------------------

loc_1409122AD:                          ; CODE XREF: RtlCustomCPToUnicodeN+28↑j
                mov     edx, [rsp+38h+arg_28]
                shr     r11d, 1
                cmp     [rcx+0Ch], bx
                jnz     short loc_1409122FD
                cmp     r11d, edx
                mov     ecx, edx
                cmovb   ecx, r11d
                test    r9, r9
                jz      short loc_1409122CE
                lea     eax, [rcx+rcx]
                mov     [r9], eax

loc_1409122CE:                          ; CODE XREF: RtlCustomCPToUnicodeN+86↑j
                mov     rdi, [r8+20h]
                test    ecx, ecx
                jz      loc_14091236B
                mov     r8, [rsp+38h+arg_20]
                mov     r9d, ecx

loc_1409122E2:                          ; CODE XREF: RtlCustomCPToUnicodeN+B9↓j
                movzx   eax, byte ptr [r8]
                inc     r8
                movzx   ecx, word ptr [rdi+rax*2]
                mov     [r10], cx
                lea     r10, [r10+2]
                sub     r9, 1
                jnz     short loc_1409122E2
                jmp     short loc_14091236B
; ---------------------------------------------------------------------------

loc_1409122FD:                          ; CODE XREF: RtlCustomCPToUnicodeN+78↑j
                mov     r14, [rcx+38h]
                mov     rsi, r10
                test    r11d, r11d
                jz      short loc_140912360
                mov     rdi, [rsp+38h+arg_20]

loc_14091230E:                          ; CODE XREF: RtlCustomCPToUnicodeN+114↓j
                test    edx, edx
                jz      short loc_140912360
                movzx   ecx, byte ptr [rdi]
                dec     r11d
                dec     edx
                movzx   eax, word ptr [r14+rcx*2]
                test    ax, ax
                jz      short loc_14091233E
                test    edx, edx
                jz      short loc_140912358
                inc     rdi
                movzx   ecx, byte ptr [rdi]
                add     rcx, rax
                dec     edx
                movzx   eax, word ptr [r14+rcx*2]
                mov     [r10], ax
                jmp     short loc_14091234A
; ---------------------------------------------------------------------------

loc_14091233E:                          ; CODE XREF: RtlCustomCPToUnicodeN+E2↑j
                mov     rax, [r8+20h]
                movzx   ecx, word ptr [rax+rcx*2]
                mov     [r10], cx

loc_14091234A:                          ; CODE XREF: RtlCustomCPToUnicodeN+FC↑j
                add     r10, 2
                inc     rdi
                test    r11d, r11d
                jnz     short loc_14091230E
                jmp     short loc_140912360
; ---------------------------------------------------------------------------

loc_140912358:                          ; CODE XREF: RtlCustomCPToUnicodeN+E6↑j
                mov     [r10], bx
                add     r10, 2

loc_140912360:                          ; CODE XREF: RtlCustomCPToUnicodeN+C7↑j
                                        ; RtlCustomCPToUnicodeN+D0↑j ...
                test    r9, r9
                jz      short loc_14091236B
                sub     r10d, esi
                mov     [r9], r10d

loc_14091236B:                          ; CODE XREF: RtlCustomCPToUnicodeN+94↑j
                                        ; RtlCustomCPToUnicodeN+BB↑j ...
                cmp     r11d, edx
                sbb     eax, eax
                and     eax, 80000005h

loc_140912375:                          ; CODE XREF: RtlCustomCPToUnicodeN+68↑j
                mov     rbx, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlCustomCPToUnicodeN endp
