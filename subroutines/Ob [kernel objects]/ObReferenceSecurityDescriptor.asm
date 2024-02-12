ObReferenceSecurityDescriptor proc near ; DATA XREF: .pdata:0000000140106614↑o
                mov     eax, edx
                lock xadd [rcx-18h], rax
                test    rax, rax
                jg      short locret_140714DB4
                mov     ecx, 0Eh
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

locret_140714DB4:                       ; CODE XREF: ObReferenceSecurityDescriptor+B↑j
                retn
ObReferenceSecurityDescriptor endp
