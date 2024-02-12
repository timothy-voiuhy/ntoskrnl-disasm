PsGetThreadFreezeCount proc near        ; DATA XREF: .pdata:00000001400D9134↑o
                mov     rdx, [rcx+220h]
                mov     eax, [rdx+278h]
                shr     eax, 3
                and     eax, 1
                add     eax, [rdx+378h]
                retn
PsGetThreadFreezeCount endp
