SeSetSecurityDescriptorInfoEx proc near ; DATA XREF: .pdata:0000000140106464↑o

var_28          = dword ptr -28h
var_20          = dword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h

                sub     rsp, 48h
                cmp     qword ptr [r9], 0
                jz      short loc_1407131EA
                and     [rsp+48h+var_10], 0
                mov     rax, [rsp+48h+arg_30]
                mov     edx, [rdx]
                mov     [rsp+48h+var_18], rax
                mov     eax, [rsp+48h+arg_28]
                mov     [rsp+48h+var_20], eax
                mov     eax, [rsp+48h+arg_20]
                mov     [rsp+48h+var_28], eax
                call    sub_140623930

loc_1407131E4:                          ; CODE XREF: SeSetSecurityDescriptorInfoEx+3F↓j
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1407131EA:                          ; CODE XREF: SeSetSecurityDescriptorInfoEx+8↑j
                mov     eax, 0C00000D7h
                jmp     short loc_1407131E4
SeSetSecurityDescriptorInfoEx endp
