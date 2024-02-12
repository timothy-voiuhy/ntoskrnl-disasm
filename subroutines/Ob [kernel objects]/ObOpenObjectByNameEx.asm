ObOpenObjectByNameEx proc near          ; CODE XREF: sub_1405072E0+E8↑p
                                        ; IoQueryInformationByName+23D↑p ...

var_108         = qword ptr -108h
var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = xmmword ptr -88h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = xmmword ptr -58h
var_48          = xmmword ptr -48h
var_38          = xmmword ptr -38h
var_28          = qword ptr -28h
arg_0           = dword ptr  10h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h
arg_18          = qword ptr  28h
arg_20          = dword ptr  30h
arg_28          = qword ptr  38h
arg_30          = qword ptr  40h
arg_38          = qword ptr  48h

; FUNCTION CHUNK AT 00000001408074EA SIZE 00000149 BYTES

                mov     r11, rsp
                mov     [r11+20h], rsi
                push    rbp
                push    rdi
                push    r12
                push    r13
                push    r15
                lea     rbp, [r11-3Fh]
                sub     rsp, 100h
                xorps   xmm0, xmm0
                xor     eax, eax
                mov     r15, rcx
                mov     [rbp+37h+var_28], rax
                mov     rax, [rbp+37h+arg_38]
                xor     ecx, ecx
                mov     [rbp+37h+var_B0], rcx
                mov     rdi, r9
                mov     [rbp+37h+arg_0], ecx
                movzx   r12d, r8b
                mov     [rbp+37h+var_98], rcx
                mov     r13, rdx
                mov     [rax], rcx
                mov     [rbp+37h+var_90], rcx
                movups  [rbp+37h+var_88], xmm0
                movups  [rbp+37h+var_58], xmm0
                movups  [rbp+37h+var_48], xmm0
                movups  [rbp+37h+var_38], xmm0
                test    r15, r15
                jz      loc_140807629
                test    rdx, rdx
                jz      loc_140807629

loc_140651ADA:                          ; DATA XREF: .rdata:0000000140058684↑o
                                        ; .rdata:0000000140058698↑o ...
                mov     [r11+10h], rbx
                mov     [r11+18h], r14
                mov     r14, gs:20h
                mov     rsi, [r14+880h]
                mov     rcx, rsi
                inc     dword ptr [rsi+14h]
                call    ExpInterlockedPopEntrySList
                mov     rbx, rax
                test    rax, rax
                jz      loc_140652011

loc_140651B09:                          ; CODE XREF: ObOpenObjectByNameEx+5BC↓j
                                        ; ObOpenObjectByNameEx+5DE↓j
                mov     eax, [r14+24h]
                lea     r9, [rbp+37h+var_88]
                mov     [rbx], eax
                mov     r8, r15
                lea     rax, [rbx+0A0h]
                mov     dword ptr [rsp+120h+var_F8], 1
                movzx   edx, r12b
                mov     [rsp+120h+var_100], rax
                movzx   ecx, r12b
                call    sub_1406521E0
                mov     esi, eax
                test    eax, eax
                js      loc_1408074F4
                test    rdi, rdi
                jnz     loc_140651BE5
                mov     rax, gs:188h
                xor     r15d, r15d
                mov     rsi, gs:188h
                mov     [rbp+37h+var_70], r15
                mov     r14, [rax+0B8h]
                mov     rax, [r14+440h]
                mov     [rbp+37h+var_60], rax
                test    rsi, rsi
                jz      short loc_140651B88
                mov     eax, [rsi+510h]
                test    al, 8
                jnz     loc_140651EAC

loc_140651B88:                          ; CODE XREF: ObOpenObjectByNameEx+108↑j
                                        ; ObOpenObjectByNameEx+4B2↓j
                mov     [rbp+37h+var_78], r15
                lea     r15, [r14+4B8h]
                mov     rcx, r15
                call    sub_14024C570
                mov     rsi, rax
                test    rax, rax
                jz      loc_14065215E

