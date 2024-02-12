PsChargeProcessWakeCounter proc near    ; CODE XREF: sub_140615070+D8↑p
                                        ; sub_1406B1E10+179↑p ...

var_28          = dword ptr -28h
var_20          = byte ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 40h
                mov     rdi, r9
                mov     esi, r8d
                mov     ebp, edx
                mov     rbx, rcx
                call    PsGetProcessInheritedFromUniqueProcessId
                test    rax, rax
                jz      short loc_1406B3E42
                and     [rsp+48h+var_18], 0
                mov     r9, rdi
                mov     [rsp+48h+var_20], 1
                mov     r8d, esi
                mov     edx, ebp
                mov     [rsp+48h+var_28], 1
                mov     rcx, rbx
                call    sub_1406165D0

loc_1406B3E2C:                          ; CODE XREF: PsChargeProcessWakeCounter:loc_1406B3E42↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406B3E42:                          ; CODE XREF: PsChargeProcessWakeCounter+27↑j
                jmp     short loc_1406B3E2C
PsChargeProcessWakeCounter endp
