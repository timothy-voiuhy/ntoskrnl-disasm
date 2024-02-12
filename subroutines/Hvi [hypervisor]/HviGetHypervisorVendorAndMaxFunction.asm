HviGetHypervisorVendorAndMaxFunction proc near
                                        ; CODE XREF: sub_1404F2180+3E↑p
                                        ; sub_1404F7150+A4↑p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                call    HviIsAnyHypervisorPresent
                xor     ecx, ecx
                test    al, al
                jz      short loc_1405BF29C
                mov     eax, 40000000h
                cpuid
                mov     [rdi], eax
                mov     [rdi+4], ebx
                mov     [rdi+8], ecx
                mov     [rdi+0Ch], edx
                jmp     short loc_1405BF2A3
; ---------------------------------------------------------------------------

loc_1405BF29C:                          ; CODE XREF: HviGetHypervisorVendorAndMaxFunction+16↑j
                mov     [rdi], rcx
                mov     [rdi+8], rcx

loc_1405BF2A3:                          ; CODE XREF: HviGetHypervisorVendorAndMaxFunction+2A↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HviGetHypervisorVendorAndMaxFunction endp