loc_140651BA7:                          ; CODE XREF: ObOpenObjectByNameEx+73D↓j
                cmp     cs:dword_140D2D010, 0
                mov     [rbp+37h+var_68], rsi
                jnz     loc_14080754B

loc_140651BB8:                          ; CODE XREF: ObOpenObjectByNameEx+1B5AFF↓j
                                        ; ObOpenObjectByNameEx+1B5B1E↓j ...
                mov     r9d, [rbp+37h+arg_20]
                lea     rax, [r13+4Ch]
                lea     r8, [rbx+0E0h]
                mov     [rsp+120h+var_100], rax
                mov     rdx, rbx
                lea     rcx, [rbp+37h+var_78]
                call    sub_14024C690
                mov     esi, eax
                test    eax, eax
                js      loc_140651DB2
                mov     rdi, rbx

loc_140651BE5:                          ; CODE XREF: ObOpenObjectByNameEx+D4↑j
                mov     rsi, [rbx+0C0h]
                test    rsi, rsi
                jnz     loc_140652059
                mov     rsi, [rdi+40h]

loc_140651BF9:                          ; CODE XREF: ObOpenObjectByNameEx+5ED↓j
                test    rsi, rsi
                jnz     loc_140652062

loc_140651C02:                          ; CODE XREF: ObOpenObjectByNameEx+606↓j
                                        ; ObOpenObjectByNameEx+613↓j ...
                mov     r8d, [rbx+0A0h]
                lea     rax, [rbp+37h+var_B0]
                mov     rcx, [rbx+0A8h]
                lea     r14, [rbx+1C0h]
                mov     [rsp+60h], rax
                lea     rdx, [rbp+37h+var_88]
                lea     rax, [rbp+37h+arg_0]
                xor     r15d, r15d
                mov     [rsp+120h+var_C8], rax
                mov     r9, r13
                mov     rax, [rbp+37h+arg_30]
                mov     [rsp+120h+var_D0], r14
                mov     [rsp+120h+var_D8], rdi
                mov     [rsp+120h+var_E0], rax
                mov     rax, [rbx+0C8h]
                mov     [rsp+120h+var_E8], r15
                mov     [rsp+120h+var_F0], rax
                mov     rax, [rbp+37h+arg_28]
                mov     [rsp+120h+var_F8], rax
                mov     byte ptr [rsp+120h+var_100], r12b
                call    sub_1406483B0
                mov     esi, eax
                test    eax, eax
                js      loc_140651DB2
                cmp     [rbx+1DEh], r15b
                jnz     loc_140651FC2

loc_140651C81:                          ; CODE XREF: ObOpenObjectByNameEx+58E↓j
                cmp     byte ptr [r14+1Eh], 0
                jnz     loc_140651F8D

loc_140651C8C:                          ; CODE XREF: ObOpenObjectByNameEx+54D↓j
                mov     rcx, [r14+8]
                test    rcx, rcx
                jnz     loc_140652003

loc_140651C99:                          ; CODE XREF: ObOpenObjectByNameEx+59C↓j
                mov     rcx, [rbp+37h+var_B0]
                test    byte ptr [rcx-15h], 1
                lea     r14, [rcx-30h]
                jz      loc_140651F40
                mov     rdx, [r14+20h]
                test    rdx, rdx
                jz      short loc_140651CF0
                mov     rcx, [rdx+20h]
                test    rcx, rcx
                jnz     loc_1408075A4

loc_140651CC1:                          ; CODE XREF: ObOpenObjectByNameEx+1B5B4E↓j
                mov     r8, gs:20h
                mov     rcx, [r8+840h]
                inc     dword ptr [rcx+1Ch]
                movzx   eax, word ptr [rcx+10h]
                cmp     [rcx], ax
                jnb     loc_1406520E4

loc_140651CE1:                          ; CODE XREF: ObOpenObjectByNameEx+688↓j
                call    ExpInterlockedPushEntrySList

loc_140651CE6:                          ; CODE XREF: ObOpenObjectByNameEx+69D↓j
                xor     eax, eax
                mov     [r14+20h], rax
                mov     rcx, [rbp+37h+var_B0]

