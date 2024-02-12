IoWMISetSingleItem proc near            ; DATA XREF: .pdata:0000000140123438↑o

var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_30          = qword ptr -30h
var_20          = dword ptr -20h
var_1C          = dword ptr -1Ch
var_18          = dword ptr -18h
var_10          = qword ptr -10h
var_s0          = byte ptr  0
arg_20          = dword ptr  50h
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
                sub     rsp, 60h
                mov     r14d, [rbp+arg_20]
                lea     rax, [rbp+var_10]
                mov     [r11-58h], rax
                xor     edi, edi
                lea     rax, [rbp+var_20]
                mov     [rbp+var_10], rdi
                mov     [r11-60h], rax
                mov     r15d, r9d
                lea     rax, [rbp+var_18]
                mov     [rbp+var_20], edi
                mov     r12d, r8d
                mov     [r11-68h], rax
                mov     r13, rcx
                mov     [rbp+var_1C], edi
                lea     r9, [rbp+var_1C]
                mov     [rbp+var_18], edi
                mov     r8d, r14d
                lea     ecx, [rdi+44h]
                mov     rsi, rdx
                call    sub_140932DD0
                mov     ebx, eax
                test    eax, eax
                js      loc_140932ADE
                mov     rdi, [rbp+var_10]
                mov     eax, [rbp+var_1C]
                mov     ebx, [rbp+var_20]
                mov     dword ptr [rdi+2Ch], 4
                and     qword ptr [rdi+10h], 0
                lea     rcx, [rdi+rax]
                mov     [rdi], ebx
                and     dword ptr [rdi+0Ch], 0
                mov     [rdi+8], r15d
                mov     [rdi+38h], r12d
                mov     [rdi+30h], eax
                movzx   eax, word ptr [rsi]
                mov     [rcx], ax
                add     rcx, 2
                movzx   r8d, word ptr [rsi]
                mov     rdx, [rsi+8]
                call    memmove
                mov     eax, [rbp+var_18]
                mov     r8d, r14d
                mov     rdx, [rbp+arg_28]
                mov     [rdi+40h], r14d
                mov     [rdi+3Ch], eax
                lea     rcx, [rdi+rax]
                call    memmove
                mov     eax, [rdi]
                mov     r9b, 3
                mov     [rbp+var_18], eax
                xor     r8d, r8d
                lea     rax, [rbp+var_18]
                xor     edx, edx
                mov     [rsp+60h+var_30], rax
                mov     rcx, r13
                mov     [rsp+60h+var_38], ebx
                mov     [rsp+60h+var_40], rdi
                call    sub_1407535A0
                xor     edx, edx
                mov     rcx, rdi
                mov     ebx, eax
                call    ExFreePoolWithTag

loc_140932ADE:                          ; CODE XREF: IoWMISetSingleItem+69↑j
                lea     r11, [rsp+60h+var_s0]
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
                db 0CCh
IoWMISetSingleItem endp
