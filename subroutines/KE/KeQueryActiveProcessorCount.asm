KeQueryActiveProcessorCount proc near   ; DATA XREF: .pdata:00000001400F3630↑o
                sub     rsp, 28h
                test    rcx, rcx
                jz      short loc_14051568E
                mov     rdx, cs:qword_140CFC848
                mov     [rcx], rdx
                mov     rax, rdx
                shr     rax, 1
                mov     rcx, 5555555555555555h
                and     rax, rcx
                mov     rcx, 3333333333333333h
                sub     rdx, rax
                mov     rax, rdx
                and     rdx, rcx
                shr     rax, 2
                and     rax, rcx
                add     rax, rdx
                mov     rcx, rax
                shr     rcx, 4
                add     rcx, rax
                mov     rax, 0F0F0F0F0F0F0F0Fh
                and     rcx, rax
                mov     rax, 101010101010101h
                imul    rcx, rax
                shr     rcx, 38h
                jmp     short loc_140515695
; ---------------------------------------------------------------------------

loc_14051568E:                          ; CODE XREF: KeQueryActiveProcessorCount+7↑j
                call    KeQueryActiveProcessorCountEx
                mov     ecx, eax

loc_140515695:                          ; CODE XREF: KeQueryActiveProcessorCount+6C↑j
                mov     eax, ecx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeQueryActiveProcessorCount endp
