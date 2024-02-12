RtlInitializeRangeList proc near        ; DATA XREF: .pdata:000000014010D040↑o
                xor     eax, eax
                mov     [rcx+8], rcx
                mov     [rcx+10h], rax
                mov     [rcx+18h], eax
                mov     [rcx], rcx
                retn
RtlInitializeRangeList endp
