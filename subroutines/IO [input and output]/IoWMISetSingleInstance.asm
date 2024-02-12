IoWMISetSingleInstance proc near        ; DATA XREF: .pdata:000000014012342C↑o

var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_30          = qword ptr -30h
var_20          = dword ptr -20h
var_1C          = dword ptr -1Ch
var_18          = dword ptr -18h
var_10          = qword ptr -10h
var_s0          = byte ptr  0
arg_20          = qword ptr  40h

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rsi
                mov     [r11+18h], rdi
                mov     [r11+20h], r12
                push    rbp
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 60h
                and     [rbp+var_10], 0
                lea     rax, [rbp+var_10]
                and     [rbp+var_20], 0
                mov     r15d, r8d
                and     [rbp+var_1C], 0
                mov     r12, rcx
                and     [rbp+var_18], 0
                mov     ecx, 40h ; '@'
                mov     [r11-48h], rax
                mov     rsi, rdx
                mov     r14d, r9d
                lea     rax, [rbp+var_20]
                mov     [r11-50h], rax
                lea     r9, [rbp+var_1C]
                lea     rax, [rbp+var_18]
                mov     r8d, r14d
                mov     [r11-58h], rax
                call    sub_140932DD0
                mov     ebx, eax
                test    eax, eax
                js      loc_1409329AA
                mov     rdi, [rbp+var_10]
                mov     eax, [rbp+var_1C]
                mov     ebx, [rbp+var_20]
                mov     dword ptr [rdi+2Ch], 2
                and     qword ptr [rdi+10h], 0
                lea     rcx, [rdi+rax]
                mov     [rdi], ebx
                and     dword ptr [rdi+0Ch], 0
                mov     [rdi+8], r15d
                mov     [rdi+30h], eax
                movzx   eax, word ptr [rsi]
                mov     [rcx], ax
                add     rcx, 2
                movzx   r8d, word ptr [rsi]
                mov     rdx, [rsi+8]
                call    memmove
                mov     eax, [rbp+var_18]
                mov     r8d, r14d
                mov     rdx, [rbp+arg_20]
                mov     [rdi+3Ch], r14d
                mov     [rdi+38h], eax
                lea     rcx, [rdi+rax]
                call    memmove
                mov     eax, [rdi]
                mov     r9b, 2
                mov     [rbp+var_18], eax
                xor     r8d, r8d
                lea     rax, [rbp+var_18]
                xor     edx, edx
                mov     [rsp+60h+var_30], rax
                mov     rcx, r12
                mov     [rsp+60h+var_38], ebx
                mov     [rsp+60h+var_40], rdi
                call    sub_1407535A0
                xor     edx, edx
                mov     rcx, rdi
                mov     ebx, eax
                call    ExFreePoolWithTag

loc_1409329AA:                          ; CODE XREF: IoWMISetSingleInstance+69↑j
                lea     r11, [rsp+60h+var_s0]
                mov     eax, ebx
                mov     rbx, [r11+20h]
                mov     rsi, [r11+28h]
                mov     rdi, [r11+30h]
                mov     r12, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoWMISetSingleInstance endp
