CmRegisterMachineHiveLoadedNotification proc near
                                        ; CODE XREF: sub_140A3A7B8+38A↓p
                                        ; DATA XREF: .rdata:000000014009F510↑o ...

arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140853F6A SIZE 0000005E BYTES

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rbp
                push    rsi
                push    rdi
                push    r12
                sub     rsp, 20h
                and     dword ptr [rax+8], 0
                mov     rsi, r9
                mov     rbp, rdx
                mov     rdi, rcx
                test    rcx, rcx
                jz      loc_140853F6A
                test    r8, r8
                jz      loc_140853F74
                test    r9, r9
                jz      loc_140853F7E
                lea     rdx, [rax+8]
                mov     rcx, r8
                call    sub_140799720
                test    eax, eax
                js      loc_1407995FC
                mov     edx, 28h ; '('
                mov     r8d, 32394D43h
                lea     ecx, [rdx-27h]
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      loc_140853F88
                and     qword ptr [rax], 0
                lea     r12, off_140C00F00 ; "HARDWARE"
                and     qword ptr [rax+8], 0
                xor     edx, edx
                mov     byte ptr [rax+27h], 0
                and     word ptr [rbx+24h], 0
                mov     [rax+10h], rdi
                mov     [rax+18h], rbp
                mov     eax, [rsp+38h+arg_0]
                imul    rdi, rax, 0C8h
                mov     [rbx+20h], eax
                mov     byte ptr [rbx+26h], 0
                lea     rbp, [rdi+r12]
                lea     rcx, [rbp+90h]
                call    ExAcquirePushLockExclusiveEx
                lea     rax, [r12+98h]
                add     rax, rdi
                mov     rcx, [rax+8]
                cmp     [rcx], rax
                jnz     loc_140853F92
                mov     [rbx+8], rcx
                xor     edx, edx
                mov     [rbx], rax
                mov     [rcx], rbx
                lea     rcx, [rbp+90h]
                mov     [rax+8], rbx
                mov     byte ptr [rbx+25h], 1
                call    ExReleasePushLockEx
                lea     rbp, [rdi+r12]
                xor     edx, edx
                lea     rcx, [rbp+88h]
                call    ExAcquirePushLockExclusiveEx
                cmp     dword ptr [rdi+r12+74h], 1
                jz      loc_140853F99

loc_1407995E9:                          ; CODE XREF: CmRegisterMachineHiveLoadedNotification+BAACD↓j
                                        ; CmRegisterMachineHiveLoadedNotification+BAAE3↓j
                xor     edx, edx
                lea     rcx, [rbp+88h]
                call    ExReleasePushLockEx
                xor     eax, eax
                mov     [rsi], rbx

loc_1407995FC:                          ; CODE XREF: CmRegisterMachineHiveLoadedNotification+49↑j
                                        ; CmRegisterMachineHiveLoadedNotification+BAA8F↓j ...
                mov     rbx, [rsp+38h+arg_8]
                mov     rbp, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
CmRegisterMachineHiveLoadedNotification endp
