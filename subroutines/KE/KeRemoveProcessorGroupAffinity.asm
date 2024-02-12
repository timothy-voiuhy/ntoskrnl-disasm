KeRemoveProcessorGroupAffinity proc near
                                        ; DATA XREF: .pdata:00000001400D7748↑o
                mov     eax, edx
                lea     rdx, dword_140D010D0
                mov     edx, [rdx+rax*4]
                mov     rax, [rcx]
                and     edx, 3Fh
                btr     rax, rdx
                mov     [rcx], rax
                retn
KeRemoveProcessorGroupAffinity endp