loc_140651CF0:                          ; CODE XREF: ObOpenObjectByNameEx+242↑j
                                        ; ObOpenObjectByNameEx+4D6↓j
                mov     rax, r14
                shr     rax, 8
                movzx   edx, al
                movzx   eax, byte ptr [r14+18h]
                xor     rdx, rax
                movzx   eax, byte ptr cs:dword_140CFC728
                xor     rdx, rax
                lea     rax, cs:140000000h
                mov     rax, ds:rva qword_140CFCE60[rax+rdx*8]
                mov     edx, [rax+48h]
                test    [rbx+0A0h], edx
                jnz     loc_1408075C3
                lea     rax, [rbp+37h+var_88]
                mov     qword ptr [rbp+37h+var_48+8], rax
                lea     rcx, [rbp+37h+var_58]
                lea     rax, [r13+10h]
                mov     qword ptr [rbp+37h+var_48], rax
                mov     rax, [rbx+0A8h]
                mov     qword ptr [rbp+37h+var_38], rax
                call    sub_14024C810
                mov     rdx, [rbp+37h+var_B0]
                lea     rax, [rbp+37h+var_98]
                mov     [rsp+120h+var_D0], rax
                xor     ecx, ecx
                mov     eax, [rbp+37h+arg_0]
                mov     r9, rdi
                mov     [rsp+120h+var_D8], rcx
                xor     r8d, r8d
                mov     dword ptr [rsp+120h+var_E0], eax
                mov     eax, [rbx+0A0h]
                mov     [rsp+120h+var_E8], rcx
                mov     byte ptr [rsp+120h+var_F0], r12b
                mov     dword ptr [rsp+120h+var_F8], eax
                mov     dword ptr [rsp+120h+var_100], ecx
                mov     ecx, r15d
                call    sub_14064A9E0
                mov     r14d, eax
                test    eax, eax
                js      loc_14065214D
                mov     rcx, [rbp+37h+arg_38]
                mov     rax, [rbp+37h+var_98]
                mov     [rcx], rax

loc_140651DA5:                          ; CODE XREF: ObOpenObjectByNameEx+6E9↓j
                                        ; ObOpenObjectByNameEx+1B5B5D↓j
                mov     r14, [rbp+37h+var_90]
                test    r14, r14
                jnz     loc_140651F4B

loc_140651DB2:                          ; CODE XREF: ObOpenObjectByNameEx+16C↑j
                                        ; ObOpenObjectByNameEx+1FE↑j ...
                cmp     rdi, rbx
                jnz     short loc_140651E04
                mov     rcx, rdi
                call    sub_14024C4F0
                cmp     cs:dword_140D2D010, 0
                jnz     loc_1408075D2

loc_140651DCC:                          ; CODE XREF: ObOpenObjectByNameEx+753↓j
                                        ; ObOpenObjectByNameEx+1B5BAD↓j ...
                mov     rax, gs:188h
                mov     rdx, [rdi+30h]
                mov     rcx, [rax+0B8h]
                add     rcx, 4B8h
                call    sub_14024C4A0
                mov     rcx, [rdi+20h]
                xor     r14d, r14d
                mov     [rdi+30h], r14
                test    rcx, rcx
                jnz     loc_140651F27

loc_140651E00:                          ; CODE XREF: ObOpenObjectByNameEx+4BC↓j
                mov     [rdi+20h], r14

loc_140651E04:                          ; CODE XREF: ObOpenObjectByNameEx+345↑j
                mov     rcx, [rbx+0C0h]
                test    rcx, rcx
                jnz     loc_140652099

loc_140651E14:                          ; CODE XREF: ObOpenObjectByNameEx+641↓j
                mov     r8, qword ptr [rbp+37h+var_88+8]
                test    r8, r8
                jz      short loc_140651E54
                mov     eax, 0F8h
                cmp     word ptr [rbp+37h+var_88+2], ax
                jnz     loc_140651F31
                mov     rdx, gs:20h
                mov     rcx, [rdx+850h]
                inc     dword ptr [rcx+1Ch]
                movzx   eax, word ptr [rcx+10h]
                cmp     [rcx], ax
                jnb     loc_140652112

loc_140651E4C:                          ; CODE XREF: ObOpenObjectByNameEx+6B6↓j
                mov     rdx, r8
                call    ExpInterlockedPushEntrySList

loc_140651E54:                          ; CODE XREF: ObOpenObjectByNameEx+3AB↑j
                                        ; ObOpenObjectByNameEx+4CB↓j ...
                call    sub_14024C440
                mov     rdx, gs:20h
                mov     rcx, [rdx+880h]
                inc     dword ptr [rcx+1Ch]
                movzx   eax, word ptr [rcx+10h]
                cmp     [rcx], ax
                jnb     loc_1406520B6

loc_140651E79:                          ; CODE XREF: ObOpenObjectByNameEx+65A↓j
                mov     rdx, rbx
                call    ExpInterlockedPushEntrySList

loc_140651E81:                          ; CODE XREF: ObOpenObjectByNameEx+66F↓j
                                        ; ObOpenObjectByNameEx+1B5AD6↓j
                mov     eax, esi

loc_140651E83:                          ; CODE XREF: ObOpenObjectByNameEx+1B5A7F↓j
                mov     rbx, [rsp+120h+arg_8]
                mov     r14, [rsp+120h+arg_10]

loc_140651E93:                          ; CODE XREF: ObOpenObjectByNameEx+1B5BBE↓j
                                        ; DATA XREF: .pdata:00000001400FF594↑o ...
                mov     rsi, [rsp+120h+arg_18]
                add     rsp, 100h
                pop     r15
                pop     r13
                pop     r12
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140651EAC:                          ; CODE XREF: ObOpenObjectByNameEx+112↑j
                                        ; DATA XREF: .pdata:00000001400FF5A0↑o ...
                mov     rax, gs:188h
                mov     [rbp+37h+var_A0], rax
                dec     word ptr [rax+1E4h]
                lea     rcx, [rsi+500h]
                xor     edx, edx
                mov     [rbp+37h+var_A8], rcx
                call    ExAcquirePushLockSharedEx
                mov     eax, [rsi+510h]
                test    al, 8
                jz      short loc_140651EFB
                mov     r15, [rsi+4A8h]
                and     r15, 0FFFFFFFFFFFFFFF8h
                mov     rcx, r15
                call    ObfReferenceObject
                mov     eax, [rsi+4A8h]
                and     eax, 3
                mov     dword ptr [rbp+37h+var_70], eax

loc_140651EFB:                          ; CODE XREF: ObOpenObjectByNameEx+46A↑j
                mov     rsi, [rbp+37h+var_A8]
                mov     eax, 11h
                xor     ecx, ecx
                lock cmpxchg [rsi], rcx
                jnz     loc_140652140

loc_140651F11:                          ; CODE XREF: ObOpenObjectByNameEx+6D8↓j
                mov     rcx, rsi
                call    sub_140243660
                mov     rcx, [rbp+37h+var_A0]
                call    sub_14021E1F0
                jmp     loc_140651B88
; ---------------------------------------------------------------------------

loc_140651F27:                          ; CODE XREF: ObOpenObjectByNameEx+38A↑j
                call    PsDereferenceSiloContext
                jmp     loc_140651E00
; ---------------------------------------------------------------------------

loc_140651F31:                          ; CODE XREF: ObOpenObjectByNameEx+3B6↑j
                xor     edx, edx
                mov     rcx, r8
                call    ExFreePoolWithTag
                jmp     loc_140651E54
; ---------------------------------------------------------------------------

loc_140651F40:                          ; CODE XREF: ObOpenObjectByNameEx+235↑j
                mov     r15d, 1
                jmp     loc_140651CF0
; ---------------------------------------------------------------------------

