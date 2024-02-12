KeCountSetBitsGroupAffinity proc near   ; DATA XREF: .pdata:00000001400F38AC↑o
                mov     rdx, [rcx]
                mov     rcx, 5555555555555555h
                mov     rax, rdx
                shr     rax, 1
                and     rax, rcx
                sub     rdx, rax
                mov     rax, 3333333333333333h
                mov     rcx, rdx
                and     rdx, rax
                shr     rcx, 2
                and     rcx, rax
                add     rcx, rdx
                mov     rax, rcx
                shr     rax, 4
                add     rax, rcx
                mov     rcx, 0F0F0F0F0F0F0F0Fh
                and     rax, rcx
                mov     rcx, 101010101010101h
                imul    rax, rcx
                shr     rax, 38h
                retn
KeCountSetBitsGroupAffinity endp
