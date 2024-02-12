KeQueryPrcbAddress proc near            ; DATA XREF: .pdata:00000001400F3504↑o
                mov     eax, ecx
                lea     rcx, qword_140CFDCC0
                mov     rax, [rcx+rax*8]
                retn
KeQueryPrcbAddress endp
