KeInitializeGuardedMutex proc near      ; CODE XREF: sub_14069F59C+BA↓p
                                        ; sub_1406B2570+AC↓p ...
                mov     dword ptr [rcx], 1
                xor     eax, eax
                mov     [rcx+8], rax
                mov     [rcx+10h], eax
                mov     [rcx+1Ch], eax
                lea     rax, [rcx+20h]
                mov     [rax+8], rax
                mov     [rax], rax
                mov     word ptr [rcx+18h], 1
                mov     byte ptr [rcx+1Ah], 6
                retn
KeInitializeGuardedMutex endp
