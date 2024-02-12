PcwCreateInstance proc near             ; DATA XREF: .rdata:000000014007208C↑o
                                        ; .pdata:000000014010260C↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 00000001408193B0 SIZE 00000010 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 30h
                mov     rbx, rcx
                mov     edi, r9d
                mov     rcx, cs:qword_140D2D098
                mov     rsi, r8
                mov     rbp, rdx
                call    sub_140309D44
                test    rax, rax
                jz      loc_1408193B0
                mov     rcx, [rsp+38h+arg_20]
                mov     r9d, edi
                mov     rax, [rax+10h]
                mov     r8, rsi
                mov     [rsp+38h+var_18], rcx
                mov     rdx, rbp
                mov     rcx, rbx
                call    sub_1404079D0
                mov     rcx, cs:qword_140D2D098
                mov     ebx, eax
                call    sub_140309D28

loc_1406AC642:                          ; CODE XREF: PcwCreateInstance+16CDDB↓j
                mov     rbp, [rsp+38h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PcwCreateInstance endp
