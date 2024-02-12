IoRegisterDeviceInterface proc near     ; CODE XREF: sub_140743944+F25AB↓p
                                        ; DATA XREF: .rdata:000000014008C460↑o ...

var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
var_8           = qword ptr -8
arg_0           = dword ptr  40h
arg_8           = qword ptr  48h
arg_10          = qword ptr  50h

; FUNCTION CHUNK AT 000000014083591C SIZE 0000001E BYTES

                mov     [rsp-38h+arg_10], rbx
                mov     [rsp-38h+arg_8], rdx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 40h
                and     [rbp+arg_0], 0
                xor     edi, edi
                xor     esi, esi
                mov     [rbp+var_8], rdi
                mov     [rbp+var_10], rsi
                xorps   xmm0, xmm0
                mov     r12, r9
                mov     r15, r8
                mov     r13, rcx
                movups  xmmword ptr [r9], xmm0
                test    rcx, rcx
                jz      loc_14083591C
                mov     rax, [rcx+138h]
                mov     r14, [rax+28h]
                test    r14, r14
                jz      loc_14083591C
                test    dword ptr [r14+18Ch], 20000h
                jnz     loc_14083591C
                cmp     [r14+30h], rsi
                jz      loc_140741675
                lea     r9, [rbp+arg_0]
                mov     byte ptr [rsp+40h+var_20], sil
                xor     r8d, r8d
                xor     edx, edx
                call    sub_1406C14C0
                cmp     [rbp+arg_0], 10h
                jbe     loc_140741675
                test    r15, r15
                jnz     short loc_14074163E

loc_1407415C6:                          ; CODE XREF: IoRegisterDeviceInterface+113↓j
                                        ; IoRegisterDeviceInterface+13F↓j
                mov     rdx, [rbp+arg_8]
                lea     rax, [rbp+var_10]
                mov     rcx, [r14+30h]
                xor     r9d, r9d
                and     dword ptr [rbp+var_10], edi
                mov     r8, rsi
                mov     [rsp+40h+var_18], rax
                lea     rax, [rbp+var_8]
                mov     [rsp+40h+var_20], rax
                call    sub_140741684
                mov     rdi, [rbp+var_8]
                mov     ebx, eax
                test    eax, eax
                js      loc_140835921
                mov     eax, dword ptr [rbp+var_10]
                mov     rdx, rdi
                or      [r13+30h], eax
                mov     rcx, r12
                call    RtlInitUnicodeStringEx
                mov     ebx, eax
                test    eax, eax
                js      loc_140835921

loc_140741618:                          ; CODE XREF: IoRegisterDeviceInterface+12B↓j
                                        ; IoRegisterDeviceInterface+14A↓j ...
                mov     rdx, r15
                mov     rcx, rsi
                call    sub_1406CA2D4
                mov     eax, ebx
                mov     rbx, [rsp+40h+arg_10]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14074163E:                          ; CODE XREF: IoRegisterDeviceInterface+94↑j
                cmp     word ptr [r15], 2
                jb      short loc_1407415C6
                mov     r8, r15
                lea     rcx, [rbp+var_10]
                xor     edx, edx
                call    sub_1406CC09C
                mov     rsi, [rbp+var_10]
                mov     ebx, eax
                test    eax, eax
                js      short loc_140741618
                lea     rdx, asc_1407D72C0 ; "\\/"
                mov     rcx, rsi
                call    sub_1403D4290
                test    rax, rax
                jz      loc_1407415C6

loc_140741675:                          ; CODE XREF: IoRegisterDeviceInterface+6E↑j
                                        ; IoRegisterDeviceInterface+8B↑j
                mov     ebx, 0C0000010h
                jmp     short loc_140741618
IoRegisterDeviceInterface endp
