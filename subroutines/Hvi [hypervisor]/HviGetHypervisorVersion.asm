HviGetHypervisorVersion proc near       ; CODE XREF: sub_1403F2FA0+55↑p
                                        ; sub_1404F2180+50↑p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                call    HviIsHypervisorMicrosoftCompatible
                xor     ecx, ecx
                test    al, al
                jz      short loc_1405BF2EC
                mov     eax, 40000002h
                cpuid
                mov     [rdi], eax
                mov     [rdi+4], ebx
                mov     [rdi+8], ecx
                mov     [rdi+0Ch], edx
                jmp     short loc_1405BF2F3
; ---------------------------------------------------------------------------

loc_1405BF2EC:                          ; CODE XREF: HviGetHypervisorVersion+16↑j
                mov     [rdi], rcx
                mov     [rdi+8], rcx

loc_1405BF2F3:                          ; CODE XREF: HviGetHypervisorVersion+2A↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HviGetHypervisorVersion endp
