ExReleaseRundownProtectionEx proc near  ; DATA XREF: .pdata:00000001400F9FCC↑o
                sub     rsp, 28h
                mov     r10, rcx
                prefetchw byte ptr [rcx]
                mov     r9, [rcx]
                test    r9b, 1
                jnz     short loc_1405B5D8E
                lea     r11d, [rdx+rdx]

loc_1405B5D77:                          ; CODE XREF: ExReleaseRundownProtectionEx+2C↓j
                mov     rcx, r9
                mov     rax, r9
                sub     rcx, r11
                lock cmpxchg [r10], rcx
                mov     r9, rax
                jz      short loc_1405B5DBA
                test    al, 1
                jz      short loc_1405B5D77

loc_1405B5D8E:                          ; CODE XREF: ExReleaseRundownProtectionEx+11↑j
                and     r9, 0FFFFFFFFFFFFFFFEh
                mov     eax, edx
                neg     rax
                mov     ecx, edx
                lock xadd [r9], rax
                cmp     rax, rcx
                jnz     short loc_1405B5DBA
                lock btr dword ptr [r9+20h], 0
                jb      short loc_1405B5DBA
                lea     rcx, [r9+8]
                xor     r8d, r8d
                xor     edx, edx
                call    KeSetEvent

loc_1405B5DBA:                          ; CODE XREF: ExReleaseRundownProtectionEx+28↑j
                                        ; ExReleaseRundownProtectionEx+41↑j ...
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExReleaseRundownProtectionEx endp
