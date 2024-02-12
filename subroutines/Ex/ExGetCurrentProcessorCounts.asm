ExGetCurrentProcessorCounts proc near   ; DATA XREF: .pdata:00000001400D7070↑o
                mov     r10, gs:20h
                mov     rax, [r10+18h]
                mov     r9d, [rax+28Ch]
                mov     [rcx], r9d
                mov     eax, [r10+7E88h]
                add     eax, [r10+7E84h]
                mov     [rdx], eax
                mov     eax, [r10+24h]
                mov     [r8], eax
                retn
ExGetCurrentProcessorCounts endp
