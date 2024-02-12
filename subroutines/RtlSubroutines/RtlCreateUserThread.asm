RtlCreateUserThread proc near           ; DATA XREF: .pdata:0000000140121D88↑o

arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h
arg_40          = qword ptr  48h
arg_48          = qword ptr  50h

                mov     r11, rsp
                sub     rsp, 68h
                mov     rax, [rsp+68h+arg_48]
                xor     r10d, r10d
                mov     [r11-18h], rax
                cmp     r8b, 1
                mov     rax, [rsp+68h+arg_40]
                mov     [r11-20h], rax
                setz    r10b
                mov     rax, [rsp+68h+arg_38]
                mov     r8d, r10d
                mov     [r11-28h], rax
                mov     rax, [rsp+68h+arg_30]
                mov     [r11-30h], rax
                mov     rax, [rsp+68h+arg_28]
                mov     [r11-40h], rax
                mov     rax, [rsp+68h+arg_20]
                mov     [r11-48h], rax
                call    sub_14067DEBC
                add     rsp, 68h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlCreateUserThread endp
