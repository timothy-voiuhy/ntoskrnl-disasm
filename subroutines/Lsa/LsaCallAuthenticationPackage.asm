LsaCallAuthenticationPackage proc near  ; DATA XREF: .pdata:0000000140122724↑o

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 40h
                mov     r14, rcx
                mov     edi, r9d
                mov     rcx, cs:qword_140C1D8C8
                mov     rsi, r8
                mov     ebp, edx
                mov     ebx, 0C0000002h
                call    sub_140309D44
                test    rax, rax
                jz      short loc_14091DB6F
                mov     r10, [rax]
                mov     r9d, edi
                mov     rax, [rsp+48h+arg_30]
                mov     r8, rsi
                mov     [rsp+48h+var_18], rax
                mov     edx, ebp
                mov     rax, [rsp+48h+arg_28]
                mov     rcx, r14
                mov     [rsp+48h+var_20], rax
                mov     rax, [rsp+48h+arg_20]
                mov     [rsp+48h+var_28], rax
                mov     rax, r10
                call    sub_1404079D0
                mov     rcx, cs:qword_140C1D8C8
                mov     ebx, eax
                call    sub_140309D28

loc_14091DB6F:                          ; CODE XREF: LsaCallAuthenticationPackage+38↑j
                mov     rbp, [rsp+48h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+48h+arg_0]
                mov     rsi, [rsp+48h+arg_10]
                mov     rdi, [rsp+48h+arg_18]
                add     rsp, 40h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
LsaCallAuthenticationPackage endp
