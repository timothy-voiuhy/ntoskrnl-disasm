SeOpenObjectForDeleteAuditAlarmWithTransaction proc near
                                        ; CODE XREF: SeOpenObjectForDeleteAuditAlarm+4B↑p
                                        ; DATA XREF: .pdata:0000000140122A0C↑o

var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C8          = dword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = dword ptr -0A0h
var_98          = qword ptr -98h
var_90          = dword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_60          = byte ptr -60h
var_5F          = byte ptr -5Fh
var_5C          = word ptr -5Ch
var_58          = dword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h
arg_18          = qword ptr  28h
arg_20          = qword ptr  30h
arg_30          = byte ptr  40h
arg_38          = byte ptr  48h
arg_40          = qword ptr  50h
arg_48          = qword ptr  58h

                mov     rax, rsp
                mov     [rax+20h], rbx
                mov     [rax+18h], r8
                mov     [rax+10h], rdx
                mov     [rax+8], rcx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rax-3Fh]
                sub     rsp, 0D0h
                mov     rbx, [rbp+37h+arg_20]
                mov     rdi, r9
                xor     r9d, r9d
                mov     rax, rcx
                mov     ecx, 3E7h
                mov     r10, rdx
                mov     r15b, r9b
                mov     [rbp+37h+var_60], r9b
                mov     r13b, r9b
                mov     [rbp+37h+var_5F], r9b
                mov     r12d, r9d
                mov     [rbp+37h+var_38], r9
                mov     esi, r9d
                mov     [rbp+37h+var_48], r9
                mov     r14d, r9d
                mov     [rbp+37h+var_58], r9d
                mov     [rbp+37h+var_5C], cx
                cmp     [rbp+37h+arg_38], r9b
                jz      loc_140923341
                mov     rcx, [rbx+48h]
                lea     rdx, [rbx+20h]
                mov     [rbp+37h+var_50], rcx
                mov     rcx, [rdx]
                mov     [rbp+37h+var_40], rcx
                test    rcx, rcx
                jnz     short loc_140922F5F
                mov     rcx, [rbx+30h]
                mov     [rbp+37h+var_40], rcx

loc_140922F5F:                          ; CODE XREF: SeOpenObjectForDeleteAuditAlarmWithTransaction+85↑j
                test    rax, rax
                jz      short loc_140922F6F
                cmp     [rax], r9w
                jz      short loc_140922F6F
                mov     r14, rax
                jmp     short loc_140922FA5
; ---------------------------------------------------------------------------

loc_140922F6F:                          ; CODE XREF: SeOpenObjectForDeleteAuditAlarmWithTransaction+92↑j
                                        ; SeOpenObjectForDeleteAuditAlarmWithTransaction+98↑j
                test    r10, r10
                jz      short loc_140922FA5
                lea     rdx, [rbp+37h+var_48]
                mov     rcx, r10
                call    sub_140921DD4
                mov     r12, [rbp+37h+var_48]
                xor     r9d, r9d
                mov     [rbp+37h+var_58], eax
                test    eax, eax
                js      loc_140923314
                mov     rax, [rbp+37h+arg_0]
                lea     rdx, [rbx+20h]
                mov     r10, [rbp+37h+arg_8]
                test    r12, r12
                cmovnz  r14, r12

loc_140922FA5:                          ; CODE XREF: SeOpenObjectForDeleteAuditAlarmWithTransaction+9D↑j
                                        ; SeOpenObjectForDeleteAuditAlarmWithTransaction+A2↑j
                test    rdi, rdi
                jz      loc_1409230BA
                mov     r8b, [rbp+37h+arg_30]
                lea     rcx, [rbp+37h+var_5C]
                mov     [rsp+100h+var_D0], rcx
                test    r8b, r8b
                mov     byte ptr [rsp+100h+var_D8], 1
                mov     rcx, r10
                mov     [rsp+100h+var_E0], rdx
                setz    r9b
                mov     rdx, rax
                call    sub_140628FE0
                xor     r9d, r9d
                test    al, al
                jz      loc_1409230BA
                mov     r15d, [rbx+14h]
                or      r15d, [rbx+10h]
                movzx   eax, word ptr [rdi+2]
                test    al, 10h
                jnz     short loc_140922FFA
                mov     edx, r9d

loc_140922FF5:                          ; CODE XREF: SeOpenObjectForDeleteAuditAlarmWithTransaction+14F↓j
                mov     rcx, r9
                jmp     short loc_14092302B
; ---------------------------------------------------------------------------

