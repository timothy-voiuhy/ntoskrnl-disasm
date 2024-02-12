KeInitializeSemaphore proc near         ; CODE XREF: sub_14061E0A0+CA↓p
                                        ; sub_14068C748+484↓p ...
                lea     rax, [rcx+8]
                mov     byte ptr [rcx], 5
                mov     [rax+8], rax
                mov     [rax], rax
                mov     byte ptr [rcx+2], 8
                mov     [rcx+4], edx
                mov     [rcx+18h], r8d
                retn
KeInitializeSemaphore endp
