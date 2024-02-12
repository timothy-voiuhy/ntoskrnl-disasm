IoVolumeDeviceToGuid proc near          ; CODE XREF: sub_140670554+84↑p
                                        ; sub_14069BB18+B5↓p ...

var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = word ptr -10h
var_E           = word ptr -0Eh
var_C           = dword ptr -0Ch
var_8           = qword ptr -8
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h

                mov     [rsp-8+arg_0], rbx
                mov     [rsp-8+arg_8], rdi
                push    rbp
                mov     rbp, rsp
                sub     rsp, 40h
                mov     rbx, rdx
                xor     edi, edi
                xor     eax, eax
                mov     [rbp+var_20], rdi
                lea     rdx, [rbp+var_20]
                mov     [rbp+var_18], rdi
                mov     [rbp+var_C], eax
                call    IoVolumeDeviceToGuidPath
                test    eax, eax
                js      short loc_1406707EF
                movzx   eax, word ptr [rbp+var_20]
                lea     rcx, [rbp+var_10]
                mov     rdi, [rbp+var_18]
                sub     ax, 14h
                mov     [rbp+var_10], ax
                mov     rdx, rbx
                movzx   eax, word ptr [rbp+var_20+2]
                sub     ax, 14h
                mov     [rbp+var_E], ax
                lea     rax, [rdi+14h]
                mov     [rbp+var_8], rax
                call    RtlGUIDFromString
                xor     edx, edx
                mov     rcx, rdi
                mov     ebx, eax
                call    ExFreePoolWithTag
                mov     eax, ebx

loc_1406707EF:                          ; CODE XREF: IoVolumeDeviceToGuid+2F↑j
                mov     rbx, [rsp+40h+arg_0]
                mov     rdi, [rsp+40h+arg_8]
                add     rsp, 40h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoVolumeDeviceToGuid endp
