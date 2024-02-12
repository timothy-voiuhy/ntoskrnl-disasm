PoShutdownBugCheck proc near            ; CODE XREF: sub_14079A698+B9F8E↑p
                                        ; sub_1409B51C0+67B↓p
                                        ; DATA XREF: ...

var_60          = qword ptr -60h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  20h
arg_8           = qword ptr  28h
arg_10          = qword ptr  30h
arg_18          = qword ptr  38h
arg_20          = qword ptr  40h
arg_28          = qword ptr  48h

                mov     [rsp-18h+arg_0], rbx
                mov     [rsp-18h+arg_8], rsi
                mov     [rsp-18h+arg_18], rdi
                push    rbp
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 80h
                and     [rbp+var_2C], 0
                mov     rsi, r9
                mov     al, cs:byte_140CFC50E
                mov     r14, r8
                mov     r15d, edx
                mov     bl, cl
                test    al, al
                jz      short loc_1408E8CAC
                lea     r8, [rbp+arg_10]
                mov     [rbp+arg_10], 0FFFFFFFFEE1E5D00h
                xor     edx, edx
                xor     ecx, ecx
                call    KeDelayExecutionThread

loc_1408E8CAC:                          ; CODE XREF: PoShutdownBugCheck+35↑j
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    sub_140565144
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     [rbp+var_48], rcx
                test    bl, bl
                jnz     short loc_1408E8CDE
                and     [rbp+var_48], 0
                xor     edx, edx
                xor     ecx, ecx
                call    sub_1403C0010

loc_1408E8CDE:                          ; CODE XREF: PoShutdownBugCheck+6E↑j
                mov     rax, gs:188h
                mov     [rbp+var_50], rax
                call    PsGetCurrentThreadId
                mov     [rbp+var_40], rax
                call    PsGetCurrentThreadProcessId
                mov     rdi, [rbp+arg_20]
                xor     r9d, r9d
                mov     rbx, [rbp+arg_28]
                mov     r8d, 0C0000004h
                mov     [rbp+var_38], rax
                lea     rax, [rbp+var_50]
                mov     [rbp+var_30], r15d
                lea     edx, [r9+4]
                mov     [rbp+var_28], r14
                lea     ecx, [rdx+1]
                mov     [rbp+var_20], rsi
                mov     [rbp+var_18], rdi
                mov     [rbp+var_10], rbx
                mov     cs:qword_140C233F0, rax
                call    ZwInitiatePowerAction
                mov     r9, rdi
                mov     [rsp+80h+var_60], rbx
                mov     r8, rsi
                mov     rdx, r14
                mov     ecx, r15d
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
PoShutdownBugCheck endp
