FsRtlInitializeEofLock proc near        ; DATA XREF: .pdata:00000001400D6FBC↑o
                xor     eax, eax
                mov     [rcx], rax
                mov     [rcx+10h], rax
                mov     [rcx+20h], rax
                lea     rax, [rcx+8]
                mov     [rax+8], rax
                mov     [rax], rax
                mov     [rcx+18h], rdx
                retn
FsRtlInitializeEofLock endp
