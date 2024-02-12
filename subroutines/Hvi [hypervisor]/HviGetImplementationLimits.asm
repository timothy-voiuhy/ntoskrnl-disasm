HviGetImplementationLimits proc near    ; CODE XREF: sub_1404F3604+A6↑p
                                        ; sub_1404F3A6C+54↑p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                call    HviIsHypervisorMicrosoftCompatible
                xor     ecx, ecx
                test    al, al
                jz      short loc_1405BF33C
                mov     eax, 40000005h
                cpuid
                mov     [rdi], eax
                mov     [rdi+4], ebx
                mov     [rdi+8], ecx
                mov     [rdi+0Ch], edx
                jmp     short loc_1405BF343
; ---------------------------------------------------------------------------

loc_1405BF33C:                          ; CODE XREF: HviGetImplementationLimits+16↑j
                mov     [rdi], rcx
                mov     [rdi+8], rcx

loc_1405BF343:                          ; CODE XREF: HviGetImplementationLimits+2A↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HviGetImplementationLimits endp
