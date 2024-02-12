FsRtlInitializeFileLock proc near       ; DATA XREF: .pdata:00000001400C9168↑o
                xor     eax, eax
                mov     [rcx], rdx
                mov     [rcx+18h], rax
                mov     [rcx+10h], al
                mov     [rcx+8], r8
                mov     [rcx+58h], eax
                retn
FsRtlInitializeFileLock endp