loc_140922FFA:                          ; CODE XREF: SeOpenObjectForDeleteAuditAlarmWithTransaction+120↑j
                test    ax, ax
                jns     short loc_140923011
                mov     ecx, [rdi+0Ch]
                test    ecx, ecx
                jnz     short loc_14092300B
                mov     rdx, r9
                jmp     short loc_140923015
; ---------------------------------------------------------------------------

loc_14092300B:                          ; CODE XREF: SeOpenObjectForDeleteAuditAlarmWithTransaction+134↑j
                lea     rdx, [rdi+rcx]
                jmp     short loc_140923015
; ---------------------------------------------------------------------------

loc_140923011:                          ; CODE XREF: SeOpenObjectForDeleteAuditAlarmWithTransaction+12D↑j
                mov     rdx, [rdi+18h]

loc_140923015:                          ; CODE XREF: SeOpenObjectForDeleteAuditAlarmWithTransaction+139↑j
                                        ; SeOpenObjectForDeleteAuditAlarmWithTransaction+13F↑j
                test    ax, ax
                jns     short loc_140923027
                mov     eax, [rdi+0Ch]
                test    eax, eax
                jz      short loc_140922FF5
                lea     rcx, [rdi+rax]
                jmp     short loc_14092302B
; ---------------------------------------------------------------------------

loc_140923027:                          ; CODE XREF: SeOpenObjectForDeleteAuditAlarmWithTransaction+148↑j
                mov     rcx, [rdi+18h]

loc_14092302B:                          ; CODE XREF: SeOpenObjectForDeleteAuditAlarmWithTransaction+128↑j
                                        ; SeOpenObjectForDeleteAuditAlarmWithTransaction+155↑j
                mov     r13b, [rbp+37h+arg_30]
                lea     rax, [rbp+37h+var_5F]
                mov     r8, [rbp+37h+var_40]
                mov     r9d, r15d
                mov     [rsp+100h+var_D0], rax
                lea     rax, [rbp+37h+var_60]
                mov     [rsp+100h+var_D8], rax
                mov     byte ptr [rsp+100h+var_E0], r13b
                call    SeExamineSacl
                movzx   eax, word ptr [rdi+2]
                xor     ecx, ecx
                test    al, 10h
                jnz     short loc_140923061

loc_14092305C:                          ; CODE XREF: SeOpenObjectForDeleteAuditAlarmWithTransaction+19B↓j
                mov     rdx, rcx
                jmp     short loc_140923077
; ---------------------------------------------------------------------------

loc_140923061:                          ; CODE XREF: SeOpenObjectForDeleteAuditAlarmWithTransaction+18A↑j
                test    ax, ax
                jns     short loc_140923073
                mov     eax, [rdi+0Ch]
                test    eax, eax
                jz      short loc_14092305C
                lea     rdx, [rdi+rax]
                jmp     short loc_140923077
; ---------------------------------------------------------------------------

loc_140923073:                          ; CODE XREF: SeOpenObjectForDeleteAuditAlarmWithTransaction+194↑j
                mov     rdx, [rdi+18h]

loc_140923077:                          ; CODE XREF: SeOpenObjectForDeleteAuditAlarmWithTransaction+18F↑j
                                        ; SeOpenObjectForDeleteAuditAlarmWithTransaction+1A1↑j
                mov     r8, [rbp+37h+var_40]
                lea     rax, [rbp+37h+var_5F]
                mov     rcx, [rbp+37h+arg_0]
                mov     r9d, r15d
                mov     [rsp+100h+var_D0], rax
                lea     rax, [rbp+37h+var_60]
                mov     [rsp+100h+var_D8], rax
                mov     byte ptr [rsp+100h+var_E0], r13b
                call    sub_1409260D8
                mov     r15b, [rbp+37h+var_60]
                xor     r9d, r9d
                test    r15b, r15b
                jz      short loc_1409230B6
                mov     rax, [rbp+37h+arg_48]
                mov     byte ptr [rax], 1
                jmp     short loc_140923109
; ---------------------------------------------------------------------------

loc_1409230B6:                          ; CODE XREF: SeOpenObjectForDeleteAuditAlarmWithTransaction+1D8↑j
                mov     r13b, [rbp+37h+var_5F]

