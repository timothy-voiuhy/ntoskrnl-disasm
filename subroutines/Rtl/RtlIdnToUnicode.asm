RtlIdnToUnicode proc near               ; DATA XREF: .pdata:00000001401221FC↑o

var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 40h
                mov     r14d, ecx
                mov     rbx, r9
                mov     ecx, 3FEh
                mov     esi, r8d
                mov     rbp, rdx
                call    sub_14058D520
                mov     rdi, rax
                test    rax, rax
                jnz     short loc_140917E1E
                mov     eax, 0C0000017h
                jmp     short loc_140917E4C
; ---------------------------------------------------------------------------

loc_140917E1E:                          ; CODE XREF: RtlIdnToUnicode+35↑j
                mov     rax, [rsp+48h+arg_20]
                mov     r9, rbx
                mov     [rsp+48h+var_20], rdi
                mov     r8d, esi
                mov     rdx, rbp
                mov     [rsp+48h+var_28], rax
                mov     ecx, r14d
                call    sub_14058D594
                xor     edx, edx
                mov     rcx, rdi
                mov     ebx, eax
                call    ExFreePoolWithTag
                mov     eax, ebx

loc_140917E4C:                          ; CODE XREF: RtlIdnToUnicode+3C↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                mov     rdi, [rsp+48h+arg_18]
                add     rsp, 40h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlIdnToUnicode endp
