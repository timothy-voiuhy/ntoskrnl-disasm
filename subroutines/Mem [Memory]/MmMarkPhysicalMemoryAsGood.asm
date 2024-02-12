MmMarkPhysicalMemoryAsGood proc near    ; DATA XREF: .pdata:00000001400F4794↑o
                push    rbx
                sub     rsp, 20h
                mov     rbx, rdx
                mov     edx, 0FFFh
                test    [rcx], edx
                jnz     short loc_140530673
                test    [rbx], edx
                jz      short loc_14053064D
                mov     eax, 0C00000F0h
                jmp     short loc_140530678
; ---------------------------------------------------------------------------

loc_14053064D:                          ; CODE XREF: MmMarkPhysicalMemoryAsGood+14↑j
                mov     rcx, [rcx]
                mov     rdx, [rbx]
                shr     rcx, 0Ch
                shr     rdx, 0Ch
                add     rdx, rcx
                cmp     rcx, rdx
                jnb     short loc_140530673
                call    sub_14052F2C8
                shl     rax, 0Ch
                mov     [rbx], rax
                xor     eax, eax
                jmp     short loc_140530678
; ---------------------------------------------------------------------------

loc_140530673:                          ; CODE XREF: MmMarkPhysicalMemoryAsGood+10↑j
                                        ; MmMarkPhysicalMemoryAsGood+31↑j
                mov     eax, 0C00000EFh

loc_140530678:                          ; CODE XREF: MmMarkPhysicalMemoryAsGood+1B↑j
                                        ; MmMarkPhysicalMemoryAsGood+41↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmMarkPhysicalMemoryAsGood endp
