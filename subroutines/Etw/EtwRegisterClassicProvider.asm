EtwRegisterClassicProvider proc near    ; CODE XREF: sub_1403CEA1C+E675A↑p
                                        ; sub_1407C46D0+85↓p
                                        ; DATA XREF: ...

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_20          = qword ptr  28h

                sub     rsp, 48h
                mov     rdx, rcx
                test    r8, r8
                jz      short loc_1407615B0
                mov     rax, [rsp+48h+arg_20]
                mov     rcx, [rsp+48h]
                mov     [rsp+48h+var_18], rax
                mov     [rsp+48h+var_20], rcx
                mov     rcx, cs:qword_140CFB008
                mov     [rsp+48h+var_28], r9
                mov     r9, r8
                mov     r8d, 2
                call    sub_140761630

loc_1407615AA:                          ; CODE XREF: EtwRegisterClassicProvider+45↓j
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_1407615B0:                          ; CODE XREF: EtwRegisterClassicProvider+A↑j
                mov     eax, 0C000000Dh
                jmp     short loc_1407615AA
EtwRegisterClassicProvider endp