loc_140651F4B:                          ; CODE XREF: ObOpenObjectByNameEx+33C↑j
                movzx   eax, byte ptr [r14+1Ah]
                lea     rcx, cs:140000000h
                and     eax, 3
                movzx   eax, byte ptr [rax+rcx+0C25E20h]
                mov     rcx, r14
                sub     rcx, rax
                mov     eax, 0FFFFFFFFh
                lock xadd [rcx+18h], eax
                cmp     eax, 1
                jnz     short loc_140651F7F
                mov     rcx, r14
                call    sub_140673E90

loc_140651F7F:                          ; CODE XREF: ObOpenObjectByNameEx+505↑j
                lea     rcx, [r14+30h]
                call    PsDereferenceSiloContext
                jmp     loc_140651DB2
; ---------------------------------------------------------------------------

loc_140651F8D:                          ; CODE XREF: ObOpenObjectByNameEx+216↑j
                mov     rcx, [r14]
                xor     edx, edx
                add     rcx, 128h
                call    ExReleasePushLockEx
                mov     rcx, [r14]
                mov     dword ptr [r14+20h], 0EEEE1234h
                call    PsDereferenceSiloContext
                mov     [r14], r15
                mov     word ptr [r14+1Eh], 0
                call    KeLeaveCriticalRegion
                jmp     loc_140651C8C
; ---------------------------------------------------------------------------

loc_140651FC2:                          ; CODE XREF: ObOpenObjectByNameEx+20B↑j
                mov     r15, [rbx+1C8h]
                sub     r15, 30h ; '0'
                mov     [rbp+37h+var_90], r15
                lea     rcx, [r15+30h]
                call    ObfReferenceObject
                movzx   eax, byte ptr [r15+1Ah]
                lea     rcx, cs:140000000h
                and     eax, 3
                movzx   eax, byte ptr [rax+rcx+0C25E20h]
                mov     rcx, r15
                sub     rcx, rax
                lock inc dword ptr [rcx+18h]
                xor     r15d, r15d
                jmp     loc_140651C81
; ---------------------------------------------------------------------------

loc_140652003:                          ; CODE XREF: ObOpenObjectByNameEx+223↑j
                call    PsDereferenceSiloContext
                mov     [r14+8], r15
                jmp     loc_140651C99
; ---------------------------------------------------------------------------

loc_140652011:                          ; CODE XREF: ObOpenObjectByNameEx+93↑j
                inc     dword ptr [rsi+18h]
                mov     rsi, [r14+888h]
                mov     rcx, rsi
                inc     dword ptr [rsi+14h]
                call    ExpInterlockedPopEntrySList
                mov     rbx, rax
                test    rax, rax
                jnz     loc_140651B09
                mov     edx, [rsi+2Ch]
                mov     rax, [rsi+30h]
                mov     r8d, [rsi+28h]
                mov     ecx, [rsi+24h]
                inc     dword ptr [rsi+18h]
                call    sub_1404079D0
                mov     rbx, rax
                test    rax, rax
                jnz     loc_140651B09
                jmp     loc_1408074EA
; ---------------------------------------------------------------------------

loc_140652059:                          ; CODE XREF: ObOpenObjectByNameEx+17F↑j
                mov     [rdi+40h], rsi
                jmp     loc_140651BF9
; ---------------------------------------------------------------------------

loc_140652062:                          ; CODE XREF: ObOpenObjectByNameEx+18C↑j
                mov     rcx, rsi
                call    RtlValidSecurityDescriptor
                test    al, al
                jz      loc_14080759A
                test    byte ptr [rsi+2], 10h
                jz      loc_140651C02
                test    dword ptr [rdi+14h], 1000000h
                jnz     loc_140651C02
                mov     rcx, rsi
                call    sub_140707E84
                or      [rdi+10h], eax
                jmp     loc_140651C02
; ---------------------------------------------------------------------------

loc_140652099:                          ; CODE XREF: ObOpenObjectByNameEx+39E↑j
                movzx   edx, byte ptr [rbx+0B0h]
                mov     r8b, 1
                call    SeReleaseSecurityDescriptor
                xor     eax, eax
                mov     [rbx+0C0h], rax
                jmp     loc_140651E14
; ---------------------------------------------------------------------------

loc_1406520B6:                          ; CODE XREF: ObOpenObjectByNameEx+403↑j
                inc     dword ptr [rcx+20h]
                mov     rcx, [rdx+888h]
                inc     dword ptr [rcx+1Ch]
                movzx   eax, word ptr [rcx+10h]
                cmp     [rcx], ax
                jb      loc_140651E79
                inc     dword ptr [rcx+20h]
                mov     rax, [rcx+38h]

loc_1406520D7:                          ; CODE XREF: ObOpenObjectByNameEx+1B5AC5↓j
                mov     rcx, rbx
                call    sub_1404079D0
                jmp     loc_140651E81
; ---------------------------------------------------------------------------

loc_1406520E4:                          ; CODE XREF: ObOpenObjectByNameEx+26B↑j
                inc     dword ptr [rcx+20h]
                mov     rcx, [r8+848h]
                inc     dword ptr [rcx+1Ch]
                movzx   eax, word ptr [rcx+10h]
                cmp     [rcx], ax
                jb      loc_140651CE1
                inc     dword ptr [rcx+20h]
                mov     rax, [rcx+38h]
                mov     rcx, rdx
                call    sub_1404079D0
                jmp     loc_140651CE6
; ---------------------------------------------------------------------------

loc_140652112:                          ; CODE XREF: ObOpenObjectByNameEx+3D6↑j
                inc     dword ptr [rcx+20h]
                mov     rcx, [rdx+858h]
                inc     dword ptr [rcx+1Ch]
                movzx   eax, word ptr [rcx+10h]
                cmp     [rcx], ax
                jb      loc_140651E4C
                inc     dword ptr [rcx+20h]
                mov     rax, [rcx+38h]
                mov     rcx, r8
                call    sub_1404079D0
                jmp     loc_140651E54
; ---------------------------------------------------------------------------

loc_140652140:                          ; CODE XREF: ObOpenObjectByNameEx+49B↑j
                mov     rcx, rsi
                call    ExfReleasePushLockShared
                jmp     loc_140651F11
; ---------------------------------------------------------------------------

loc_14065214D:                          ; CODE XREF: ObOpenObjectByNameEx+324↑j
                mov     rcx, [rbp+37h+var_B0]
                call    PsDereferenceSiloContext
                mov     esi, r14d
                jmp     loc_140651DA5
; ---------------------------------------------------------------------------

loc_14065215E:                          ; CODE XREF: ObOpenObjectByNameEx+131↑j
                mov     rax, gs:188h
                mov     [rbp+37h+var_A0], rax
                dec     word ptr [rax+1E4h]
                add     r14, 438h
                xor     edx, edx
                mov     rcx, r14
                call    ExAcquirePushLockSharedEx
                mov     rcx, r15
                call    sub_14021AEA8
                mov     rsi, rax
                xor     ecx, ecx
                mov     eax, 11h
                lock cmpxchg [r14], rcx
                jnz     short loc_1406521B2

loc_14065219C:                          ; CODE XREF: ObOpenObjectByNameEx+74A↓j
                mov     rcx, r14
                call    sub_140243660
                mov     rcx, [rbp+37h+var_A0]
                call    sub_14021E1F0
                jmp     loc_140651BA7
; ---------------------------------------------------------------------------

loc_1406521B2:                          ; CODE XREF: ObOpenObjectByNameEx+72A↑j
                mov     rcx, r14
                call    ExfReleasePushLockShared
                jmp     short loc_14065219C
; ---------------------------------------------------------------------------

loc_1406521BC:                          ; CODE XREF: ObOpenObjectByNameEx+1B5B69↓j
                                        ; ObOpenObjectByNameEx+1B5B88↓j ...
                mov     rax, [rdi+20h]
                test    rax, rax
                jz      loc_140651DCC
                jmp     loc_140807604
ObOpenObjectByNameEx endp