loc_1409230BA:                          ; CODE XREF: SeOpenObjectForDeleteAuditAlarmWithTransaction+D8↑j
                                        ; SeOpenObjectForDeleteAuditAlarmWithTransaction+10C↑j
                mov     al, [rbp+37h+arg_30]
                test    al, al
                jz      short loc_1409230F7
                mov     rcx, [rbp+37h+var_50]
                mov     rcx, [rcx]
                test    rcx, rcx
                jz      short loc_1409230F7
                cmp     [rcx], r9d
                jbe     short loc_1409230F7
                lea     rdx, [rbp+37h+var_5C]
                xor     r8d, r8d
                mov     [rsp+100h+var_E0], rdx
                lea     r9, [rbx+20h]
                mov     dl, al
                call    sub_1406294B0
                xor     r9d, r9d
                test    al, al
                jz      short loc_1409230F7
                mov     r15b, 1
                mov     [rbx+7Ch], r15b

loc_1409230F7:                          ; CODE XREF: SeOpenObjectForDeleteAuditAlarmWithTransaction+1EF↑j
                                        ; SeOpenObjectForDeleteAuditAlarmWithTransaction+1FB↑j ...
                test    r15b, r15b
                jnz     short loc_140923105
                test    r13b, r13b
                jz      loc_140923333

loc_140923105:                          ; CODE XREF: SeOpenObjectForDeleteAuditAlarmWithTransaction+22A↑j
                mov     r13b, [rbp+37h+arg_30]

loc_140923109:                          ; CODE XREF: SeOpenObjectForDeleteAuditAlarmWithTransaction+1E4↑j
                mov     rax, [rbp+37h+arg_10]
                mov     byte ptr [rbx+9], 1
                test    rax, rax
                jz      short loc_140923121
                cmp     [rax], r9w
                jz      short loc_140923121
                mov     rsi, rax
                jmp     short loc_14092314C
; ---------------------------------------------------------------------------

loc_140923121:                          ; CODE XREF: SeOpenObjectForDeleteAuditAlarmWithTransaction+244↑j
                                        ; SeOpenObjectForDeleteAuditAlarmWithTransaction+24A↑j
                mov     rcx, [rbp+37h+arg_8]
                test    rcx, rcx
                jz      short loc_14092314C
                lea     rdx, [rbp+37h+var_38]
                call    sub_1406D78D4
                xor     r9d, r9d
                mov     [rbp+37h+var_58], eax
                test    eax, eax
                js      loc_140923314
                mov     rax, [rbp+37h+var_38]
                test    rax, rax
                cmovnz  rsi, rax

loc_14092314C:                          ; CODE XREF: SeOpenObjectForDeleteAuditAlarmWithTransaction+24F↑j
                                        ; SeOpenObjectForDeleteAuditAlarmWithTransaction+258↑j
                test    r13b, r13b
                jnz     loc_1409231F2
                mov     rax, [rbp+37h+arg_40]
                test    rax, rax
                jnz     short loc_140923169
                mov     rax, [rbp+37h+var_50]
                add     rax, 20h ; ' '

loc_140923169:                          ; CODE XREF: SeOpenObjectForDeleteAuditAlarmWithTransaction+28F↑j
                movzx   ecx, [rbp+37h+var_5C]
                lea     rdx, qword_1400019C0
                mov     [rsp+90h], rbx
                xor     r8d, r8d
                mov     [rsp+100h+var_78], rax
                mov     rax, [rbx+38h]
                mov     [rsp+100h+var_80], r9
                mov     dword ptr [rsp+100h+var_88], r9d
                mov     qword ptr [rsp+100h+var_90], r9
                mov     dword ptr [rsp+100h+var_98], 2
                mov     qword ptr [rsp+100h+var_A0], rax
                mov     rax, [rbp+37h+var_50]
                mov     byte ptr [rsp+100h+var_A8], r9b
                mov     r9, r14
                mov     rax, [rax]
                mov     [rsp+100h+var_B0], rax
                mov     eax, [rbx+14h]
                mov     dword ptr [rsp+100h+var_B8], eax
                mov     eax, [rbx+18h]
                mov     dword ptr [rsp+100h+var_C0], eax
                mov     rax, [rbx+30h]
                mov     qword ptr [rsp+100h+var_C8], rax
                mov     rax, [rbx+20h]
                mov     [rsp+100h+var_D0], rax
                mov     [rsp+100h+var_D8], rdi
                mov     [rsp+100h+var_E0], rsi
                call    sub_140920B68
                jmp     loc_140923314
; ---------------------------------------------------------------------------

