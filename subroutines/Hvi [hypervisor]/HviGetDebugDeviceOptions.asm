HviGetDebugDeviceOptions proc near      ; DATA XREF: .pdata:00000001400FA668↑o
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                call    HviIsHypervisorVendorMicrosoft
                test    al, al
                jz      short loc_1405BF1D5
                mov     ecx, 400000FFh
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                mov     [rbx], rax
                jmp     short loc_1405BF1D9
; ---------------------------------------------------------------------------

loc_1405BF1D5:                          ; CODE XREF: HviGetDebugDeviceOptions+10↑j
                and     qword ptr [rbx], 0

loc_1405BF1D9:                          ; CODE XREF: HviGetDebugDeviceOptions+23↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HviGetDebugDeviceOptions endp
