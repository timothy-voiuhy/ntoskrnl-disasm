ExGetSystemFirmwareTable proc near      ; DATA XREF: .rdata:00000001400ACBA8↑o
                                        ; .pdata:000000014010ED98↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140863500 SIZE 00000025 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+20h], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                and     dword ptr [rax+18h], 0
                mov     edi, r9d
                mov     rsi, r8
                mov     r14d, edx
                mov     r15d, ecx
                test    r8, r8
                jnz     short loc_1407CF9B6
                test    r9d, r9d
                jnz     loc_140863500

loc_1407CF9B6:                          ; CODE XREF: ExGetSystemFirmwareTable+2B↑j
                lea     ebp, [r9+10h]
                mov     ecx, 1
                mov     edx, ebp
                mov     r8d, 54465241h
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      loc_14086351B
                lea     r9, [rsp+38h+arg_10]
                mov     [rax+0Ch], edi
                mov     r8d, ebp
                mov     [rax], r15d
                xor     edx, edx
                mov     dword ptr [rax+4], 1
                mov     rcx, rax
                mov     [rax+8], r14d
                call    sub_14070D6EC
                mov     edi, eax
                mov     eax, 80000000h
                lea     ecx, [rdi+rax]
                test    eax, ecx
                jz      loc_14086350A

loc_1407CFA0D:                          ; CODE XREF: ExGetSystemFirmwareTable+93B96↓j
                mov     rcx, [rsp+38h+arg_20]
                test    rcx, rcx
                jz      short loc_1407CFA1C
                mov     eax, [rbx+0Ch]
                mov     [rcx], eax

loc_1407CFA1C:                          ; CODE XREF: ExGetSystemFirmwareTable+95↑j
                                        ; ExGetSystemFirmwareTable+93B90↓j
                test    edi, edi
                js      short loc_1407CFA3A
                test    rsi, rsi
                jz      short loc_1407CFA3A
                mov     r8d, [rsp+38h+arg_10]
                lea     rdx, [rbx+10h]
                add     r8d, 0FFFFFFF0h
                mov     rcx, rsi
                call    memmove

loc_1407CFA3A:                          ; CODE XREF: ExGetSystemFirmwareTable+9E↑j
                                        ; ExGetSystemFirmwareTable+A3↑j
                mov     edx, 54465241h
                mov     rcx, rbx
                call    ExFreePoolWithTag

loc_1407CFA47:                          ; CODE XREF: ExGetSystemFirmwareTable+93BA0↓j
                mov     eax, edi

loc_1407CFA49:                          ; CODE XREF: ExGetSystemFirmwareTable+93B85↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExGetSystemFirmwareTable endp
