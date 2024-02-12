RtlNumberOfSetBitsUlongPtr proc near    ; DATA XREF: .pdata:00000001400D7D48↑o
                mov     rax, rcx
                mov     rdx, 5555555555555555h
                shr     rax, 1
                and     rax, rdx
                sub     rcx, rax
                mov     rax, 3333333333333333h
                mov     rdx, rcx
                and     rcx, rax
                shr     rdx, 2
                and     rdx, rax
                add     rdx, rcx
                mov     rcx, 0F0F0F0F0F0F0F0Fh
                mov     rax, rdx
                shr     rax, 4
                add     rax, rdx
                and     rax, rcx
                mov     rcx, 101010101010101h
                imul    rax, rcx
                shr     rax, 38h
                retn
RtlNumberOfSetBitsUlongPtr endp
