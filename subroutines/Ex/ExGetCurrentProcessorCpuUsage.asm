ExGetCurrentProcessorCpuUsage proc near ; DATA XREF: .pdata:00000001400F9CD8↑o
                mov     rdx, gs:20h
                mov     eax, [rdx+7E84h]
                mov     r8d, [rdx+7E88h]
                add     r8, rax
                mov     rax, [rdx+18h]
                mov     edx, [rax+28Ch]
                imul    rax, rdx, 64h ; 'd'
                xor     edx, edx
                div     r8
                mov     edx, 64h ; 'd'
                sub     edx, eax
                mov     [rcx], edx
                retn
ExGetCurrentProcessorCpuUsage endp
