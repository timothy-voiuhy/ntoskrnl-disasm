KeInitializeEvent proc near             ; CODE XREF: NtCopyFileChunk+285↓p
                                        ; sub_1405DA4C8+2E↓p ...
                movzx   eax, r8b
                mov     [rcx+4], eax
                lea     rax, [rcx+8]
                mov     [rax+8], rax
                mov     [rax], rax
                mov     [rcx], dl
                mov     word ptr [rcx+1], 600h
                retn
KeInitializeEvent endp
