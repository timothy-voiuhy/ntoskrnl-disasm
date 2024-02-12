KeAddProcessorGroupAffinity proc near   ; DATA XREF: .pdata:00000001400F33B4↑o
                mov     eax, edx
                lea     rdx, dword_140D010D0
                mov     edx, [rdx+rax*4]
                mov     rax, [rcx]
                and     edx, 3Fh
                bts     rax, rdx
                mov     [rcx], rax
                retn
KeAddProcessorGroupAffinity endp
