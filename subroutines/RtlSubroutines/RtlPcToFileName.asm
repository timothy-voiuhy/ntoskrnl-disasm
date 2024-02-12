RtlPcToFileName proc near               ; CODE XREF: KitLogFeatureUsage:loc_1405B9990↓p
                                        ; PoRegisterPowerSettingCallback+269↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = byte ptr  18h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                xor     ebx, ebx
                lea     rcx, [rax+18h]
                mov     [rax+18h], bl
                mov     rsi, rdx
                call    sub_140261CF8
                mov     r8, qword ptr cs:PsLoadedModuleList
                test    r8, r8
                jz      short loc_1403CC2FE
                lea     r9, PsLoadedModuleList

loc_1403CC2B7:                          ; CODE XREF: RtlPcToFileName+49↓j
                                        ; RtlPcToFileName+54↓j
                cmp     r8, r9
                jz      short loc_1403CC2FE
                mov     rdx, r8
                mov     r8, [r8]
                mov     rcx, [rdx+30h]
                cmp     rdi, rcx
                jb      short loc_1403CC2B7
                mov     eax, [rdx+40h]
                add     rax, rcx
                cmp     rdi, rax
                jnb     short loc_1403CC2B7
                add     rdx, 58h ; 'X'
                mov     rcx, rsi
                call    RtlCopyUnicodeString

loc_1403CC2E2:                          ; CODE XREF: RtlPcToFileName+83↓j
                mov     cl, [rsp+28h+arg_10]
                call    sub_140261BC4
                mov     rsi, [rsp+28h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403CC2FE:                          ; CODE XREF: RtlPcToFileName+2E↑j
                                        ; RtlPcToFileName+3A↑j
                mov     ebx, 0C0000225h
                jmp     short loc_1403CC2E2
RtlPcToFileName endp
