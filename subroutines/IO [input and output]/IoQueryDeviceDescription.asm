IoQueryDeviceDescription proc near      ; DATA XREF: .rdata:000000014009D958↑o
                                        ; .pdata:000000014010BF00↑o

var_80          = byte ptr -80h
var_70          = qword ptr -70h
var_60          = xmmword ptr -60h
var_50          = xmmword ptr -50h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
var_8           = qword ptr -8
arg_0           = dword ptr  10h
arg_8           = qword ptr  18h
arg_20          = qword ptr  30h
arg_28          = qword ptr  38h
arg_30          = qword ptr  40h
arg_38          = qword ptr  48h

; FUNCTION CHUNK AT 00000001408527DE SIZE 00000014 BYTES

                mov     [rsp-8+arg_8], rbx
                push    rbp
                lea     rbp, [rsp-37h]
                sub     rsp, 0A0h
                and     [rbp+37h+var_70], 0
                xorps   xmm0, xmm0
                or      [rbp+37h+arg_0], 0FFFFFFFFh
                movups  [rbp+37h+var_60], xmm0
                test    rcx, rcx
                jz      loc_1408527DE
                mov     rax, [rbp+37h+arg_20]
                mov     [rbp+37h+var_20], rax
                mov     rax, [rbp+37h+arg_28]
                mov     [rbp+37h+var_18], rax
                mov     rax, [rbp+37h+arg_30]
                mov     [rbp+37h+var_10], rax
                mov     rax, [rbp+37h+arg_38]
                mov     [rbp+37h+var_38], rdx
                mov     edx, 800h
                mov     [rbp+37h+var_40], rcx
                mov     ecx, 1
                mov     [rbp+37h+var_30], r8
                mov     r8d, 4E526F49h
                mov     [rbp+37h+var_8], rax
                mov     [rbp+37h+var_28], r9
                mov     word ptr [rbp+37h+var_60+2], dx
                call    ExAllocatePoolWithTag
                mov     qword ptr [rbp+37h+var_60+8], rax
                test    rax, rax
                jz      loc_1408527E8
                lea     rdx, unk_140D2E990
                lea     rcx, [rbp+37h+var_60]
                call    RtlAppendUnicodeStringToString
                mov     r9d, 20019h
                mov     [rsp+0A0h+var_80], 0
                lea     r8, [rbp+37h+var_60]
                xor     edx, edx
                lea     rcx, [rbp+37h+var_70]
                call    sub_140768AB4
                mov     ebx, eax
                test    eax, eax
                js      short loc_140789E5F
                movaps  xmm0, [rbp+37h+var_60]
                lea     r9, [rbp+37h+arg_0]
                mov     r8, [rbp+37h+var_70]
                lea     rdx, [rbp+37h+var_50]
                lea     rcx, [rbp+37h+var_40]
                movdqa  [rbp+37h+var_50], xmm0
                mov     [rsp+0A0h+var_80], 1
                call    sub_140789E94
                mov     rcx, [rbp+37h+var_70]
                mov     ebx, eax
                call    ZwClose

loc_140789E5F:                          ; CODE XREF: IoQueryDeviceDescription+AF↑j
                mov     rcx, qword ptr [rbp+37h+var_60+8]
                xor     edx, edx
                call    ExFreePoolWithTag
                mov     eax, 0C0000034h
                cmp     ebx, 8000001Ah
                cmovz   ebx, eax
                mov     eax, ebx

loc_140789E7A:                          ; CODE XREF: IoQueryDeviceDescription+C8A63↓j
                                        ; IoQueryDeviceDescription+C8A6D↓j
                mov     rbx, [rsp+0A0h+arg_8]
                add     rsp, 0A0h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoQueryDeviceDescription endp
