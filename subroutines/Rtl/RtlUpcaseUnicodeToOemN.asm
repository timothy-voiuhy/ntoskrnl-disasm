RtlUpcaseUnicodeToOemN proc near        ; CODE XREF: RtlUpcaseUnicodeStringToOemString+6B↑p
                                        ; RtlUpcaseUnicodeStringToCountedOemString+78↑p
                                        ; DATA XREF: ...

var_28          = dword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h

; FUNCTION CHUNK AT 000000014082635C SIZE 0000001E BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 40h
                mov     ebx, [rsp+48h+arg_20]
                mov     r14, rcx
                mov     cl, 1
                shr     ebx, 1
                mov     rdi, r9
                mov     rsi, r8
                mov     ebp, edx
                call    sub_140630C90
                mov     r9, rdi
                mov     r8, rsi
                mov     edx, ebp
                mov     rcx, r14
                test    al, al
                jnz     loc_14082635C
                cmp     cs:NlsMbOemCodePageTag, al
                jnz     loc_14082636B
                mov     rax, cs:qword_140D2D118
                mov     [rsp+48h+var_18], rax
                mov     rax, cs:qword_140D2D148
                mov     [rsp+48h+var_20], rax
                mov     [rsp+48h+var_28], ebx
                call    sub_14021D9B0

loc_1406F8FC1:                          ; CODE XREF: RtlUpcaseUnicodeToOemN+12D416↓j
                                        ; RtlUpcaseUnicodeToOemN+12D425↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                mov     rdi, [rsp+48h+arg_18]
                add     rsp, 40h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlUpcaseUnicodeToOemN endp
