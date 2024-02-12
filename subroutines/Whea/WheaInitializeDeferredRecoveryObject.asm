WheaInitializeDeferredRecoveryObject proc near
                                        ; DATA XREF: .pdata:00000001400FA4D0↑o
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  xmmword ptr [rcx], xmm0
                movups  xmmword ptr [rcx+10h], xmm0
                mov     [rcx+20h], rax
                mov     [rcx+10h], rdx
                mov     [rcx+18h], r8b
                retn
WheaInitializeDeferredRecoveryObject endp
