ExBlockPushLock proc near               ; CODE XREF: ExBlockOnAddressPushLock+37↑p
                                        ; DATA XREF: .pdata:00000001400D5918↑o
                mov     dword ptr [rdx+34h], 2
                prefetchw byte ptr [rcx]
                mov     rax, [rcx]

loc_140323B1D:                          ; CODE XREF: ExBlockPushLock+16↓j
                mov     [rdx+18h], rax
                lock cmpxchg [rcx], rdx
                jnz     short loc_140323B1D
                retn
ExBlockPushLock endp
