IoReplacePartitionUnit proc near        ; CODE XREF: sub_1405CA450:loc_1405CA4DE↑p
                                        ; DATA XREF: .pdata:000000014011D018↑o

var_60          = qword ptr -60h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = dword ptr -40h
var_3C          = dword ptr -3Ch
var_38          = byte ptr -38h
var_20          = qword ptr -20h
var_10          = qword ptr -10h
var_8           = qword ptr -8
var_s0          = byte ptr  0
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h

                mov     [rsp-8+arg_0], rbx
                mov     [rsp-8+arg_8], rsi
                mov     [rsp-8+arg_10], rdi
                push    rbp
                mov     rbp, rsp
                sub     rsp, 80h
                mov     rdi, rdx
                mov     esi, r8d
                xor     edx, edx
                mov     rbx, rcx
                lea     rcx, [rbp+var_50]
                lea     r8d, [rdx+50h]
                call    memset
                xor     r8d, r8d
                mov     [rbp+var_50], rbx
                xor     edx, edx
                mov     [rbp+var_48], rdi
                lea     rcx, [rbp+var_38]
                mov     [rbp+var_40], esi
                mov     [rbp+var_3C], 0C0000001h
                call    KeInitializeEvent
                mov     rcx, gs:188h
                mov     rax, cs:PsInitialSystemProcess
                cmp     [rcx+0B8h], rax
                jnz     short loc_14089FC36
                lea     rcx, [rbp+var_50]
                call    NaptrDnsRecordConvert_1
                jmp     short loc_14089FC73
; ---------------------------------------------------------------------------

loc_14089FC36:                          ; CODE XREF: IoReplacePartitionUnit+69↑j
                and     [rbp+var_20], 0
                lea     rax, NaptrDnsRecordConvert_1
                mov     [rbp+var_10], rax
                lea     rcx, [rbp+var_20]
                lea     rax, [rbp+var_50]
                mov     edx, 1
                mov     [rbp+var_8], rax
                call    ExQueueWorkItem
                and     [rsp+80h+var_60], 0
                lea     rcx, [rbp+var_38]
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                call    KeWaitForSingleObject

loc_14089FC73:                          ; CODE XREF: IoReplacePartitionUnit+74↑j
                mov     eax, [rbp+var_3C]
                lea     r11, [rsp+80h+var_s0]
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rdi, [r11+20h]
                mov     rsp, r11
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoReplacePartitionUnit endp
