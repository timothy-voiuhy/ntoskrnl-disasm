RtlInitializeUnicodePrefix proc near    ; DATA XREF: .pdata:000000014010EFB4↑o
                xor     eax, eax
                mov     dword ptr [rcx], 800h
                mov     [rcx+10h], rax
                mov     [rcx+8], rcx
                retn
RtlInitializeUnicodePrefix endp
