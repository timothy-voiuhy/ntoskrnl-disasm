RtlGetNonVolatileToken proc near        ; DATA XREF: .pdata:00000001400F7F20↑o
                cmp     cs:byte_140C12BAC, 0
                mov     eax, 1
                lea     ecx, [rax+2]
                cmovnz  eax, ecx
                mov     [r8], rax
                xor     eax, eax
                retn
RtlGetNonVolatileToken endp
