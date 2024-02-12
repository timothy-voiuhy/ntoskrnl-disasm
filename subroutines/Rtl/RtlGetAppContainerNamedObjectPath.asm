RtlGetAppContainerNamedObjectPath proc near
                                        ; DATA XREF: .pdata:00000001400F7BD8↑o

var_100         = qword ptr -100h
var_F0          = dword ptr -0F0h
var_EC          = dword ptr -0ECh
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_80          = qword ptr -80h
var_20          = byte ptr -20h
arg_18          = dword ptr  28h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rax-5Fh]
                sub     rsp, 100h
                and     [rsp+120h+var_F0], 0
                mov     r12b, r8b
                and     [rbp+57h+arg_18], 0
                mov     r14, rdx
                mov     rbx, rcx
                mov     edi, 58h ; 'X'
                mov     r8d, edi
                lea     rcx, [rsp+120h+var_E0]
                xor     edx, edx
                mov     r13, r9
                call    memset
                mov     r8d, edi
                lea     rcx, [rbp+57h+var_80]
                xor     edx, edx
                call    memset
                test    r13, r13
                jnz     short loc_140586EA9
                mov     eax, 0C000000Dh
                jmp     loc_140587030
; ---------------------------------------------------------------------------

loc_140586EA9:                          ; CODE XREF: RtlGetAppContainerNamedObjectPath+5D↑j
                test    rbx, rbx
                jz      short loc_140586EBD
                test    r14, r14
                jz      short loc_140586EBD
                mov     eax, 0C0000030h
                jmp     loc_140587030
; ---------------------------------------------------------------------------

loc_140586EBD:                          ; CODE XREF: RtlGetAppContainerNamedObjectPath+6C↑j
                                        ; RtlGetAppContainerNamedObjectPath+71↑j
                and     dword ptr [rsp+120h+var_E8], 0
                xor     r15b, r15b
                and     [rsp+120h+var_EC], 0
                mov     al, r12b
                neg     al
                sbb     edi, edi
                and     edi, 5
                add     edi, 8
                test    r14, r14
                jz      short loc_140586EE8
                mov     rbx, 0FFFFFFFFFFFFFFFCh
                xor     sil, sil
                jmp     short loc_140586EF7
; ---------------------------------------------------------------------------

loc_140586EE8:                          ; CODE XREF: RtlGetAppContainerNamedObjectPath+9A↑j
                mov     sil, 1
                test    rbx, rbx
                jnz     short loc_140586EFC
                mov     rbx, 0FFFFFFFFFFFFFFFAh

loc_140586EF7:                          ; CODE XREF: RtlGetAppContainerNamedObjectPath+A6↑j
                test    r14, r14
                jnz     short loc_140586F3A

loc_140586EFC:                          ; CODE XREF: RtlGetAppContainerNamedObjectPath+AE↑j
                mov     r9d, 4
                lea     rax, [rbp+57h+arg_18]
                lea     r8, [rsp+120h+var_F0]
                mov     [rsp+120h+var_100], rax
                mov     rcx, rbx
                lea     edx, [r9+19h]
                call    NtQueryInformationToken
                test    eax, eax
                js      loc_140587030
                cmp     [rsp+120h+var_F0], 0
                jnz     short loc_140586F3A
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  xmmword ptr [r13+0], xmm0
                jmp     loc_140587030
; ---------------------------------------------------------------------------

loc_140586F3A:                          ; CODE XREF: RtlGetAppContainerNamedObjectPath+BA↑j
                                        ; RtlGetAppContainerNamedObjectPath+E9↑j
                test    r12b, r12b
                jz      loc_140587014
                mov     r15b, 1
                test    sil, sil
                jz      loc_140587014
                mov     r9d, 4
                lea     rax, [rbp+57h+arg_18]
                lea     r8, [rsp+120h+var_EC]
                mov     [rsp+120h+var_100], rax
                mov     rcx, 0FFFFFFFFFFFFFFFCh
                lea     esi, [r9+26h]
                mov     edx, esi
                call    NtQueryInformationToken
                test    eax, eax
                js      loc_140587030
                cmp     [rsp+120h+var_EC], 0
                jz      loc_140587011
                lea     rax, [rbp+57h+arg_18]
                mov     edx, esi
                lea     r9d, [rsi-26h]
                mov     [rsp+120h+var_100], rax
                lea     r8, [rsp+120h+var_E8]
                mov     rcx, rbx
                call    NtQueryInformationToken
                test    eax, eax
                js      loc_140587030
                cmp     dword ptr [rsp+120h+var_E8], 0
                jz      short loc_14058700A
                lea     rax, [rbp+57h+arg_18]
                mov     rcx, 0FFFFFFFFFFFFFFFCh
                lea     r9d, [rsi+2Eh]
                mov     [rsp+120h+var_100], rax
                lea     r8, [rsp+120h+var_E0]
                lea     edx, [rsi-29h]
                call    NtQueryInformationToken
                test    eax, eax
                js      short loc_140587030
                lea     rax, [rbp+57h+arg_18]
                mov     rcx, rbx
                lea     r9d, [rsi+2Eh]
                mov     [rsp+120h+var_100], rax
                lea     r8, [rbp+57h+var_80]
                lea     edx, [rsi-29h]
                call    NtQueryInformationToken
                test    eax, eax
                js      short loc_140587030
                mov     rdx, [rsp+120h+var_E0]
                mov     rcx, [rbp+57h+var_80]
                call    RtlEqualSid
                test    al, al
                jnz     short loc_140587014

loc_14058700A:                          ; CODE XREF: RtlGetAppContainerNamedObjectPath+171↑j
                mov     eax, 0C00000BBh
                jmp     short loc_140587030
; ---------------------------------------------------------------------------

loc_140587011:                          ; CODE XREF: RtlGetAppContainerNamedObjectPath+142↑j
                xor     r15b, r15b

loc_140587014:                          ; CODE XREF: RtlGetAppContainerNamedObjectPath+FD↑j
                                        ; RtlGetAppContainerNamedObjectPath+109↑j ...
                mov     r8d, edi
                mov     r9, r13
                or      r8d, 2
                mov     rdx, r14
                test    r15b, r15b
                mov     rcx, rbx
                cmovz   r8d, edi
                call    sub_140915D48

loc_140587030:                          ; CODE XREF: RtlGetAppContainerNamedObjectPath+64↑j
                                        ; RtlGetAppContainerNamedObjectPath+78↑j ...
                lea     r11, [rsp+120h+var_20]
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
RtlGetAppContainerNamedObjectPath endp
