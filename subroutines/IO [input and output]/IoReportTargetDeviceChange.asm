IoReportTargetDeviceChange proc near    ; CODE XREF: FsRtlNotifyVolumeEventEx+BA↑p
                                        ; NtSetVolumeInformationFile+4F4↑p
                                        ; DATA XREF: ...

var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = xmmword ptr -38h
var_28          = qword ptr -28h
var_18          = byte ptr -18h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001408470C4 SIZE 0000011F BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 50h
                xor     eax, eax
                xor     ebp, ebp
                mov     [rsp+68h+var_28], rax
                xorps   xmm0, xmm0
                mov     [rsp+68h+arg_0], ebp
                mov     rsi, rdx
                mov     rbx, rcx
                lea     r14d, [rax+2]
                movups  [rsp+68h+var_38], xmm0
                test    rcx, rcx
                jz      loc_1408471CA
                mov     rax, [rcx+138h]
                mov     rcx, [rax+28h]
                test    rcx, rcx
                jz      loc_1408470D3
                test    dword ptr [rcx+18Ch], 20000h
                jnz     loc_1408470D3
                lea     rdi, [rdx+4]
                lea     rdx, qword_14000AB40
                cmp     rdi, rdx
                jz      loc_14076C560
                lea     r14d, [rbp+10h]
                mov     rcx, rdi
                mov     r8d, r14d
                call    RtlCompareMemory
                cmp     rax, r14
                mov     ecx, ebp
                setz    cl
                test    ecx, ecx
                jnz     loc_14076C560
                lea     rdx, xmmword_14000AB70
                cmp     rdi, rdx
                jz      loc_14076C560
                mov     r8d, r14d
                mov     rcx, rdi
                call    RtlCompareMemory
                cmp     rax, r14
                jz      loc_14076C560
                lea     rdx, xmmword_14000AB80
                cmp     rdi, rdx
                jz      loc_14076C560
                mov     r8d, r14d
                mov     rcx, rdi
                call    RtlCompareMemory
                cmp     rax, r14
                jz      short loc_14076C560
                movzx   eax, word ptr [rsi+2]
                lea     edx, [rbp+24h]
                cmp     ax, dx
                jb      short loc_14076C560
                mov     ecx, [rsi+20h]
                cmp     ecx, 0FFFFFFFFh
                jnz     loc_1408470C4

loc_14076C4FD:                          ; CODE XREF: IoReportTargetDeviceChange+DACBE↓j
                xor     r8d, r8d
                lea     rcx, [rsp+68h+var_38]
                xor     edx, edx
                call    KeInitializeEvent
                xor     r9d, r9d
                mov     [rsp+68h+var_40], rsi
                lea     r8, [rsp+68h+arg_0]
                mov     [rsp+68h+var_48], rbp
                lea     rdx, [rsp+68h+var_38]
                mov     rcx, rbx
                call    sub_14069ED34
                test    eax, eax
                js      short loc_14076C54A
                xor     r9d, r9d
                mov     [rsp+68h+var_48], rbp
                xor     r8d, r8d
                lea     rcx, [rsp+68h+var_38]
                xor     edx, edx
                call    KeWaitForSingleObject
                mov     eax, [rsp+68h+arg_0]

loc_14076C54A:                          ; CODE XREF: IoReportTargetDeviceChange+11D↑j
                                        ; IoReportTargetDeviceChange+155↓j
                lea     r11, [rsp+68h+var_18]
                mov     rbx, [r11+28h]
                mov     rbp, [r11+30h]
                mov     rsp, r11
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_14076C560:                          ; CODE XREF: IoReportTargetDeviceChange+6C↑j
                                        ; IoReportTargetDeviceChange+8B↑j ...
                mov     eax, 0C0000010h
                jmp     short loc_14076C54A
IoReportTargetDeviceChange endp
