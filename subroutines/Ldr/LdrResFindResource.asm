LdrResFindResource proc near            ; CODE XREF: sub_140A1EEE4+166↓p
                                        ; DATA XREF: .pdata:000000014010BFA8↑o

arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h
arg_40          = dword ptr  48h

                mov     r11, rsp
                sub     rsp, 68h
                mov     rax, r9
                mov     r9d, [rsp+68h+arg_40]
                test    r9d, 0C02h
                jnz     short loc_14078B42C
                mov     [r11-18h], rax
                mov     rax, [rsp+68h+arg_38]
                mov     [r11-30h], rax
                mov     rax, [rsp+68h+arg_30]
                mov     [r11-38h], rax
                mov     rax, [rsp+68h+arg_28]
                mov     [r11-40h], rax
                mov     rax, [rsp+68h+arg_20]
                mov     [r11-28h], rdx
                lea     rdx, [r11-28h]
                mov     [r11-20h], r8
                mov     r8d, 3
                mov     [r11-48h], rax
                call    LdrResSearchResource

loc_14078B426:                          ; CODE XREF: LdrResFindResource+71↓j
                add     rsp, 68h
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14078B42C:                          ; CODE XREF: LdrResFindResource+19↑j
                mov     eax, 0C000000Dh
                jmp     short loc_14078B426
LdrResFindResource endp
