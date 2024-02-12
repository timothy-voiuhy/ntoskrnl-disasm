RtlUnicodeToOemN proc near              ; CODE XREF: RtlUnicodeStringToOemString+65↑p
                                        ; RtlUnicodeStringToCountedOemString+71↑p
                                        ; DATA XREF: ...

var_28          = dword ptr -28h
var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h

; FUNCTION CHUNK AT 000000014082637A SIZE 000000AB BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 40h
                mov     rdi, rcx
                mov     rbp, r9
                mov     cl, 1
                mov     r14, r8
                mov     esi, edx
                call    sub_140630C90
                xor     ebx, ebx
                test    al, al
                jnz     loc_14082637A
                mov     edx, [rsp+48h+arg_20]
                shr     edx, 1
                cmp     cs:NlsMbOemCodePageTag, bl
                jnz     loc_1408263BA
                cmp     edx, esi
                mov     eax, esi
                cmovb   eax, edx
                test    r14, r14
                jz      short loc_1406F9076
                mov     [r14], eax

loc_1406F9076:                          ; CODE XREF: RtlUnicodeToOemN+51↑j
                mov     r9, cs:qword_140D2D148
                test    eax, eax
                jz      short loc_1406F909B
                mov     r8d, eax

loc_1406F9084:                          ; CODE XREF: RtlUnicodeToOemN+79↓j
                movzx   eax, word ptr [rbp+0]
                lea     rbp, [rbp+2]
                mov     cl, [rax+r9]
                mov     [rdi], cl
                inc     rdi
                sub     r8, 1
                jnz     short loc_1406F9084

loc_1406F909B:                          ; CODE XREF: RtlUnicodeToOemN+5F↑j
                                        ; RtlUnicodeToOemN+12D3F4↓j ...
                cmp     esi, edx
                sbb     eax, eax
                and     eax, 80000005h

loc_1406F90A4:                          ; CODE XREF: RtlUnicodeToOemN+12D395↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                mov     rdi, [rsp+48h+arg_18]
                add     rsp, 40h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlUnicodeToOemN endp
