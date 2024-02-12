ObSetSecurityDescriptorInfo proc near   ; CODE XREF: sub_140625030+115↓p
                                        ; sub_140701D70+C0↓p
                                        ; DATA XREF: ...

var_38          = dword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 000000014080018A SIZE 0000001A BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 40h
                mov     rax, gs:188h
                xor     esi, esi
                mov     rbx, r8
                mov     [rsp+58h+arg_0], esi
                mov     rdi, rdx
                mov     [rsp+58h+var_20], rsi
                mov     r14, rcx
                dec     word ptr [rax+1E4h]
                xor     edx, edx
                add     rcx, 0FFFFFFFFFFFFFFE0h
                call    ExAcquirePushLockExclusiveEx
                mov     rax, [rsp+58h+arg_28]
                lea     r9, [rsp+58h+var_28]
                mov     rbp, [r14-8]
                mov     r8, rbx
                mov     [rsp+58h+var_30], rax
                and     rbp, 0FFFFFFFFFFFFFFF0h
                mov     eax, [rsp+58h+arg_20]
                mov     rdx, rdi
                mov     rcx, r14
                mov     [rsp+58h+var_38], eax
                mov     [rsp+58h+var_28], rbp
                call    SeSetSecurityDescriptorInfo
                mov     ebx, eax
                test    eax, eax
                js      loc_14080018A
                mov     rcx, [rsp+58h+var_28]
                lea     r8d, [rsi+10h]
                lea     rdx, [rsp+58h+var_20]
                call    ObLogSecurityDescriptor
                mov     ebx, eax
                test    eax, eax
                js      short loc_140624782
                mov     rcx, [rsp+58h+var_28]
                lea     rdx, [rsp+58h+arg_0]
                call    sub_140624FB0
                mov     ebx, eax
                test    eax, eax
                js      short loc_140624782
                mov     edx, [rsp+58h+arg_0]
                mov     rcx, r14
                call    sub_140624F28
                mov     ebx, eax
                test    eax, eax
                js      short loc_140624782
                mov     rcx, [rsp+58h+var_20]
                mov     eax, esi
                mov     rdx, rcx
                or      rdx, 0Fh
                test    rcx, rcx
                cmovnz  rax, rdx
                xchg    rax, [r14-8]
                mov     [rsp+58h+var_20], rsi
                test    rbp, rbp
                jz      short loc_140624782
                and     eax, 0Fh
                lea     esi, [rax+1]

loc_140624782:                          ; CODE XREF: ObSetSecurityDescriptorInfo+A0↑j
                                        ; ObSetSecurityDescriptorInfo+B5↑j ...
                xor     edx, edx
                lea     rcx, [r14-20h]
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rcx, [rsp+58h+var_20]
                test    rcx, rcx
                jnz     loc_140800194

loc_1406247A9:                          ; CODE XREF: ObSetSecurityDescriptorInfo+1DBB0F↓j
                test    rbp, rbp
                jz      short loc_1406247BC
                test    esi, esi
                jz      short loc_1406247BC
                mov     edx, esi
                mov     rcx, rbp
                call    ObDereferenceSecurityDescriptor

loc_1406247BC:                          ; CODE XREF: ObSetSecurityDescriptorInfo+11C↑j
                                        ; ObSetSecurityDescriptorInfo+120↑j
                mov     rcx, [rsp+58h+var_28]
                test    rcx, rcx
                jz      short loc_1406247CD
                xor     edx, edx
                call    ExFreePoolWithTag

loc_1406247CD:                          ; CODE XREF: ObSetSecurityDescriptorInfo+134↑j
                mov     rbp, [rsp+58h+arg_10]
                mov     eax, ebx
                mov     rbx, [rsp+58h+arg_8]
                mov     rsi, [rsp+58h+arg_18]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ObSetSecurityDescriptorInfo endp
