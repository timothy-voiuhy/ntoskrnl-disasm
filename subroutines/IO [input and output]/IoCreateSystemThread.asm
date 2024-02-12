IoCreateSystemThread proc near          ; DATA XREF: .rdata:00000001400944A8↑o
                                        ; .pdata:000000014010A5EC↑o

var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h

; FUNCTION CHUNK AT 0000000140847306 SIZE 00000036 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 50h
                movzx   eax, word ptr [rcx]
                mov     rbx, rcx
                sub     ax, 3
                mov     ecx, 1
                mov     rsi, r9
                mov     ebp, r8d
                mov     r14, rdx
                cmp     ax, cx
                ja      loc_140847306
                lea     edx, [rcx+17h]
                call    sub_14036D5A0
                mov     rdi, rax
                test    rax, rax
                jz      loc_14076CA88
                mov     [rax], rbx
                mov     rcx, rbx
                mov     rax, [rsp+58h+arg_30]
                mov     [rdi+8], rax
                mov     rax, [rsp+58h+arg_38]
                mov     [rdi+10h], rax
                call    ObfReferenceObject
                and     [rsp+58h+var_18], 0
                lea     rax, sub_14076FCD0
                and     [rsp+58h+var_20], 0
                mov     r8, rsi
                mov     r9, [rsp+58h+arg_20]
                mov     edx, ebp
                mov     [rsp+58h+var_28], rdi
                mov     rcx, r14
                mov     [rsp+58h+var_30], rax
                mov     rax, [rsp+58h+arg_28]
                mov     [rsp+58h+var_38], rax
                call    PsCreateSystemThreadEx
                mov     esi, eax
                test    eax, eax
                js      loc_140847324

loc_14076CA6A:                          ; CODE XREF: IoCreateSystemThread+DA987↓j
                mov     eax, esi

loc_14076CA6C:                          ; CODE XREF: IoCreateSystemThread+DD↓j
                mov     rbx, [rsp+58h+arg_0]
                mov     rbp, [rsp+58h+arg_8]
                mov     rsi, [rsp+58h+arg_10]
                mov     rdi, [rsp+58h+arg_18]
                add     rsp, 50h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14076CA88:                          ; CODE XREF: IoCreateSystemThread+48↑j
                mov     eax, 0C000009Ah
                jmp     short loc_14076CA6C
IoCreateSystemThread endp
