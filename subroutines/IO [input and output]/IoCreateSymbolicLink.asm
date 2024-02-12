IoCreateSymbolicLink proc near          ; CODE XREF: sub_14077E8F8+377↓p
                                        ; sub_14077E8F8+3FD↓p ...

var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_14          = dword ptr -14h
var_10          = qword ptr -10h
var_8           = qword ptr -8
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h

                mov     [rsp-8+arg_8], rbx
                push    rbp
                mov     rbp, rsp
                sub     rsp, 50h
                mov     rax, cs:qword_140D2E6E0
                lea     r8, [rbp+var_30]
                and     [rbp+var_2C], 0
                mov     r9, rdx
                and     [rbp+var_14], 0
                mov     edx, 0F0001h
                and     [rbp+arg_0], 0
                and     [rbp+var_28], 0
                and     [rbp+var_8], 0
                mov     [rbp+var_20], rcx
                lea     rcx, [rbp+arg_0]
                mov     [rbp+var_10], rax
                mov     [rbp+var_30], 30h ; '0'
                mov     [rbp+var_18], 250h
                call    ZwCreateSymbolicLinkObject
                mov     ebx, eax
                test    eax, eax
                js      short loc_14076C8A5
                mov     rcx, [rbp+arg_0]
                call    ZwClose

loc_14076C8A5:                          ; CODE XREF: IoCreateSymbolicLink+5A↑j
                mov     eax, ebx
                mov     rbx, [rsp+50h+arg_8]
                add     rsp, 50h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoCreateSymbolicLink endp
