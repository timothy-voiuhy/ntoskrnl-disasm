LdrFindResourceEx_U proc near           ; DATA XREF: .pdata:0000000140121E3C↑o

var_18          = qword ptr -18h
arg_20          = qword ptr  28h

                push    rbx
                sub     rsp, 30h
                mov     rax, [rsp+38h+arg_20]
                mov     r10d, r9d
                mov     r11, r8
                mov     [rsp+38h+var_18], rax
                mov     rbx, rdx
                mov     r9d, ecx
                mov     r8d, r10d
                mov     rdx, r11
                mov     rcx, rbx
                call    sub_1406F1074
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
LdrFindResourceEx_U endp
