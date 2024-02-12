IoWMIExecuteMethod proc near            ; DATA XREF: .pdata:0000000140123408↑o

var_30          = qword ptr -30h
var_28          = dword ptr -28h
var_20          = qword ptr -20h
var_10          = dword ptr -10h
var_C           = dword ptr -0Ch
var_8           = qword ptr -8
var_s0          = byte ptr  0
arg_18          = dword ptr  48h
arg_20          = qword ptr  50h
arg_28          = qword ptr  58h

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rsi
                mov     [r11+18h], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 50h
                mov     rsi, [rbp+arg_20]
                xor     eax, eax
                mov     [rbp+arg_18], eax
                mov     r12d, r8d
                mov     [rbp+var_C], eax
                mov     r13, rcx
                mov     [rbp+var_10], eax
                mov     ecx, 44h ; 'D'
                mov     r8d, [rsi]
                mov     r15, rdx
                mov     [rbp+var_8], rax
                cmp     r9d, r8d
                lea     rax, [rbp+var_8]
                mov     r14d, r9d
                mov     [r11-48h], rax
                cmova   r8d, r9d
                lea     rax, [rbp+arg_18]
                mov     [r11-50h], rax
                lea     r9, [rbp+var_10]
                lea     rax, [rbp+var_C]
                mov     [r11-58h], rax
                call    sub_140932DD0
                mov     rdi, [rbp+var_8]
                mov     ebx, eax
                test    eax, eax
                js      loc_14093265E
                mov     eax, [rbp+var_10]
                mov     ebx, [rbp+arg_18]
                mov     dword ptr [rdi+2Ch], 8000h
                and     qword ptr [rdi+10h], 0
                mov     [rdi], ebx
                and     dword ptr [rdi+0Ch], 0
                mov     [rdi+38h], r12d
                mov     r12d, [rbp+var_C]
                mov     [rdi+30h], eax
                mov     [rdi+3Ch], r12d
                mov     [rdi+40h], r14d
                mov     ecx, [rdi+30h]
                movzx   eax, word ptr [r15]
                add     rcx, rdi
                mov     [rcx], ax
                add     rcx, 2
                movzx   r8d, word ptr [r15]
                mov     rdx, [r15+8]
                call    memmove
                mov     ecx, [rdi+3Ch]
                mov     r8d, r14d
                mov     rdx, [rbp+arg_28]
                add     rcx, rdi
                call    memmove
                mov     eax, [rdi]
                mov     r9b, 9
                mov     [rbp+arg_18], eax
                xor     r8d, r8d
                lea     rax, [rbp+arg_18]
                xor     edx, edx
                mov     [rsp+50h+var_20], rax
                mov     rcx, r13
                mov     [rsp+50h+var_28], ebx
                mov     [rsp+50h+var_30], rdi
                call    sub_1407535A0
                mov     ebx, eax
                test    eax, eax
                js      short loc_14093265E
                mov     eax, [rdi+2Ch]
                test    al, 20h
                jz      short loc_14093268E
                mov     eax, [rdi+30h]
                sub     eax, r12d

loc_140932651:                          ; CODE XREF: IoWMIExecuteMethod+153↓j
                add     eax, 7
                mov     ebx, 0C0000023h
                and     eax, 0FFFFFFF8h
                mov     [rsi], eax

loc_14093265E:                          ; CODE XREF: IoWMIExecuteMethod+76↑j
                                        ; IoWMIExecuteMethod+102↑j ...
                test    rdi, rdi
                jz      short loc_14093266D
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag

loc_14093266D:                          ; CODE XREF: IoWMIExecuteMethod+121↑j
                lea     r11, [rsp+50h+var_s0]
                mov     eax, ebx
                mov     rbx, [r11+30h]
                mov     rsi, [r11+38h]
                mov     rdi, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14093268E:                          ; CODE XREF: IoWMIExecuteMethod+109↑j
                mov     eax, [rdi+40h]
                cmp     [rsi], eax
                jb      short loc_140932651
                mov     rcx, [rbp+arg_28]
                mov     [rsi], eax
                mov     edx, [rdi+3Ch]
                mov     r8d, [rdi+40h]
                add     rdx, rdi
                call    memmove
                jmp     short loc_14093265E
IoWMIExecuteMethod endp
