IoReportTargetDeviceChangeAsynchronous proc near
                                        ; CODE XREF: sub_14036ECD0+12001C↓p
                                        ; FsRtlNotifyVolumeEventEx+83↓p
                                        ; DATA XREF: ...

var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140463616 SIZE 0000019F BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 30h
                xor     r15d, r15d
                mov     rbp, r9
                mov     r14, r8
                mov     rsi, rdx
                mov     rbx, rcx
                mov     edi, 2
                test    rcx, rcx
                jz      loc_14046379C
                mov     rax, [rcx+138h]
                mov     rcx, [rax+28h]
                test    rcx, rcx
                jz      loc_1404636A5
                test    dword ptr [rcx+18Ch], 20000h
                jnz     loc_1404636A5
                lea     rdi, [rdx+4]
                lea     rdx, qword_14000AB40
                cmp     rdi, rdx
                jz      loc_1402F21B8
                lea     r12d, [r15+10h]
                mov     rcx, rdi
                mov     r8d, r12d
                call    RtlCompareMemory
                cmp     rax, r12
                mov     ecx, r15d
                setz    cl
                test    ecx, ecx
                jnz     loc_1402F21B8
                lea     rdx, xmmword_14000AB70
                cmp     rdi, rdx
                jz      loc_1402F21B8
                mov     r8d, r12d
                mov     rcx, rdi
                call    RtlCompareMemory
                cmp     rax, r12
                jz      loc_1402F21B8
                lea     rdx, xmmword_14000AB80
                cmp     rdi, rdx
                jz      short loc_1402F21B8
                mov     r8d, r12d
                mov     rcx, rdi
                call    RtlCompareMemory
                cmp     rax, r12
                jz      short loc_1402F21B8
                movzx   ecx, word ptr [rsi+2]
                lea     r8d, [r15+24h]
                cmp     cx, r8w
                jb      short loc_1402F21B8
                mov     edx, [rsi+20h]
                cmp     edx, 0FFFFFFFFh
                jnz     loc_140463616

loc_1402F216C:                          ; CODE XREF: IoReportTargetDeviceChangeAsynchronous+1715A3↓j
                mov     rax, cr8
                mov     edi, 2
                cmp     al, dil
                jz      loc_140463628
                mov     [rsp+48h+var_20], rsi
                mov     r9, r14
                xor     r8d, r8d
                mov     [rsp+48h+var_28], rbp
                xor     edx, edx
                mov     rcx, rbx
                call    sub_14069ED34

loc_1402F2198:                          ; CODE XREF: IoReportTargetDeviceChangeAsynchronous+13D↓j
                                        ; IoReportTargetDeviceChangeAsynchronous+171616↓j ...
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                mov     rdi, [rsp+48h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1402F21B8:                          ; CODE XREF: IoReportTargetDeviceChangeAsynchronous+6C↑j
                                        ; IoReportTargetDeviceChangeAsynchronous+8C↑j ...
                mov     eax, 0C0000010h
                jmp     short loc_1402F2198
IoReportTargetDeviceChangeAsynchronous endp
