FsRtlCheckOplockEx proc near            ; CODE XREF: sub_14061ADE0+266↓p
                                        ; DATA XREF: .pdata:00000001400CCB40↑o

arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                mov     r11, rsp
                sub     rsp, 58h
                xor     eax, eax
                mov     [r11-10h], rax
                mov     [r11-18h], rax
                mov     [r11-20h], rax
                mov     rax, [rsp+58h+arg_28]
                mov     [r11-28h], rax
                mov     rax, [rsp+58h+arg_20]
                mov     [r11-30h], rax
                mov     [r11-38h], r9
                xor     r9d, r9d
                call    FsRtlCheckOplockEx2
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlCheckOplockEx endp
