MmLoadSystemImage proc near             ; CODE XREF: IoLoadCrashDumpDriver+5F↑p
                                        ; sub_140687200+7CA↑p ...

var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                sub     rsp, 38h
                test    r9d, 7FFFFFFCh
                jnz     short loc_140757D0C
                mov     rax, [rsp+38h+arg_28]
                mov     [rsp+38h+var_10], rax
                mov     rax, [rsp+38h+arg_20]
                mov     [rsp+38h+var_18], rax
                call    sub_140757D1C

loc_140757D06:                          ; CODE XREF: MmLoadSystemImage+31↓j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140757D0C:                          ; CODE XREF: MmLoadSystemImage+B↑j
                mov     eax, 0C00000F2h
                jmp     short loc_140757D06
MmLoadSystemImage endp
