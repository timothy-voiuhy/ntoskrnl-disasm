KeInitializeDpc proc near               ; CODE XREF: sub_1405D10AC+9↓p
                                        ; sub_1405F3400+3F6↓p ...
                xor     eax, eax
                mov     dword ptr [rcx], 113h
                mov     [rcx+38h], rax
                mov     [rcx+10h], rax
                mov     [rcx+18h], rdx
                mov     [rcx+20h], r8
                retn
KeInitializeDpc endp
