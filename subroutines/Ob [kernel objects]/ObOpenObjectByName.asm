ObOpenObjectByName proc near            ; CODE XREF: sub_1405D79C0+6D↑p
                                        ; sub_1406510D0+2BC↑p ...

var_28          = dword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 40h
                mov     rbx, r9
                movzx   edi, r8b
                mov     rsi, rdx
                mov     rbp, rcx
                call    PsGetCurrentSilo
                mov     r10, [rsp+48h+arg_30]
                mov     r9, rbx
                mov     [rsp+48h+var_10], r10
                movzx   r8d, dil
                mov     [rsp+48h+var_18], rax
                mov     rdx, rsi
                mov     rax, [rsp+48h+arg_28]
                mov     rcx, rbp
                mov     [rsp+48h+var_20], rax
                mov     eax, [rsp+48h+arg_20]
                mov     [rsp+48h+var_28], eax
                call    ObOpenObjectByNameEx
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ObOpenObjectByName endp
