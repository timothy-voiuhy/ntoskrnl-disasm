RtlInsertElementGenericTableAvl proc near
                                        ; CODE XREF: sub_140371AC0+65↓p
                                        ; sub_140675570+8D↓p ...

var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                sub     rsp, 40h
                and     qword ptr [rax-18h], 0
                mov     edi, r8d
                lea     r8, [rax-18h]
                mov     rbx, r9
                mov     rsi, rdx
                mov     rbp, rcx
                call    sub_140310FFC
                mov     [rsp+48h+var_20], eax
                mov     r9, rbx
                mov     rax, [rsp+48h+var_18]
                mov     r8d, edi
                mov     rdx, rsi
                mov     [rsp+48h+var_28], rax
                mov     rcx, rbp
                call    RtlInsertElementGenericTableFullAvl
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlInsertElementGenericTableAvl endp
