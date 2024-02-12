ObCheckObjectAccess proc near           ; CODE XREF: sub_1406EDD3C+73↑p
                                        ; DATA XREF: .rdata:000000014007E9BC↑o ...

var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = byte ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
var_8           = qword ptr -8
var_s0          = byte ptr  0
arg_0           = byte ptr  30h
arg_8           = qword ptr  38h
arg_10          = qword ptr  40h
arg_20          = qword ptr  50h

; FUNCTION CHUNK AT 00000001408249A2 SIZE 0000001A BYTES

                mov     [rsp-28h+arg_8], rbx
                mov     [rsp-28h+arg_10], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 70h
                xor     edi, edi
                lea     rax, [rcx-30h]
                shr     rax, 8
                lea     r14, qword_140CFCE60
                movzx   r10d, al
                lea     r8, [rbp+arg_0]
                movzx   eax, byte ptr [rcx-18h]
                mov     rbx, rdx
                xor     r10, rax
                mov     [rbp+var_20], edi
                movzx   eax, byte ptr cs:dword_140CFC728
                lea     rdx, [rbp+var_18]
                xor     r10, rax
                mov     [rbp+arg_0], dil
                mov     r15b, r9b
                mov     [rbp+var_10], rdi
                mov     r13, rcx
                mov     [rbp+var_18], rdi
                mov     r14, [r14+r10*8]
                mov     [rbp+var_8], r14
                call    sub_140624BE0
                mov     edx, eax
                test    eax, eax
                js      loc_1408249AE
                cmp     [rbp+var_18], rdi
                jz      loc_1408249A2
                lea     r12, [rbx+20h]
                mov     rcx, r12
                call    SeLockSubjectContext
                mov     rax, [rbp+arg_20]
                lea     rcx, [r14+4Ch]
                mov     r9d, [rbx+10h]
                mov     r8b, 1
                mov     [rsp+70h+var_28], rax
                mov     rdx, r12
                lea     rax, [rbp+var_20]
                mov     [rsp+70h+var_30], rax
                lea     rax, [rbp+var_10]
                mov     [rsp+70h+var_38], r15b
                mov     [rsp+70h+var_40], rcx
                mov     rcx, [rbp+var_18]
                mov     [rsp+70h+var_48], rax
                mov     eax, [rbx+14h]
                mov     dword ptr [rsp+70h+var_50], eax
                call    SeAccessCheck
                mov     rdx, [rbp+var_10]
                mov     r14b, al
                test    rdx, rdx
                jnz     short loc_1406EDF36

loc_1406EDEBC:                          ; CODE XREF: ObCheckObjectAccess+167↓j
                test    r14b, r14b
                jz      short loc_1406EDED0
                mov     eax, [rbp+var_20]
                or      [rbx+14h], eax
                bts     eax, 19h
                not     eax
                and     [rbx+10h], eax

loc_1406EDED0:                          ; CODE XREF: ObCheckObjectAccess+DF↑j
                mov     rcx, [rbp+var_8]
                lea     rax, [rbx+0Ah]
                mov     r9, [rbp+var_18]
                add     rcx, 10h
                mov     [rsp+70h+var_30], rax
                xor     r8d, r8d
                mov     [rsp+70h+var_38], r15b
                mov     rdx, r13
                mov     byte ptr [rsp+70h+var_40], r14b
                mov     byte ptr [rsp+70h+var_48], dil
                mov     [rsp+70h+var_50], rbx
                call    SeOpenObjectAuditAlarm
                mov     rcx, r12
                call    SeUnlockSubjectContext
                mov     dl, [rbp+arg_0]
                mov     rcx, [rbp+var_18]
                call    ObReleaseObjectSecurity
                mov     al, r14b

loc_1406EDF1B:                          ; CODE XREF: ObCheckObjectAccess+136BD7↓j
                lea     r11, [rsp+70h+var_s0]
                mov     rbx, [r11+38h]
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

loc_1406EDF36:                          ; CODE XREF: ObCheckObjectAccess+DA↑j
                mov     rcx, rbx
                call    SeAppendPrivileges
                mov     rcx, [rbp+var_10]
                call    SeFreePrivileges
                jmp     loc_1406EDEBC
ObCheckObjectAccess endp
