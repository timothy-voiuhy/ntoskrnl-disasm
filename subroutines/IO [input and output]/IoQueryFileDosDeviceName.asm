IoQueryFileDosDeviceName proc near      ; CODE XREF: sub_1404EA998+29↑p
                                        ; NtQueryInformationProcess+48C↓p ...

var_28          = dword ptr -28h
var_20          = qword ptr -20h
var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+20h], rsi
                push    rdi
                sub     rsp, 40h
                mov     edi, 0D0h
                mov     rsi, rdx
                mov     [rax+18h], edi
                mov     rbp, rcx

loc_1406C2962:                          ; CODE XREF: IoQueryFileDosDeviceName+95↓j
                mov     r8d, 6E446F49h
                mov     rdx, rdi
                mov     ecx, 1
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      short loc_1406C29D7
                lea     rax, [rsp+48h+arg_10]
                mov     [rsp+48h+var_18], 0
                mov     [rsp+48h+var_20], rax
                mov     r9, rbx
                mov     r8b, 1
                mov     [rsp+48h+var_28], edi
                mov     rcx, rbp
                call    sub_1406C29E4
                mov     edi, eax
                test    eax, eax
                jnz     short loc_1406C29BF
                mov     [rsi], rbx

loc_1406C29A7:                          ; CODE XREF: IoQueryFileDosDeviceName+8F↓j
                mov     eax, edi

loc_1406C29A9:                          ; CODE XREF: IoQueryFileDosDeviceName+9C↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_18]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406C29BF:                          ; CODE XREF: IoQueryFileDosDeviceName+62↑j
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                cmp     edi, 80000005h
                jnz     short loc_1406C29A7
                mov     edi, [rsp+48h+arg_10]
                jmp     short loc_1406C2962
; ---------------------------------------------------------------------------

loc_1406C29D7:                          ; CODE XREF: IoQueryFileDosDeviceName+3B↑j
                mov     eax, 0C000009Ah
                jmp     short loc_1406C29A9
IoQueryFileDosDeviceName endp
