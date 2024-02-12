KeInitializeTimerEx proc near           ; CODE XREF: sub_1405D10AC+36↓p
                                        ; sub_140688BE0+C6↓p ...
                xor     r8d, r8d
                lea     rax, [rcx+8]
                add     dl, 8
                mov     [rcx], r8
                mov     [rcx], dl
                mov     [rax+8], rax
                mov     [rax], rax
                mov     [rcx+18h], r8
                mov     [rcx+3Ch], r8d
                mov     [rcx+38h], r8w
                retn
KeInitializeTimerEx endp