loc_1409231F2:                          ; CODE XREF: SeOpenObjectForDeleteAuditAlarmWithTransaction+27F↑j
                mov     rax, [rbx+38h]
                mov     r9, r14
                mov     r15, [rbp+37h+var_50]
                mov     rdi, [rbp+37h+arg_40]
                movzx   ecx, [rbp+37h+var_5C]
                mov     qword ptr [rsp+100h+var_A0], rdi
                mov     [rsp+100h+var_A8], rax
                mov     rax, [r15]
                mov     [rsp+100h+var_B8], rax
                mov     eax, [rbx+14h]
                mov     dword ptr [rsp+100h+var_C0], eax
                mov     rax, [rbx+30h]
                mov     [rsp+100h+var_D0], rax
                mov     rax, [rbx+20h]
                mov     [rsp+100h+var_D8], rax
                mov     [rsp+100h+var_E0], rsi
                call    sub_1409213F0
                mov     r13d, 20206553h
                test    rsi, rsi
                jz      short loc_1409232A6
                mov     rcx, [rbx+88h]
                lea     r15, [rbx+80h]
                test    rcx, rcx
                jz      short loc_14092326F
                xor     edx, edx
                call    ExFreePoolWithTag
                xor     ecx, ecx
                mov     [r15], cx
                mov     [rbx+82h], cx

loc_14092326F:                          ; CODE XREF: SeOpenObjectForDeleteAuditAlarmWithTransaction+389↑j
                movzx   edx, word ptr [rsi+2]
                mov     r8d, r13d
                mov     ecx, 1
                call    ExAllocatePoolWithTag
                mov     [rbx+88h], rax
                test    rax, rax
                jz      short loc_1409232A2
                movzx   eax, word ptr [rsi+2]
                mov     rdx, rsi
                mov     rcx, r15
                mov     [rbx+82h], ax
                call    RtlCopyUnicodeString

loc_1409232A2:                          ; CODE XREF: SeOpenObjectForDeleteAuditAlarmWithTransaction+3BA↑j
                mov     r15, [rbp+37h+var_50]

loc_1409232A6:                          ; CODE XREF: SeOpenObjectForDeleteAuditAlarmWithTransaction+376↑j
                test    r14, r14
                jz      short loc_140923306
                mov     rcx, [rbx+98h]
                lea     rsi, [rbx+90h]
                test    rcx, rcx
                jz      short loc_1409232D1
                xor     edx, edx
                call    ExFreePoolWithTag
                xor     ecx, ecx
                mov     [rsi], cx
                mov     [rbx+92h], cx

loc_1409232D1:                          ; CODE XREF: SeOpenObjectForDeleteAuditAlarmWithTransaction+3EC↑j
                movzx   edx, word ptr [r14+2]
                mov     r8d, r13d
                mov     ecx, 1
                call    ExAllocatePoolWithTag
                mov     [rbx+98h], rax
                test    rax, rax
                jz      short loc_140923306
                movzx   eax, word ptr [r14+2]
                mov     rdx, r14
                mov     rcx, rsi
                mov     [rbx+92h], ax
                call    RtlCopyUnicodeString

loc_140923306:                          ; CODE XREF: SeOpenObjectForDeleteAuditAlarmWithTransaction+3D9↑j
                                        ; SeOpenObjectForDeleteAuditAlarmWithTransaction+41D↑j
                test    rdi, rdi
                jz      short loc_140923314
                movups  xmm0, xmmword ptr [rdi]
                movdqu  xmmword ptr [r15+20h], xmm0

loc_140923314:                          ; CODE XREF: SeOpenObjectForDeleteAuditAlarmWithTransaction+BC↑j
                                        ; SeOpenObjectForDeleteAuditAlarmWithTransaction+26B↑j ...
                mov     rcx, [rbp+37h+var_38]
                test    rcx, rcx
                jz      short loc_140923324
                xor     edx, edx
                call    ExFreePoolWithTag

loc_140923324:                          ; CODE XREF: SeOpenObjectForDeleteAuditAlarmWithTransaction+44B↑j
                test    r12, r12
                jz      short loc_140923333
                xor     edx, edx
                mov     rcx, r12
                call    ExFreePoolWithTag

loc_140923333:                          ; CODE XREF: SeOpenObjectForDeleteAuditAlarmWithTransaction+22F↑j
                                        ; SeOpenObjectForDeleteAuditAlarmWithTransaction+457↑j
                mov     eax, [rbp+37h+var_58]
                test    eax, eax
                jns     short loc_140923341
                mov     ecx, eax
                call    sub_140926FC0

loc_140923341:                          ; CODE XREF: SeOpenObjectForDeleteAuditAlarmWithTransaction+69↑j
                                        ; SeOpenObjectForDeleteAuditAlarmWithTransaction+468↑j
                mov     rbx, [rsp+100h+arg_18]
                add     rsp, 0D0h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeOpenObjectForDeleteAuditAlarmWithTransaction endp
