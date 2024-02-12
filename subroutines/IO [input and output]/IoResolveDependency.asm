IoResolveDependency proc near           ; DATA XREF: .rdata:00000001400A7244↑o
                                        ; .pdata:00000001400DEFE4↑o

var_18          = dword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404ADF08 SIZE 000000DA BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                sub     rsp, 30h
                and     dword ptr [rax-14h], 0
                mov     rbp, rcx
                mov     cl, 1
                mov     rbx, rdx
                xor     edi, edi
                call    sub_140679234
                lea     rcx, [rsp+38h+var_18]
                mov     [rsp+38h+var_18], 1
                mov     [rsp+38h+var_10], rbp
                call    sub_1407B5C28
                mov     r8, rax
                test    rax, rax
                jnz     loc_1404ADF08

loc_1403BF6FA:                          ; CODE XREF: IoResolveDependency+EE87D↓j
                test    rbx, rbx
                jz      loc_1404ADF8A
                mov     rax, [rbx+138h]
                mov     rcx, [rax+50h]

loc_1403BF70E:                          ; CODE XREF: IoResolveDependency+EE8DC↓j
                test    rcx, rcx
                jnz     loc_1403BF79E
                and     [rsp+38h+var_18], ecx
                lea     rcx, [rsp+38h+var_18]
                mov     [rsp+38h+var_10], rbx
                call    sub_1407B5CCC
                mov     rsi, rax
                test    rax, rax
                jz      loc_1404ADF91
                mov     rdx, rbp
                mov     rcx, rax
                call    sub_1407B5BA8
                mov     edi, eax
                test    eax, eax
                js      loc_1404ADF9B
                mov     rcx, rsi
                call    sub_140771548

loc_1403BF753:                          ; CODE XREF: IoResolveDependency+10A↓j
                                        ; IoResolveDependency+EE888↓j ...
                test    rbx, rbx
                jz      short loc_1403BF76C
                mov     rax, [rbx+138h]
                mov     rdx, [rax+28h]
                test    rdx, rdx
                jnz     loc_1404ADFB4

loc_1403BF76C:                          ; CODE XREF: IoResolveDependency+A6↑j
                                        ; IoResolveDependency+EE90E↓j ...
                mov     rcx, rbx
                call    sub_14073D90C
                mov     rcx, rbx
                call    sub_1407B5B70
                call    sub_14073D8E8
                call    sub_14073D7B4

loc_1403BF786:                          ; CODE XREF: IoResolveDependency+111↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     eax, edi
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403BF79E:                          ; CODE XREF: IoResolveDependency+61↑j
                test    rbx, rbx
                jz      short loc_1403BF7C3
                mov     rax, [rbx+138h]
                mov     rcx, [rax+50h]

loc_1403BF7AE:                          ; CODE XREF: IoResolveDependency+115↓j
                mov     rdx, rbp
                call    sub_1407B5BA8
                mov     edi, eax
                test    eax, eax
                jns     short loc_1403BF753

loc_1403BF7BC:                          ; CODE XREF: IoResolveDependency+EE864↓j
                                        ; IoResolveDependency+EE8E6↓j ...
                call    sub_14073D8E8
                jmp     short loc_1403BF786
; ---------------------------------------------------------------------------

loc_1403BF7C3:                          ; CODE XREF: IoResolveDependency+F1↑j
                xor     ecx, ecx
                jmp     short loc_1403BF7AE
IoResolveDependency endp
